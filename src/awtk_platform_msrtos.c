/*
 * Copyright (c) 2019 MS-RTOS Team.
 * All rights reserved.
 *
 * Detailed license information can be found in the LICENSE file.
 *
 * File: awtk_platform_msrtos.c AWTK porting.
 *
 * Author: Jiao.jinxing <jiaojixing@acoinfo.com>
 *
 */

#include <ms_rtos.h>

#include "base/g2d.h"
#include "base/idle.h"
#include "base/timer.h"
#include "base/lcd.h"
#include "tkc/platform.h"
#include "tkc/fs.h"
#include "tkc/mem.h"
#include "tkc/mutex.h"
#include "tkc/cond_var.h"
#include "lcd/lcd_mem_bgr565.h"
#include "lcd/lcd_mem_bgra8888.h"
#include "main_loop/main_loop_simple.h"

static int ms_awtk_touch_fd;

tk_cond_var_t* tk_cond_var_create(void)
{
    ms_handle_t condid;

    return (ms_semb_create("awtk_cond", MS_FALSE, MS_WAIT_TYPE_PRIO, &condid) == MS_ERR_NONE) ?
            ((tk_cond_var_t *)condid) : MS_NULL;
}

ret_t tk_cond_var_wait(tk_cond_var_t* cond_var, uint32_t timeout_ms)
{
    return (ms_semb_wait((ms_handle_t)cond_var, ms_time_ms_to_tick(timeout_ms)) == MS_ERR_NONE) ?
            RET_OK : RET_FAIL;
}

ret_t tk_cond_var_awake(tk_cond_var_t* cond_var)
{
    return (ms_semb_post((ms_handle_t)cond_var) == MS_ERR_NONE) ?
            RET_OK : RET_FAIL;
}

ret_t tk_cond_var_destroy(tk_cond_var_t* cond_var)
{
    return (ms_semb_destroy((ms_handle_t)cond_var) == MS_ERR_NONE) ?
            RET_OK : RET_FAIL;
}

tk_mutex_t* tk_mutex_create()
{
    ms_handle_t mutexid;

    return (ms_mutex_create("awtk_mutex", MS_WAIT_TYPE_PRIO, &mutexid) == MS_ERR_NONE) ?
            ((tk_mutex_t *)mutexid) : MS_NULL;
}

ret_t tk_mutex_lock(tk_mutex_t* mutex)
{
    return (ms_mutex_lock((ms_handle_t)mutex, MS_TIMEOUT_FOREVER) == MS_ERR_NONE) ?
            RET_OK : RET_FAIL;
}

ret_t tk_mutex_unlock(tk_mutex_t* mutex)
{
    return (ms_mutex_unlock((ms_handle_t)mutex) == MS_ERR_NONE) ?
            RET_OK : RET_FAIL;
}

ret_t tk_mutex_destroy(tk_mutex_t* mutex)
{
    return (ms_mutex_destroy((ms_handle_t)mutex) == MS_ERR_NONE) ?
            RET_OK : RET_FAIL;
}

fs_t* os_fs(void)
{
    /*
     * TODO
     */
    return MS_NULL;
}

uint64_t get_time_ms64()
{
    return ms_time_get_ms();
}

void sleep_ms(uint32_t ms)
{
    ms_thread_sleep_ms(ms);
}

ret_t platform_prepare(void)
{
    ms_awtk_touch_fd = ms_io_open("/dev/touch0", O_RDONLY, 0666);
    if (ms_awtk_touch_fd < 0) {
        ms_printf("Failed to open /dev/touch0 device!\n");
        abort();
    }

    ms_io_fcntl(ms_awtk_touch_fd, F_SETFL, FNONBLOCK);

    return RET_OK;
}

uint8_t platform_disaptch_input(main_loop_t* loop)
{
    static int16_t last_x = 0;
    static int16_t last_y = 0;
    ms_touch_event_t event;

    if (ms_io_read(ms_awtk_touch_fd, &event, sizeof(event)) == sizeof(event)) {
        if (event.touch_detected > 0) {
            last_x = event.touch_x[0];
            last_y = event.touch_y[0];
            main_loop_post_pointer_event(loop, TRUE, last_x, last_y);
        } else {
            main_loop_post_pointer_event(loop, FALSE, last_x, last_y);
        }
    }

    return 0;
}

lcd_t* platform_create_lcd(wh_t w, wh_t h)
{
    ms_fb_var_screeninfo_t var_info;
    ms_fb_fix_screeninfo_t fix_info;
    lcd_t *lcd;
    int fb_fd;

    fb_fd = ms_io_open("/dev/fb0", O_RDWR, 0666);
    if (fb_fd < 0) {
        ms_printf("Failed to open /dev/fb0 device!\n");
        abort();
    }

    if (ms_io_ioctl(fb_fd, MS_FB_CMD_GET_VSCREENINFO, &var_info) < 0) {
        ms_printf("Failed to get /dev/fb0 variable screen info!\n");
        abort();
    }

    if (ms_io_ioctl(fb_fd, MS_FB_CMD_GET_FSCREENINFO, &fix_info) < 0) {
        ms_printf("Failed to get /dev/fb0 fix screen info!\n");
        abort();
    }

    if (var_info.bits_per_pixel == 16) {
        if (fix_info.capability & MS_FB_CAP_DOUBLE_FB) {
            lcd = lcd_mem_bgr565_create_double_fb(w, h, (uint8_t *)fix_info.smem_start,
                    (uint8_t *)fix_info.smem1_start);
        } else {
            lcd = lcd_mem_bgr565_create_single_fb(w, h, (uint8_t *)fix_info.smem_start);
        }
    } else {
        if (fix_info.capability & MS_FB_CAP_DOUBLE_FB) {
            lcd = lcd_mem_bgra8888_create_double_fb(w, h, (uint8_t *)fix_info.smem_start,
                    (uint8_t *)fix_info.smem1_start);
        } else {
            lcd = lcd_mem_bgra8888_create_single_fb(w, h, (uint8_t *)fix_info.smem_start);
        }
    }

    return lcd;
}

#include "main_loop/main_loop_raw.inc"
