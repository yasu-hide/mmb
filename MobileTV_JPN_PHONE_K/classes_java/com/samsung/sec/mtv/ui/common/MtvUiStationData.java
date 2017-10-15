// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.app.context.MtvAppPlaybackContextManager;
import com.samsung.sec.mtv.app.player.IMtvAppPlayerOneSeg;
import com.samsung.sec.mtv.app.player.MtvAppPlayerOneSeg;
import com.samsung.sec.mtv.provider.MtvBMLManager;
import com.samsung.sec.mtv.utility.*;
import java.lang.reflect.Field;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvBaseActivity, MtvUiRemoveList

public class MtvUiStationData extends MtvBaseActivity
    implements android.widget.AdapterView.OnItemClickListener
{
    protected static class StationDataAdapter extends ArrayAdapter
    {

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            viewgroup = view;
            view = viewgroup;
            if(viewgroup == null)
                view = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030010, null);
            viewgroup = mTitleName[i];
            mCount = MtvBMLManager.deleteStationData_GetNetworkItemCount(i);
            mNameText = (TextView)view.findViewById(0x7f0a005c);
            mCountText = (TextView)view.findViewById(0x7f0a005d);
            mNameText.setText(viewgroup);
            mCountText.setText((new StringBuilder()).append(": ").append(mCount).toString());
            return view;
        }

        private int mCount;
        private TextView mCountText;
        private TextView mNameText;
        private String mTitleName[];

        public StationDataAdapter(Context context, int i)
        {
            super(context, i);
        }

        public StationDataAdapter(Context context, int i, String as[])
        {
            super(context, i, as);
            mTitleName = as;
        }
    }


    public MtvUiStationData()
    {
        mAdapter = null;
        mDeleteStationData = null;
        mStationDataListView = null;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000f);
        Field field;
        bundle = ViewConfiguration.get(this);
        field = android/view/ViewConfiguration.getDeclaredField("sHasPermanentMenuKey");
        if(field != null)
            try
            {
                field.setAccessible(true);
                field.setBoolean(bundle, false);
            }
            // Misplaced declaration of an exception variable
            catch(Bundle bundle)
            {
                bundle.printStackTrace();
            }
        getWindow().addFlags(128);
        mStationDataListView = (ListView)findViewById(0x7f0a005b);
        mDeleteStationData = getBaseContext().getResources().getStringArray(0x7f050008);
        mAdapter = new StationDataAdapter(this, 0x7f030010, mDeleteStationData);
        mStationDataListView.setAdapter(mAdapter);
        mStationDataListView.setOnItemClickListener(this);
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
        return;
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        menu.add(0, 0, 0, 0x7f0702be).setIcon(0x7f0200b4);
        return super.onCreateOptionsMenu(menu);
    }

    public void onDestroy()
    {
        MtvUtilDebug.Low("MtvUiStationData", "onDestroy call...");
        super.onDestroy();
        finishActivity(0);
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        MtvUtilDebug.Low("MtvUiStationData", (new StringBuilder()).append("position is ").append(i).toString());
        adapterview = new Intent(this, com/samsung/sec/mtv/ui/common/MtvUiRemoveList);
        adapterview.putExtra("Remove_List_Type", 100);
        adapterview.putExtra("delete_station_data_index", i);
        startActivity(adapterview);
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 0 0: default 24
    //                   0 30;
           goto _L1 _L2
_L1:
        return super.onOptionsItemSelected(menuitem);
_L2:
        MtvAppPlayerOneSeg.getInstance().deleteAllAffililiationAreas(MtvAppPlaybackContextManager.getInstance().getCurrentContext());
        mAdapter.notifyDataSetChanged();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onResume()
    {
        super.onResume();
        sendBroadcast(new Intent("intent.stop.app-in-app"));
        MtvUtilDebug.High("MtvUiStationData", "onResume call..");
        if(MtvUtilAppService.isAppExiting())
        {
            finish();
        } else
        {
            if(mMtvPreferences == null)
                mMtvPreferences = new MtvPreferences(getApplicationContext());
            getWindow().setTitle(getString(0x7f070238));
            if(mStationDataListView != null && mAdapter != null)
            {
                mStationDataListView.setAdapter(mAdapter);
                return;
            }
        }
    }

    private static final String TAG = "MtvUiStationData";
    private StationDataAdapter mAdapter;
    private String mDeleteStationData[];
    private MtvPreferences mMtvPreferences;
    private ListView mStationDataListView;
}
