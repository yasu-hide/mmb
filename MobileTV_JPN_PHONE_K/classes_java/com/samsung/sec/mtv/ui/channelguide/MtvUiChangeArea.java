// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.channelguide;

import android.broadcast.helper.MtvUtilDebug;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.*;
import com.samsung.sec.mtv.ui.common.MtvBaseListActivity;
import com.samsung.sec.mtv.utility.*;

public class MtvUiChangeArea extends MtvBaseListActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    public MtvUiChangeArea()
    {
        mSlotId = 0;
        mCurrentPhase = 0;
        mArrayId = null;
        mArrayName = null;
    }

    private void initialize()
    {
        mCurrentPhase;
        JVM INSTR tableswitch 0 2: default 32
    //                   0 112
    //                   1 122
    //                   2 139;
           goto _L1 _L2 _L3 _L4
_L1:
        mArrayName = new String[mArrayId.length];
        for(int i = 0; i < mArrayId.length; i++)
        {
            mArrayName[i] = MtvAreaStationInfo.getStringByResourceName(this, mArrayId[i]);
            MtvUtilDebug.Low("MtvUiChangeArea", (new StringBuilder()).append("mArrayName[").append(mArrayName[i]).append("]").toString());
        }

        break; /* Loop/switch isn't completed */
_L2:
        mArrayId = MtvAreaStationInfo.AREA_REGION;
        continue; /* Loop/switch isn't completed */
_L3:
        mArrayId = MtvAreaStationInfo.AREA_PROVINCES[mSelected[0]];
        continue; /* Loop/switch isn't completed */
_L4:
        mArrayId = MtvAreaStationInfo.AREA_LOCAL[mSelected[0]][mSelected[1]];
        if(true) goto _L1; else goto _L5
_L5:
        MtvUtilDebug.Low("MtvUiChangeArea", (new StringBuilder()).append("Phase = ").append(mCurrentPhase).toString());
        setListAdapter(new ArrayAdapter(this, 0x109000f, mArrayName));
        ListView listview = getListView();
        listview.setItemsCanFocus(false);
        listview.setChoiceMode(1);
        listview.setOnItemClickListener(this);
        return;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if(j == -1)
        {
            setResult(-1, intent);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    public void onBackPressed()
    {
        setResult(0);
        super.onBackPressed();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        mSlotId = getIntent().getIntExtra("slotId", 0);
        mSelected = getIntent().getIntArrayExtra("selected");
        if(mSelected == null)
            mSelected = new int[3];
        mCurrentPhase = getIntent().getIntExtra("phase", 0);
        MtvUtilDebug.Low("MtvUiChangeArea", (new StringBuilder()).append("onCreate mSlotId=").append(mSlotId).toString());
        initialize();
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        MtvUtilDebug.Low("MtvUiChangeArea", (new StringBuilder()).append("onItemClick arg0=").append(adapterview).append(" view=").append(view).append(" position=").append(i).append(" id=").append(l).toString());
        mSelected[mCurrentPhase] = i;
        if(mCurrentPhase != 2)
        {
            adapterview = new Intent(this, com/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea);
            adapterview.putExtra("slotId", mSlotId);
            adapterview.putExtra("selected", mSelected);
            adapterview.putExtra("phase", mCurrentPhase + 1);
            startActivityForResult(adapterview, 0);
            return;
        } else
        {
            MtvUtilDebug.Low("MtvUiChangeArea", (new StringBuilder()).append("onItemClick localId=").append(MtvAreaStationInfo.AREA_LOCAL_ID[mSelected[0]][mSelected[1]][i]).toString());
            adapterview = getIntent();
            adapterview.putExtra("slotId", mSlotId);
            adapterview.putExtra("setarea", false);
            adapterview.putExtra("localId", mSelected);
            setResult(-1, adapterview);
            finish();
            return;
        }
    }

    protected void onResume()
    {
        super.onResume();
        if(MtvUtilAppService.isAppExiting())
        {
            finish();
            return;
        }
        switch(mCurrentPhase)
        {
        default:
            return;

        case 0: // '\0'
            getWindow().setTitle(getString(0x7f0702d4));
            return;

        case 1: // '\001'
            getWindow().setTitle(getString(0x7f0702d3));
            return;

        case 2: // '\002'
            getWindow().setTitle(getString(0x7f0702d2));
            break;
        }
    }

    protected static final String TAG = "MtvUiChangeArea";
    private final int CHANGE_LOCAL_AREA = 2;
    private final int CHANGE_PROVINCES = 1;
    private final int CHANGE_REGIONS = 0;
    private String mArrayId[];
    private String mArrayName[];
    private int mCurrentPhase;
    private int mSelected[];
    private int mSlotId;
}
