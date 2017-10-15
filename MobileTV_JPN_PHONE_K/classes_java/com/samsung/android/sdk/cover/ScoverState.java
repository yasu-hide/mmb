// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.cover;


public class ScoverState
{

    public ScoverState()
    {
        switchState = true;
        type = 2;
        color = 0;
        widthPixel = 0;
        heightPixel = 0;
    }

    public ScoverState(boolean flag, int i, int j, int k, int l)
    {
        switchState = flag;
        type = i;
        color = j;
        widthPixel = k;
        heightPixel = l;
    }

    public int getColor()
    {
        return color;
    }

    public boolean getSwitchState()
    {
        return switchState;
    }

    public int getType()
    {
        return type;
    }

    public int getWindowHeight()
    {
        return heightPixel;
    }

    public int getWindowWidth()
    {
        return widthPixel;
    }

    public String toString()
    {
        return String.format("ScoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d)", new Object[] {
            Boolean.valueOf(switchState), Integer.valueOf(type), Integer.valueOf(color), Integer.valueOf(widthPixel), Integer.valueOf(heightPixel)
        });
    }

    public static final int COLOR_BEIGE = 17;
    public static final int COLOR_BLACK = 1;
    public static final int COLOR_BLUSH_PINK = 3;
    public static final int COLOR_CARBON_METAL = 9;
    public static final int COLOR_CHARCOAL_GRAY = 10;
    public static final int COLOR_CLASSIC_WHITE = 2;
    public static final int COLOR_DARK_BLUE = 14;
    public static final int COLOR_DEFAULT = 0;
    public static final int COLOR_GRAYISH_BLUE = 8;
    public static final int COLOR_INDIGO_BLUE = 6;
    public static final int COLOR_JET_BLACK = 1;
    public static final int COLOR_LAVENDER = 16;
    public static final int COLOR_MAGENTA = 7;
    public static final int COLOR_MINT = 15;
    public static final int COLOR_MINT_BLUE = 8;
    public static final int COLOR_MUSTARD_YELLOW = 9;
    public static final int COLOR_OATMEAL = 5;
    public static final int COLOR_OATMEAL_BEIGE = 5;
    public static final int COLOR_ORANGE = 4;
    public static final int COLOR_PEAKCOK_GREEN = 10;
    public static final int COLOR_PEARL_OATMEAL = 18;
    public static final int COLOR_PEARL_WHITE = 13;
    public static final int COLOR_PLUM_RED = 7;
    public static final int COLOR_SILVER = 12;
    public static final int COLOR_SOFT_PINK = 3;
    public static final int COLOR_WHITE = 2;
    public static final int COLOR_WILD_ORANGE = 4;
    public static final int COLOR_WINE_RED = 11;
    public static final boolean SWITCH_STATE_COVER_CLOSE = false;
    public static final boolean SWITCH_STATE_COVER_OPEN = true;
    private static final String TAG = "ScoverState";
    public static final int TYPE_FLIP_COVER = 0;
    public static final int TYPE_HEALTH_COVER = 4;
    public static final int TYPE_MINI_SVIEW_COVER = 5;
    public static final int TYPE_NONE = 2;
    public static final int TYPE_SVIEW_CHARGER_COVER = 3;
    public static final int TYPE_SVIEW_COVER = 1;
    public int color;
    private int heightPixel;
    private boolean switchState;
    public int type;
    private int widthPixel;
}
