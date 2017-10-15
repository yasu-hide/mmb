// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.Activity;
import android.broadcast.helper.MtvUtilDebug;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.utility.MtvPreferences;
import com.samsung.sec.mtv.utility.MtvUtilAudioManager;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvUiFrag, MtvUiGenericPlayer

public class MtvUiVolumeControlBarFrag extends MtvUiFrag
{

    public MtvUiVolumeControlBarFrag()
    {
        mVolumeControlBar = null;
        mVolumeSeekBar = null;
        mVolumeTextView = null;
        mMtvAudMgr = null;
        mGenericPlayerActivity = null;
        mVolumeSeekBarTouchListener = new android.view.View.OnTouchListener() {

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                return mGenericPlayerActivity != null && mGenericPlayerActivity.isPhoneLocked();
            }

            final MtvUiVolumeControlBarFrag this$0;

            
            {
                this$0 = MtvUiVolumeControlBarFrag.this;
                super();
            }
        }
;
        mVolumeSeekBarChangeListener = new android.widget.SeekBar.OnSeekBarChangeListener() {

            public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
            {
                if(!MtvUtilDebug.isReleaseMode())
                    MtvUtilDebug.Low("VolumeFrag", (new StringBuilder()).append("mVolumeSeekBarChangeListener:onProgressChanged( progress=").append(i).append(",fromTouch=").append(flag).toString());
                mMtvAudMgr.setVolumeLevel(i);
                if(i < 10)
                    mVolumeTextView.setText((new StringBuilder()).append("0").append(i).toString());
                else
                    mVolumeTextView.setText((new StringBuilder()).append("").append(i).toString());
                mListener.onFragEvent(218, null);
            }

            public void onStartTrackingTouch(SeekBar seekbar)
            {
                MtvUtilDebug.Low("VolumeFrag", "onStartTrackingTouch() is called");
                mMtvAudMgr.stopOtherSound();
                if(notifytouchtoactivity)
                {
                    MtvUtilDebug.Low("VolumeFrag", "Notifing to activity");
                    notifytouchtoactivity = false;
                    mListener.onFragEvent(217, null);
                }
            }

            public void onStopTrackingTouch(SeekBar seekbar)
            {
                MtvUtilDebug.Low("VolumeFrag", "onStopTrackingTouch() is called");
                notifytouchtoactivity = true;
                MtvUtilDebug.Low("VolumeFrag", "Notifing to activity touch ends...");
                mListener.onFragEvent(219, null);
            }

            private boolean notifytouchtoactivity;
            final MtvUiVolumeControlBarFrag this$0;

            
            {
                this$0 = MtvUiVolumeControlBarFrag.this;
                super();
                notifytouchtoactivity = true;
            }
        }
;
    }

    private void initializeUI(View view)
    {
        mVolumeSeekBar = (SeekBar)((LinearLayout)view.findViewById(0x7f0a00fe)).findViewById(0x7f0a00ff);
        mVolumeSeekBar.setMode(3);
        mVolumeTextView = (TextView)((RelativeLayout)view.findViewById(0x7f0a00fc)).findViewById(0x7f0a00fd);
        mVolumeSeekBar.setOnSeekBarChangeListener(mVolumeSeekBarChangeListener);
        mVolumeSeekBar.setOnTouchListener(mVolumeSeekBarTouchListener);
        updateVolumePopupBar();
    }

    private void updateVolumePopupBar()
    {
        int i = mMtvAudMgr.getVolumeLevel();
        mVolumeSeekBar.setProgress(i);
        if(i < 10)
        {
            mVolumeTextView.setText((new StringBuilder()).append("0").append(i).toString());
            return;
        } else
        {
            mVolumeTextView.setText((new StringBuilder()).append("").append(i).toString());
            return;
        }
    }

    public void onAttach(Activity activity)
    {
        MtvUtilDebug.Low("VolumeFrag", "onAttach");
        super.onAttach(activity);
        try
        {
            mListener = (MtvUiFrag.IMtvFragEventListener)activity;
            return;
        }
        catch(ClassCastException classcastexception)
        {
            throw new ClassCastException((new StringBuilder()).append(activity.toString()).append(" must implement IMtvFragEventListener").toString());
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUtilDebug.Low("VolumeFrag", "onCreate");
        setRetainInstance(true);
        mMtvAudMgr = MtvUtilAudioManager.getInstance(getActivity().getApplicationContext());
        mMtvPreferences = new MtvPreferences(getActivity());
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        MtvUtilDebug.Low("VolumeFrag", "onCreateView");
        if(mMtvPreferences.isSViewRunning())
            mVolumeControlBar = layoutinflater.inflate(0x7f03002e, viewgroup, false);
        else
            mVolumeControlBar = layoutinflater.inflate(0x7f03002d, viewgroup, false);
        if(getActivity() instanceof MtvUiGenericPlayer)
            mGenericPlayerActivity = (MtvUiGenericPlayer)getActivity();
        initializeUI(mVolumeControlBar);
        return mVolumeControlBar;
    }

    public void onDestroyView()
    {
        MtvUtilDebug.Low("VolumeFrag", "onDestroyView");
        super.onDestroyView();
        mVolumeControlBar = null;
    }

    public void onDetach()
    {
        MtvUtilDebug.Low("VolumeFrag", "onDetach");
        mVolumeSeekBar.setOnSeekBarChangeListener(null);
        super.onDetach();
    }

    public void onResume()
    {
        super.onResume();
        MtvUtilDebug.Low("VolumeFrag", "onResume");
        mVolumeSeekBar.setProgress(mMtvAudMgr.getVolumeLevel());
    }

    public void onUpdate(int i, Object obj)
    {
        MtvUtilDebug.Low("VolumeFrag", (new StringBuilder()).append("onUpdate : what = ").append(i).toString());
        switch(i)
        {
        default:
            return;

        case 106: // 'j'
        case 107: // 'k'
            if(i == 106)
                mMtvAudMgr.volumeUp();
            else
                mMtvAudMgr.volumeDown();
            mVolumeSeekBar.setProgress(mMtvAudMgr.getVolumeLevel());
            mVolumeSeekBar.invalidate();
            updateVolumePopupBar();
            return;

        case 108: // 'l'
            updateVolumePopupBar();
            return;
        }
    }

    private static final String TAG = "VolumeFrag";
    private MtvUiGenericPlayer mGenericPlayerActivity;
    private MtvUiFrag.IMtvFragEventListener mListener;
    private MtvUtilAudioManager mMtvAudMgr;
    private MtvPreferences mMtvPreferences;
    private View mVolumeControlBar;
    private SeekBar mVolumeSeekBar;
    private android.widget.SeekBar.OnSeekBarChangeListener mVolumeSeekBarChangeListener;
    private android.view.View.OnTouchListener mVolumeSeekBarTouchListener;
    private TextView mVolumeTextView;




}
