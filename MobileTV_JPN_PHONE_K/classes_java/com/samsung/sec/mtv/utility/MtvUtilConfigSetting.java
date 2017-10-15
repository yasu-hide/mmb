// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.utility;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class MtvUtilConfigSetting
{

    public MtvUtilConfigSetting()
    {
        iTsFileSimul = false;
        iTsCapture = false;
    }

    public static float convertDpToPixel(float f, Context context)
    {
        return ((float)context.getResources().getDisplayMetrics().densityDpi / 160F) * f;
    }

    public static final int DEFAULT_BML_HEIGHT = 320;
    public static final int DEFAULT_BML_WIDTH = 900;
    public static final int DEFAULT_SCREEN_HEIGHT = 180;
    public static final int DEFAULT_SCREEN_WIDTH = 320;
    public static final int DEVICE_VOLUME_MAX_VAL = 15;
    public static final int DTV_CHANNEL_MAX_VALUE = 52;
    public static final int DTV_CHANNEL_MIN_VALUE = 13;
    public static final int DTV_LOW_BATTERY_LEVEL = 15;
    public static final int DTV_MULTICHANNELNUMBER_MAX_VALUE = 249;
    public static final int DTV_MULTICHANNELNUMBER_MIN_VALUE = 11;
    public static final int DTV_VCHANNEL_MAX_VALUE = 24;
    public static final int DTV_VCHANNEL_MIN_VALUE = 1;
    public static boolean ENABLE_SCREEN_CAPTURE = false;
    public static boolean EPGAPP_ENABLED = false;
    public static final float LCD_BMLBAR_HEIGHT = 72F;
    public static final float LCD_CAPTION_HEIGHT = 99F;
    public static final float LCD_CONTROLBAR_HEIGHT = 53F;
    public static final float LCD_FULLSEG_BML_CONTROLBAR_WIDTH = 144F;
    public static final float LCD_HORIZONTAL_HEIGHT = 360F;
    public static final float LCD_HORIZONTAL_WIDTH = 640F;
    public static final float LCD_INDICATOR_HEIGHT = 25F;
    public static final float LCD_STATUSBAR_HEIGHT = 60F;
    public static final float LCD_VERTICAL_HEIGHT = 203F;
    public static final float LCD_VERTICAL_NORMAL_WIDTH = 240F;
    public static final float LCD_VERTICAL_WIDTH = 360F;
    public static final String NAME_TS_CAPTURE = "CONFIG_TSCAPTURE";
    public static final String NAME_TS_FILE_SIMUL = "CONFIG_TSFILESIMUL";
    public static final int PROG_INFO_BOTTOM_MARGIN_LAND = 29;
    public static final int PROG_INFO_BOTTOM_MARGIN_PORT = 70;
    public static final int PROG_INFO_BOTTOM_MARGIN_PORT_LIVE = 200;
    public static final int PROG_INFO_HEIGHT = 328;
    public static final int PROG_INFO_WIDTH = 322;
    public static final boolean SCMS_T_SUPPORTED = true;
    public static final int SCREEN_MODE_NORMAL = 0;
    public static final float SVIEW_VERTICAL_HEIGHT = 228F;
    public static final float SVIEW_VERTICAL_WIDTH = 318F;
    public boolean iTsCapture;
    public boolean iTsFileSimul;

    static 
    {
        EPGAPP_ENABLED = true;
        ENABLE_SCREEN_CAPTURE = false;
    }
}
