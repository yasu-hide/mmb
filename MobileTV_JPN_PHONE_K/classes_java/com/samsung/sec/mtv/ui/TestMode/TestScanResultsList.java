// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.TestMode;

import android.app.ListActivity;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.view.Window;
import android.widget.SimpleCursorAdapter;
import android.widget.Toast;
import com.samsung.sec.mtv.utility.MtvUtilConfigSetting;

public class TestScanResultsList extends ListActivity
{

    public TestScanResultsList()
    {
        mCursor = null;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000b);
        mCursor = getApplicationContext().getContentResolver().query(TESTSCANS_URI, PROJECTION, null, null, "unixtime DESC");
        if(mCursor != null) goto _L2; else goto _L1
_L1:
        Toast.makeText(getApplicationContext(), "No Results to Show", 1).show();
_L4:
        setListAdapter(new SimpleCursorAdapter(this, 0x7f03000c, mCursor, COLUMNS, VIEW_ID, 0));
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
        return;
_L2:
        if(mCursor.getCount() == 0)
            Toast.makeText(getApplicationContext(), "No Results to Show", 1).show();
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected void onDestroy()
    {
        if(mCursor != null && !mCursor.isClosed())
            mCursor.close();
        mCursor = null;
        super.onDestroy();
    }

    private static final String COLUMNS[] = {
        "scantime", "numchannels", "maxchanneltime", "minchanneltime"
    };
    private static final String PROJECTION[] = {
        "_id", "scantime", "numchannels", "maxchanneltime", "minchanneltime", "unixtime"
    };
    private static final Uri TESTSCANS_URI = Uri.parse("content://com.samung.sec.mtv.ui.TestMode.TestScans/testscansinfo");
    private static final int VIEW_ID[] = {
        0x7f0a0057, 0x7f0a0056, 0x7f0a0054, 0x7f0a0055
    };
    Cursor mCursor;

}
