// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.Activity;
import android.broadcast.helper.MtvUtilDebug;
import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.provider.*;
import com.samsung.sec.mtv.ui.channelguide.MtvUiChannelSchedule;
import com.samsung.sec.mtv.utility.*;
import java.sql.Date;
import java.text.SimpleDateFormat;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvUiFrag, MtvUiFragHandler

public class MtvUiProgInfoFrag extends MtvUiFrag
    implements android.view.View.OnClickListener
{

    private MtvUiProgInfoFrag()
    {
        mbIsNowOnAir = false;
        mMtvPreferences = null;
    }

    public MtvUiProgInfoFrag(Bundle bundle)
    {
        this();
        mProgInfo = bundle;
    }

    private void initializeUI()
    {
        MtvUtilDebug.Low("MtvUiProgInfoFrag", "initializeUI");
        mPCh = mProgInfo.getInt("pgmPch");
        startTime = mProgInfo.getLong("startTime");
        TextView textview2 = (TextView)mLayoutView.findViewById(0x7f0a00ca);
        TextView textview = (TextView)mLayoutView.findViewById(0x7f0a00cb);
        TextView textview1 = (TextView)mLayoutView.findViewById(0x7f0a00cd);
        ((Button)mLayoutView.findViewById(0x7f0a00d1)).setOnClickListener(this);
        Button button = (Button)mLayoutView.findViewById(0x7f0a00d3);
        button.setOnClickListener(this);
        mProgramSchedule = (Button)mLayoutView.findViewById(0x7f0a00cf);
        mProgramWatch = (Button)mLayoutView.findViewById(0x7f0a00d0);
        String s = null;
        int i = mMtvPreferences.getLatestServiceID();
        MtvChannel mtvchannel;
        if(i != 0)
            mtvchannel = MtvChannelManager.findByPChannel(getActivity(), mPCh, i);
        else
            mtvchannel = MtvChannelManager.findByPChannel(getActivity(), mPCh);
        if(mProgInfo.getString("channelName") == null && mtvchannel == null)
            s = getResources().getString(0x7f070288);
        else
        if(mtvchannel != null)
        {
            if(mtvchannel.mChannelName != null)
                s = mtvchannel.mChannelName;
        } else
        {
            s = mProgInfo.getString("channelName");
        }
        if(mtvchannel != null && mtvchannel.mMultiChannelNo > 0)
        {
            StringBuilder stringbuilder = (new StringBuilder()).append(s).append(" ");
            Object obj;
            if(mtvchannel.mMultiChannelNo < 99)
                obj = (new StringBuilder()).append("0").append(mtvchannel.mMultiChannelNo).toString();
            else
                obj = Integer.valueOf(mtvchannel.mMultiChannelNo);
            textview2.setText(stringbuilder.append(obj).toString());
        } else
        {
            textview2.setText(s);
        }
        if(mtvchannel != null)
            textview2.setText((new StringBuilder()).append("CH").append(mtvchannel.mVirtualNum).append(" ").append(s).toString());
        else
            textview2.setText((new StringBuilder()).append("CH").append(mPCh).append(" ").append(s).toString());
        mtvProgram = MtvProgramManager.findByPChannel(getActivity(), startTime, mPCh);
        s = null;
        if(mtvProgram != null)
        {
            s = (new SimpleDateFormat("H:mm")).format(new Date(mtvProgram.mTimeStart));
            s = (new StringBuilder()).append(s).append(" - ").append((new SimpleDateFormat("H:mm")).format(new Date(mProgInfo.getLong("endtime")))).toString();
        }
        mProgTitle = mProgInfo.getString("programName");
        textview.setText((new StringBuilder()).append(s).append(" ").append(mProgTitle).toString());
        textview1.setText(mProgInfo.getString("programDesc"));
        mReservationType = mProgInfo.getInt("reservationType");
        mProgramStatus = mProgInfo.getInt("rsrvStatus");
        mbIsNowOnAir = mProgInfo.getBoolean("isNowOnAir");
        if(getActivity().getLocalClassName().contains("MtvUiChannelSchedule"))
        {
            mProgramSchedule.setVisibility(8);
            mProgramWatch.setVisibility(8);
            button.setVisibility(8);
            if(mbIsNowOnAir)
            {
                mProgramSchedule.setText(0x7f0702ad);
                mProgramSchedule.setVisibility(0);
                mProgramSchedule.setOnClickListener(this);
                mProgramWatch.setText(0x7f070315);
                mProgramWatch.setOnClickListener(this);
                mProgramWatch.setVisibility(0);
                button.setVisibility(0);
                return;
            }
            if(mtvProgram != null && mtvProgram.mTimeEnd > System.currentTimeMillis())
            {
                if(mReservationType == 0)
                {
                    mProgramSchedule.setText(0x7f0702c9);
                    longClickIndex = 0x7f05000f;
                } else
                if(mProgramStatus != 0)
                {
                    mProgramSchedule.setText(0x7f0702c9);
                    longClickIndex = 0x7f05000f;
                } else
                {
                    mProgramSchedule.setText(0x7f07020c);
                }
                mProgramSchedule.setOnClickListener(this);
                mProgramWatch.setVisibility(8);
                mProgramSchedule.setVisibility(0);
                button.setVisibility(0);
                return;
            } else
            {
                button.setVisibility(0);
                return;
            }
        } else
        {
            mLayoutView.findViewById(0x7f0a00ce).setVisibility(8);
            mLayoutView.findViewById(0x7f0a00d2).setVisibility(0);
            return;
        }
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131361999 2131362003: default 40
    //                   2131361999 53
    //                   2131362000 361
    //                   2131362001 41
    //                   2131362002 40
    //                   2131362003 41;
           goto _L1 _L2 _L3 _L4 _L1 _L4
_L1:
        return;
_L4:
        MtvUiFragHandler.removeUnManagedFrag(MtvUiFragHandler.FRAG_TYPE.TYPE_TAG_PROG_INFO, getActivity());
        return;
_L2:
        if(getActivity() != null)
        {
            MtvUiFragHandler.removeUnManagedFrag(MtvUiFragHandler.FRAG_TYPE.TYPE_TAG_PROG_INFO, getActivity());
            if(mbIsNowOnAir)
                MtvUtilAppService.setIsNowOnAirReservation(true);
            if(mReservationType == 0 || mbIsNowOnAir)
            {
                if(!((MtvUiChannelSchedule)getActivity()).isReservationAlreadyTime(mtvProgram))
                {
                    ((MtvUiChannelSchedule)getActivity()).showAlreadyReserveDlg();
                    return;
                }
                MtvUtilDebug.Low("MtvUiProgInfoFrag", (new StringBuilder()).append("mtvProgram.mTimeStart = ").append(mtvProgram.mTimeStart).append(" mtvProgram.mTimeEnd = ").append(mtvProgram.mTimeEnd).append(" System.currentTimeMillis() = ").append(System.currentTimeMillis()).toString());
                if(mtvProgram.mTimeStart <= System.currentTimeMillis() && mtvProgram.mTimeEnd >= System.currentTimeMillis())
                {
                    MtvUtilDebug.Low("MtvUiProgInfoFrag", "ReserveProgramStarted");
                    ((MtvUiChannelSchedule)getActivity()).ReserveProgramStarted(mProgTitle, mtvProgram);
                    return;
                }
                if(mtvProgram.mTimeStart > System.currentTimeMillis())
                {
                    MtvUtilDebug.Low("MtvUiProgInfoFrag", "reserveContextMenuDialog");
                    if(mbIsNowOnAir)
                    {
                        MtvUtilDebug.Error("MtvUiProgInfoFrag", "This scenario can haapen only with FileSimulation/Generator... Not in Live, so not handling it");
                        return;
                    } else
                    {
                        ((MtvUiChannelSchedule)getActivity()).reserveContextMenuDialog(mProgTitle, longClickIndex, mtvProgram, mbIsNowOnAir);
                        return;
                    }
                } else
                {
                    MtvUtilDebug.Error("MtvUiProgInfoFrag", "Probably User has set wrong system time");
                    return;
                }
            }
            if(mProgramStatus != 0)
            {
                ((MtvUiChannelSchedule)getActivity()).reserveContextMenuDialog(mProgTitle, longClickIndex, mtvProgram, mbIsNowOnAir);
                return;
            } else
            {
                ((MtvUiChannelSchedule)getActivity()).CancelReservationDialog(startTime);
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if(mbIsNowOnAir)
        {
            MtvUiFragHandler.removeUnManagedFrag(MtvUiFragHandler.FRAG_TYPE.TYPE_TAG_PROG_INFO, getActivity());
            view = new Intent();
            view.setFlags(0x4000000);
            view.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"));
            startActivity(view);
            return;
        }
        if(true) goto _L1; else goto _L5
_L5:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRetainInstance(true);
        setHasOptionsMenu(false);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        mLayoutView = layoutinflater.inflate(0x7f030026, null);
        mMtvPreferences = new MtvPreferences(getActivity().getApplicationContext());
        if(mLayoutView != null)
        {
            initializeUI();
            layoutinflater = (RelativeLayout)mLayoutView.findViewById(0x7f0a00c8);
            int i = (int)MtvUtilConfigSetting.convertDpToPixel(328F, getActivity());
            viewgroup = new android.widget.RelativeLayout.LayoutParams((int)MtvUtilConfigSetting.convertDpToPixel(322F, getActivity()), i);
            if(MtvUtilAppService.getCurrentOrientation(getActivity().getApplicationContext()) == 1)
                viewgroup.bottomMargin = (int)MtvUtilConfigSetting.convertDpToPixel(29F, getActivity());
            else
                viewgroup.bottomMargin = (int)MtvUtilConfigSetting.convertDpToPixel(70F, getActivity());
            viewgroup.addRule(14);
            viewgroup.addRule(12);
            layoutinflater.setLayoutParams(viewgroup);
        }
        return mLayoutView;
    }

    private static final int RESERVATION_NONE = 0;
    private static final String TAG = "MtvUiProgInfoFrag";
    private int longClickIndex;
    private View mLayoutView;
    private MtvPreferences mMtvPreferences;
    private int mPCh;
    private Bundle mProgInfo;
    private String mProgTitle;
    private Button mProgramSchedule;
    private int mProgramStatus;
    private Button mProgramWatch;
    private int mReservationType;
    private boolean mbIsNowOnAir;
    private MtvProgram mtvProgram;
    private long startTime;
}
