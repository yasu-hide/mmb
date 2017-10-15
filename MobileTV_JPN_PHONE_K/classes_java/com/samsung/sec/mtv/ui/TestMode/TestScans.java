// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.TestMode;

import android.net.Uri;
import android.provider.BaseColumns;

public final class TestScans
{
    public static final class TestScansInfo
        implements BaseColumns
    {

        public static final Uri CONTENT_URI = Uri.parse("content://com.samung.sec.mtv.ui.TestMode.TestScans/testscansinfo");
        public static final String CREATED_UNIXTIME = "unixtime";
        public static final String DEFAULT_SORT_ORDER = "unixtime ASC";
        public static final String DISPLAY_SORT_ORDER = "unixtime DESC";
        public static final String MAX_CHANNEL_TIME = "maxchanneltime";
        public static final String MIN_CHANNEL_TIME = "minchanneltime";
        public static final String NUM_CHANNELS = "numchannels";
        public static final String SCAN_TIME = "scantime";


        private TestScansInfo()
        {
        }
    }


    private TestScans()
    {
    }

    public static final String AUTHORITY = "com.samung.sec.mtv.ui.TestMode.TestScans";
}
