#*********************************************************************************************************
#
#                                 北京翼辉信息技术有限公司
#
#                                   微型安全实时操作系统
#
#                                       MS-RTOS(TM)
#
#                               Copyright All Rights Reserved
#
#--------------文件信息--------------------------------------------------------------------------------
#
# 文   件   名: libawtk.mk
#
# 创   建   人: IoT Studio
#
# 文件创建日期: 2016 年 10 月 08 日
#
# 描        述: 本文件由 IoT Studio 生成，用于配置 Makefile 功能，请勿手动修改
#*********************************************************************************************************

#*********************************************************************************************************
# Clear setting
#*********************************************************************************************************
include $(CLEAR_VARS_MK)

#*********************************************************************************************************
# Target
#*********************************************************************************************************
LOCAL_TARGET_NAME := libawtk.a

#*********************************************************************************************************
# Source list
#*********************************************************************************************************
LOCAL_SRCS := \
src/awtk/3rd/agge/agge/math.cpp \
src/awtk/3rd/agge/agge/stroke.cpp \
src/awtk/3rd/agge/agge/stroke_features.cpp \
src/awtk/3rd/agge/agge/vector_rasterizer.cpp \
src/awtk/3rd/libunibreak/emojidef.c \
src/awtk/3rd/libunibreak/graphemebreak.c \
src/awtk/3rd/libunibreak/linebreak.c \
src/awtk/3rd/libunibreak/linebreakdata.c \
src/awtk/3rd/libunibreak/linebreakdef.c \
src/awtk/3rd/libunibreak/unibreakbase.c \
src/awtk/3rd/libunibreak/unibreakdef.c \
src/awtk/3rd/libunibreak/wordbreak.c \
src/awtk/3rd/lz4/lz4.c \
src/awtk/3rd/lz4/lz4frame.c \
src/awtk/3rd/lz4/lz4hc.c \
src/awtk/3rd/lz4/xxhash.c \
src/awtk/3rd/miniz/miniz.c \
src/awtk/3rd/miniz/miniz_tdef.c \
src/awtk/3rd/miniz/miniz_tinfl.c \
src/awtk/3rd/miniz/miniz_zip.c \
src/awtk/3rd/nanovg/agge/nanovg_agge.cpp \
src/awtk/3rd/nanovg/agge/nanovg_vertex.cpp \
src/awtk/3rd/nanovg/base/nanovg.c \
src/awtk/src/awtk_global.c \
src/awtk/src/base/assets_manager.c \
src/awtk/src/base/asset_loader.c \
src/awtk/src/base/asset_loader_default.c \
src/awtk/src/base/asset_loader_zip.c \
src/awtk/src/base/bitmap.c \
src/awtk/src/base/canvas.c \
src/awtk/src/base/children_layouter.c \
src/awtk/src/base/children_layouter_factory.c \
src/awtk/src/base/clip_board.c \
src/awtk/src/base/date_time_format.c \
src/awtk/src/base/dialog.c \
src/awtk/src/base/dialog_highlighter.c \
src/awtk/src/base/dialog_highlighter_factory.c \
src/awtk/src/base/enums.c \
src/awtk/src/base/events.c \
src/awtk/src/base/event_queue.c \
src/awtk/src/base/font.c \
src/awtk/src/base/font_loader.c \
src/awtk/src/base/font_manager.c \
src/awtk/src/base/glyph_cache.c \
src/awtk/src/base/graphic_buffer.c \
src/awtk/src/base/hscrollable.c \
src/awtk/src/base/idle.c \
src/awtk/src/base/image_base.c \
src/awtk/src/base/image_loader.c \
src/awtk/src/base/image_manager.c \
src/awtk/src/base/input_device_status.c \
src/awtk/src/base/input_engine.c \
src/awtk/src/base/input_method.c \
src/awtk/src/base/layout.c \
src/awtk/src/base/lcd.c \
src/awtk/src/base/lcd_profile.c \
src/awtk/src/base/line_break.c \
src/awtk/src/base/locale_info.c \
src/awtk/src/base/main_loop.c \
src/awtk/src/base/native_window.c \
src/awtk/src/base/self_layouter.c \
src/awtk/src/base/self_layouter_factory.c \
src/awtk/src/base/shortcut.c \
src/awtk/src/base/style.c \
src/awtk/src/base/style_const.c \
src/awtk/src/base/style_factory.c \
src/awtk/src/base/style_mutable.c \
src/awtk/src/base/suggest_words.c \
src/awtk/src/base/system_info.c \
src/awtk/src/base/text_edit.c \
src/awtk/src/base/theme.c \
src/awtk/src/base/timer.c \
src/awtk/src/base/ui_builder.c \
src/awtk/src/base/ui_feedback.c \
src/awtk/src/base/ui_loader.c \
src/awtk/src/base/velocity.c \
src/awtk/src/base/vgcanvas.c \
src/awtk/src/base/widget.c \
src/awtk/src/base/widget_animator.c \
src/awtk/src/base/widget_animator_factory_null.c \
src/awtk/src/base/widget_animator_manager.c \
src/awtk/src/base/widget_factory.c \
src/awtk/src/base/widget_vtable.c \
src/awtk/src/base/window.c \
src/awtk/src/base/window_animator.c \
src/awtk/src/base/window_animator_factory.c \
src/awtk/src/base/window_base.c \
src/awtk/src/base/window_manager.c \
src/awtk/src/blend/blend_image_bgr565_bgr565.c \
src/awtk/src/blend/blend_image_bgr565_bgra8888.c \
src/awtk/src/blend/blend_image_bgr565_rgba8888.c \
src/awtk/src/blend/blend_image_bgr888_bgr565.c \
src/awtk/src/blend/blend_image_bgr888_bgra8888.c \
src/awtk/src/blend/blend_image_bgr888_rgba8888.c \
src/awtk/src/blend/blend_image_bgra8888_bgr565.c \
src/awtk/src/blend/blend_image_bgra8888_bgra8888.c \
src/awtk/src/blend/blend_image_bgra8888_rgba8888.c \
src/awtk/src/blend/blend_image_rgb565_bgr565.c \
src/awtk/src/blend/blend_image_rgb565_bgra8888.c \
src/awtk/src/blend/blend_image_rgb565_rgba8888.c \
src/awtk/src/blend/blend_image_rgb888_bgr565.c \
src/awtk/src/blend/blend_image_rgb888_bgra8888.c \
src/awtk/src/blend/blend_image_rgb888_rgba8888.c \
src/awtk/src/blend/blend_image_rgba8888_bgr565.c \
src/awtk/src/blend/blend_image_rgba8888_bgra8888.c \
src/awtk/src/blend/blend_image_rgba8888_rgba8888.c \
src/awtk/src/blend/fill_image_abgr8888.c \
src/awtk/src/blend/fill_image_argb8888.c \
src/awtk/src/blend/fill_image_bgr565.c \
src/awtk/src/blend/fill_image_bgr888.c \
src/awtk/src/blend/fill_image_bgra8888.c \
src/awtk/src/blend/fill_image_rgb565.c \
src/awtk/src/blend/fill_image_rgb888.c \
src/awtk/src/blend/fill_image_rgba8888.c \
src/awtk/src/blend/image_g2d.c \
src/awtk/src/blend/rotate_image_bgr565.c \
src/awtk/src/blend/rotate_image_bgr888.c \
src/awtk/src/blend/rotate_image_bgra8888.c \
src/awtk/src/blend/rotate_image_rgb565.c \
src/awtk/src/blend/rotate_image_rgb888.c \
src/awtk/src/blend/rotate_image_rgba8888.c \
src/awtk/src/blend/soft_g2d.c \
src/awtk/src/blend/stm32_g2d.c \
src/awtk/src/clip_board/clip_board_default.c \
src/awtk/src/compressors/compressor_miniz.c \
src/awtk/src/dialog_highlighters/dialog_highlighter_builtins.c \
src/awtk/src/dialog_highlighters/dialog_highlighter_default.c \
src/awtk/src/ext_widgets/canvas_widget/canvas_widget.c \
src/awtk/src/ext_widgets/color_picker/color_component.c \
src/awtk/src/ext_widgets/color_picker/color_picker.c \
src/awtk/src/ext_widgets/color_picker/rgb_and_hsv.c \
src/awtk/src/ext_widgets/combo_box_ex/combo_box_ex.c \
src/awtk/src/ext_widgets/ext_widgets.c \
src/awtk/src/ext_widgets/features/draggable.c \
src/awtk/src/ext_widgets/file_browser/file_browser.c \
src/awtk/src/ext_widgets/file_browser/file_browser_view.c \
src/awtk/src/ext_widgets/file_browser/file_chooser.c \
src/awtk/src/ext_widgets/gif_image/gif_image.c \
src/awtk/src/ext_widgets/guage/guage.c \
src/awtk/src/ext_widgets/guage/guage_pointer.c \
src/awtk/src/ext_widgets/image_animation/image_animation.c \
src/awtk/src/ext_widgets/image_value/image_value.c \
src/awtk/src/ext_widgets/keyboard/candidates.c \
src/awtk/src/ext_widgets/keyboard/keyboard.c \
src/awtk/src/ext_widgets/mledit/line_number.c \
src/awtk/src/ext_widgets/mledit/mledit.c \
src/awtk/src/ext_widgets/mutable_image/mutable_image.c \
src/awtk/src/ext_widgets/progress_circle/progress_circle.c \
src/awtk/src/ext_widgets/rich_text/rich_text.c \
src/awtk/src/ext_widgets/rich_text/rich_text_node.c \
src/awtk/src/ext_widgets/rich_text/rich_text_parser.c \
src/awtk/src/ext_widgets/rich_text/rich_text_render_node.c \
src/awtk/src/ext_widgets/scroll_label/hscroll_label.c \
src/awtk/src/ext_widgets/scroll_view/children_layouter_list_view.c \
src/awtk/src/ext_widgets/scroll_view/list_item.c \
src/awtk/src/ext_widgets/scroll_view/list_view.c \
src/awtk/src/ext_widgets/scroll_view/list_view_h.c \
src/awtk/src/ext_widgets/scroll_view/scroll_bar.c \
src/awtk/src/ext_widgets/scroll_view/scroll_view.c \
src/awtk/src/ext_widgets/slide_menu/slide_menu.c \
src/awtk/src/ext_widgets/slide_view/slide_indicator.c \
src/awtk/src/ext_widgets/slide_view/slide_view.c \
src/awtk/src/ext_widgets/svg_image/svg_image.c \
src/awtk/src/ext_widgets/switch/switch.c \
src/awtk/src/ext_widgets/text_selector/text_selector.c \
src/awtk/src/ext_widgets/time_clock/time_clock.c \
src/awtk/src/font_loader/font_loader_bitmap.c \
src/awtk/src/font_loader/font_loader_ft.c \
src/awtk/src/font_loader/font_loader_stb.c \
src/awtk/src/graphic_buffer/graphic_buffer_default.c \
src/awtk/src/image_loader/image_loader_stb.c \
src/awtk/src/input_engines/input_engine_null.c \
src/awtk/src/input_methods/input_method_creator.c \
src/awtk/src/layouters/children_layouter_builtins.c \
src/awtk/src/layouters/children_layouter_default.c \
src/awtk/src/layouters/children_layouter_parser.c \
src/awtk/src/layouters/self_layouter_builtins.c \
src/awtk/src/layouters/self_layouter_default.c \
src/awtk/src/layouters/self_layouter_menu.c \
src/awtk/src/layouters/self_layouter_parser.c \
src/awtk/src/lcd/lcd_mem_bgr565.c \
src/awtk/src/lcd/lcd_mem_bgr888.c \
src/awtk/src/lcd/lcd_mem_bgra8888.c \
src/awtk/src/lcd/lcd_mem_rgb565.c \
src/awtk/src/lcd/lcd_mem_rgb888.c \
src/awtk/src/lcd/lcd_mem_rgba8888.c \
src/awtk/src/lcd/lcd_mem_special.c \
src/awtk/src/lcd/lcd_mono.c \
src/awtk/src/lcd/lcd_nanovg.c \
src/awtk/src/main_loop/main_loop_simple.c \
src/awtk/src/misc/new.cpp \
src/awtk/src/misc/test_cpp.cpp \
src/awtk/src/native_window/native_window_raw.c \
src/awtk/src/svg/bsvg.c \
src/awtk/src/svg/bsvg_builder.c \
src/awtk/src/svg/bsvg_draw.c \
src/awtk/src/svg/bsvg_to_svg.c \
src/awtk/src/svg/svg_path.c \
src/awtk/src/svg/svg_path_parser.c \
src/awtk/src/svg/svg_shape.c \
src/awtk/src/svg/svg_to_bsvg.c \
src/awtk/src/tkc/action_queue.c \
src/awtk/src/tkc/action_thread.c \
src/awtk/src/tkc/action_thread_pool.c \
src/awtk/src/tkc/asset_info.c \
src/awtk/src/tkc/async.c \
src/awtk/src/tkc/buffer.c \
src/awtk/src/tkc/color.c \
src/awtk/src/tkc/color_parser.c \
src/awtk/src/tkc/compressor.c \
src/awtk/src/tkc/cond_var.c \
src/awtk/src/tkc/crc.c \
src/awtk/src/tkc/darray.c \
src/awtk/src/tkc/data_reader.c \
src/awtk/src/tkc/data_reader_factory.c \
src/awtk/src/tkc/data_reader_file.c \
src/awtk/src/tkc/data_writer.c \
src/awtk/src/tkc/data_writer_factory.c \
src/awtk/src/tkc/data_writer_file.c \
src/awtk/src/tkc/date_time.c \
src/awtk/src/tkc/easing.c \
src/awtk/src/tkc/emitter.c \
src/awtk/src/tkc/event.c \
src/awtk/src/tkc/event_source.c \
src/awtk/src/tkc/event_source_fd.c \
src/awtk/src/tkc/event_source_idle.c \
src/awtk/src/tkc/event_source_manager.c \
src/awtk/src/tkc/event_source_manager_default.c \
src/awtk/src/tkc/event_source_timer.c \
src/awtk/src/tkc/expr_eval.c \
src/awtk/src/tkc/fs.c \
src/awtk/src/tkc/func_call_parser.c \
src/awtk/src/tkc/idle_info.c \
src/awtk/src/tkc/idle_manager.c \
src/awtk/src/tkc/int_str.c \
src/awtk/src/tkc/iostream.c \
src/awtk/src/tkc/istream.c \
src/awtk/src/tkc/log.c \
src/awtk/src/tkc/matrix.c \
src/awtk/src/tkc/mem.c \
src/awtk/src/tkc/named_value.c \
src/awtk/src/tkc/object.c \
src/awtk/src/tkc/object_array.c \
src/awtk/src/tkc/object_default.c \
src/awtk/src/tkc/ostream.c \
src/awtk/src/tkc/path.c \
src/awtk/src/tkc/qaction.c \
src/awtk/src/tkc/rect.c \
src/awtk/src/tkc/ring_buffer.c \
src/awtk/src/tkc/rom_fs.c \
src/awtk/src/tkc/slist.c \
src/awtk/src/tkc/socket_helper.c \
src/awtk/src/tkc/socket_pair.c \
src/awtk/src/tkc/str.c \
src/awtk/src/tkc/str_str.c \
src/awtk/src/tkc/timer_info.c \
src/awtk/src/tkc/timer_manager.c \
src/awtk/src/tkc/time_now.c \
src/awtk/src/tkc/tokenizer.c \
src/awtk/src/tkc/utf8.c \
src/awtk/src/tkc/utils.c \
src/awtk/src/tkc/value.c \
src/awtk/src/tkc/value_desc.c \
src/awtk/src/tkc/waitable_action_queue.c \
src/awtk/src/tkc/wstr.c \
src/awtk/src/ubjson/tools/ubjson_dump.c \
src/awtk/src/ubjson/ubjson_parser.c \
src/awtk/src/ubjson/ubjson_reader.c \
src/awtk/src/ubjson/ubjson_writer.c \
src/awtk/src/ui_loader/ui_binary_writer.c \
src/awtk/src/ui_loader/ui_builder_default.c \
src/awtk/src/ui_loader/ui_loader_default.c \
src/awtk/src/ui_loader/ui_loader_xml.c \
src/awtk/src/ui_loader/ui_serializer.c \
src/awtk/src/ui_loader/ui_xml_writer.c \
src/awtk/src/ui_loader/window_open.c \
src/awtk/src/vgcanvas/vgcanvas_nanovg_soft.c \
src/awtk/src/vgcanvas/vgcanvas_null.c \
src/awtk/src/widgets/app_bar.c \
src/awtk/src/widgets/button.c \
src/awtk/src/widgets/button_group.c \
src/awtk/src/widgets/calibration_win.c \
src/awtk/src/widgets/check_button.c \
src/awtk/src/widgets/clip_view.c \
src/awtk/src/widgets/color_tile.c \
src/awtk/src/widgets/column.c \
src/awtk/src/widgets/combo_box.c \
src/awtk/src/widgets/combo_box_item.c \
src/awtk/src/widgets/dialog_client.c \
src/awtk/src/widgets/dialog_helper.c \
src/awtk/src/widgets/dialog_title.c \
src/awtk/src/widgets/digit_clock.c \
src/awtk/src/widgets/dragger.c \
src/awtk/src/widgets/edit.c \
src/awtk/src/widgets/grid.c \
src/awtk/src/widgets/grid_item.c \
src/awtk/src/widgets/group_box.c \
src/awtk/src/widgets/image.c \
src/awtk/src/widgets/label.c \
src/awtk/src/widgets/overlay.c \
src/awtk/src/widgets/pages.c \
src/awtk/src/widgets/popup.c \
src/awtk/src/widgets/progress_bar.c \
src/awtk/src/widgets/row.c \
src/awtk/src/widgets/slider.c \
src/awtk/src/widgets/spin_box.c \
src/awtk/src/widgets/system_bar.c \
src/awtk/src/widgets/tab_button.c \
src/awtk/src/widgets/tab_button_group.c \
src/awtk/src/widgets/tab_control.c \
src/awtk/src/widgets/view.c \
src/awtk/src/widgets/widgets.c \
src/awtk/src/widget_animators/widget_animator_factory.c \
src/awtk/src/widget_animators/widget_animator_prop.c \
src/awtk/src/widget_animators/widget_animator_prop2.c \
src/awtk/src/widget_animators/widget_animator_scroll.c \
src/awtk/src/window_animators/window_animator_builtins.c \
src/awtk/src/window_animators/window_animator_center_scale.c \
src/awtk/src/window_animators/window_animator_common.c \
src/awtk/src/window_animators/window_animator_fade.c \
src/awtk/src/window_animators/window_animator_htranslate.c \
src/awtk/src/window_animators/window_animator_popdown.c \
src/awtk/src/window_animators/window_animator_popup.c \
src/awtk/src/window_animators/window_animator_slide.c \
src/awtk/src/window_animators/window_animator_slide_down.c \
src/awtk/src/window_animators/window_animator_slide_left.c \
src/awtk/src/window_animators/window_animator_slide_right.c \
src/awtk/src/window_animators/window_animator_slide_up.c \
src/awtk/src/window_animators/window_animator_vtranslate.c \
src/awtk/src/window_manager/window_manager_default.c \
src/awtk/src/window_manager/window_manager_simple.c \
src/awtk/src/xml/xml_builder.c \
src/awtk/src/xml/xml_parser.c \
src/awtk_platform_msrtos.c

#*********************************************************************************************************
# Header file search path (eg. LOCAL_INC_PATH := -I"Your hearder files search path")
#*********************************************************************************************************
LOCAL_INC_PATH := \
-I"./src" \
-I"./src/awtk" \
-I"./src/awtk/3rd" \
-I"./src/awtk/src" \
-I"./src/awtk/src/ext_widgets" \
-I"./src/awtk/3rd/agge" \
-I"./src/awtk/3rd/libunibreak" \
-I"./src/awtk/3rd/stb" \
-I"./src/awtk/3rd/nanovg" \
-I"./src/awtk/3rd/nanovg/base"

#*********************************************************************************************************
# Pre-defined macro (eg. -DYOUR_MARCO=1)
#*********************************************************************************************************
LOCAL_DSYMBOL := \
-DHAS_AWTK_CONFIG=1

#*********************************************************************************************************
# Depend library (eg. LOCAL_DEPEND_LIB := -la LOCAL_DEPEND_LIB_PATH := -L"Your library search path")
#*********************************************************************************************************
LOCAL_DEPEND_LIB      := 
LOCAL_DEPEND_LIB_PATH := 

#*********************************************************************************************************
# C++ config
#*********************************************************************************************************
LOCAL_USE_CXX        := no
LOCAL_USE_CXX_EXCEPT := no

#*********************************************************************************************************
# Code coverage config
#*********************************************************************************************************
LOCAL_USE_GCOV := no

include $(STATIC_LIBRARY_MK)

#*********************************************************************************************************
# End
#*********************************************************************************************************
