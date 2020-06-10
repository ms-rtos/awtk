#*********************************************************************************************************
#
#                                 ����������Ϣ�������޹�˾
#
#                                   ΢�Ͱ�ȫʵʱ����ϵͳ
#
#                                       MS-RTOS(TM)
#
#                               Copyright All Rights Reserved
#
#--------------�ļ���Ϣ--------------------------------------------------------------------------------
#
# ��   ��   ��: awtk_demo.mk
#
# ��   ��   ��: IoT Studio
#
# �ļ���������: 2016 �� 10 �� 08 ��
#
# ��        ��: ���ļ��� IoT Studio ���ɣ��������� Makefile ���ܣ������ֶ��޸�
#*********************************************************************************************************

#*********************************************************************************************************
# Clear setting
#*********************************************************************************************************
include $(CLEAR_VARS_MK)

#*********************************************************************************************************
# Target
#*********************************************************************************************************
LOCAL_TARGET_NAME := awtk_demo

#*********************************************************************************************************
# Source list
#*********************************************************************************************************
LOCAL_SRCS := \
src/awtk/demos/assets-1m.c \
src/awtk/demos/demo_ui_app.c

#*********************************************************************************************************
# Header file search path (eg. LOCAL_INC_PATH := -I"Your hearder files search path")
#*********************************************************************************************************
LOCAL_INC_PATH := \
-I"$(MSRTOS_BASE_PATH)/awtk/src" \
-I"$(MSRTOS_BASE_PATH)/awtk/src/awtk" \
-I"$(MSRTOS_BASE_PATH)/awtk/src/awtk/3rd" \
-I"$(MSRTOS_BASE_PATH)/awtk/src/awtk/src" \
-I"$(MSRTOS_BASE_PATH)/awtk/src/awtk/src/ext_widgets" \
-I"$(MSRTOS_BASE_PATH)/awtk/src/awtk/3rd/agge" \
-I"$(MSRTOS_BASE_PATH)/awtk/src/awtk/3rd/libunibreak" \
-I"$(MSRTOS_BASE_PATH)/awtk/src/awtk/3rd/stb" \
-I"$(MSRTOS_BASE_PATH)/awtk/src/awtk/3rd/nanovg" \
-I"$(MSRTOS_BASE_PATH)/awtk/src/awtk/3rd/nanovg/base" \
-I"./src/awtk/demos"

#*********************************************************************************************************
# Pre-defined macro (eg. -DYOUR_MARCO=1)
#*********************************************************************************************************
LOCAL_DSYMBOL := \
-DHAS_AWTK_CONFIG=1

#*********************************************************************************************************
# Depend library (eg. LOCAL_DEPEND_LIB := -la LOCAL_DEPEND_LIB_PATH := -L"Your library search path")
#*********************************************************************************************************
LOCAL_DEPEND_LIB      := -lawtk
LOCAL_DEPEND_LIB_PATH := -L"$(MSRTOS_BASE_PATH)/awtk/$(OUTDIR)"

#*********************************************************************************************************
# C++ config
#*********************************************************************************************************
LOCAL_USE_CXX        := no
LOCAL_USE_CXX_EXCEPT := no

#*********************************************************************************************************
# Code coverage config
#*********************************************************************************************************
LOCAL_USE_GCOV := no

#*********************************************************************************************************
# Stack check config
#*********************************************************************************************************
LOCAL_USE_STACK_CHECK := no

#*********************************************************************************************************
# User link command
#*********************************************************************************************************
LOCAL_PRE_LINK_CMD   := 
LOCAL_POST_LINK_CMD  := 
LOCAL_PRE_STRIP_CMD  := 
LOCAL_POST_STRIP_CMD := 

#*********************************************************************************************************
# Depend target
#*********************************************************************************************************
LOCAL_DEPEND_TARGET := $(OUTDIR)/libawtk.a

include $(APPLICATION_MK)

#*********************************************************************************************************
# End
#*********************************************************************************************************