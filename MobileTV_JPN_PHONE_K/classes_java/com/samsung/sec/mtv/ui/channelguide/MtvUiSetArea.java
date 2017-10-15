// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.channelguide;

import android.app.AlertDialog;
import android.broadcast.helper.MtvUtilDebug;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.*;
import com.samsung.sec.mtv.provider.MtvArea;
import com.samsung.sec.mtv.provider.MtvAreaManager;
import com.samsung.sec.mtv.ui.common.MtvBaseListActivity;
import com.samsung.sec.mtv.utility.*;

// Referenced classes of package com.samsung.sec.mtv.ui.channelguide:
//            MtvUiChangeArea

public class MtvUiSetArea extends MtvBaseListActivity
    implements android.widget.AdapterView.OnItemLongClickListener, android.widget.AdapterView.OnItemClickListener
{

    public MtvUiSetArea()
    {
        position = -1;
    }

    private void createDialog(final int pos)
    {
        sArrayRsrc = 0x7f05000e;
        areaOptionsDialog = (new android.app.AlertDialog.Builder(this)).setTitle(0x7f0701ea).setItems(sArrayRsrc, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                position = -1;
                i;
                JVM INSTR tableswitch 0 0: default 28
            //                           0 29;
                   goto _L1 _L2
_L1:
                return;
_L2:
                MtvUtilDebug.Mid("MtvUiSetArea", "Reset the vaue");
                MtvAreaManager.update2Default(MtvUiSetArea.this, pos);
                initialize();
                dialoginterface = getIntent();
                dialoginterface.putExtra("noAreaSet", true);
                dialoginterface.putExtra("setarea", true);
                setResult(-1, dialoginterface);
                if(MtvAreaManager.getCount(MtvUiSetArea.this) == 0)
                {
                    finish();
                    return;
                }
                if(true) goto _L1; else goto _L3
_L3:
            }

            final MtvUiSetArea this$0;
            final int val$pos;

            
            {
                this$0 = MtvUiSetArea.this;
                pos = i;
                super();
            }
        }
).create();
        areaOptionsDialog.setCanceledOnTouchOutside(false);
        areaOptionsDialog.show();
    }

    private void initialize()
    {
        MtvUtilDebug.Mid("MtvUiSetArea", "initialize");
        MtvArea amtvarea[] = MtvAreaManager.getAllAreas(this);
        String as[] = new String[amtvarea.length];
        int i = 0;
        while(i < amtvarea.length) 
        {
            String s;
            if(amtvarea[i].mAreaId == -1)
                s = (new StringBuilder()).append(getString(0x7f0701e9)).append(" ").append(i + 1).toString();
            else
                s = MtvAreaStationInfo.getStringByResourceName(this, amtvarea[i].mAreaName);
            as[i] = s;
            i++;
        }
        setListAdapter(new ArrayAdapter(this, 0x1090003, as));
        ListView listview = getListView();
        listview.setItemsCanFocus(false);
        listview.setOnItemClickListener(this);
        listview.setOnItemLongClickListener(this);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if(j != -1) goto _L2; else goto _L1
_L1:
        setResult(-1, intent);
        finish();
_L4:
        super.onActivityResult(i, j, intent);
        return;
_L2:
        if(j == 0)
            finish();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        MtvUtilDebug.Mid("MtvUiSetArea", "onCreate MtvUiSetArea");
        initialize();
        if(bundle != null)
        {
            position = bundle.getInt("position");
            if(position > -1)
                createDialog(position);
        }
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
    }

    public void onDestroy()
    {
        MtvUtilDebug.Mid("MtvUiSetArea", "onDestroy");
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        MtvUtilDebug.Mid("MtvUiSetArea", (new StringBuilder()).append("onItemClick arg0=").append(adapterview).append(" arg1=").append(view).append(" arg2=").append(i).append(" arg3=").append(l).toString());
        adapterview = new Intent(this, com/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea);
        adapterview.putExtra("slotId", i);
        startActivityForResult(adapterview, 0);
    }

    public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
    {
        MtvUtilDebug.Mid("MtvUiSetArea", (new StringBuilder()).append("onItemLongClick arg0=").append(adapterview).append(" view=").append(view).append(" pos=").append(i).append(" id=").append(l).toString());
        position = i;
        for(adapterview = MtvAreaManager.getAllAreas(this); adapterview != null && ((MtvArea) (adapterview[position])).mAreaId == -1 || ((MtvArea) (adapterview[position])).mAreaId == -1;)
            return true;

        createDialog(position);
        return true;
    }

    protected void onResume()
    {
        super.onResume();
        if(MtvUtilAppService.isAppExiting())
            finish();
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        bundle.putInt("position", position);
        super.onSaveInstanceState(bundle);
    }

    protected static final String TAG = "MtvUiSetArea";
    private static int sArrayRsrc = 0;
    private AlertDialog areaOptionsDialog;
    private int position;



/*
    static int access$002(MtvUiSetArea mtvuisetarea, int i)
    {
        mtvuisetarea.position = i;
        return i;
    }

*/

}
