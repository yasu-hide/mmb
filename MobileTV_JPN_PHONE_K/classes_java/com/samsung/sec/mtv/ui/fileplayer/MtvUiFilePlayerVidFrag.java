// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.fileplayer;

import android.app.Activity;
import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.os.*;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.ui.common.MtvUiFrag;
import com.samsung.sec.mtv.utility.*;

// Referenced classes of package com.samsung.sec.mtv.ui.fileplayer:
//            MtvUiFilePlayer

public class MtvUiFilePlayerVidFrag extends MtvUiFrag
    implements android.view.View.OnClickListener, android.view.View.OnLongClickListener
{

    public MtvUiFilePlayerVidFrag()
    {
        mProgressBarArea = null;
        mControlLayout = null;
        mPlayerSeekBar = null;
        mPopupMenu = null;
        mIsPopupMenuShowing = false;
        mMenuButton = null;
        mMtvAudMgr = null;
        mPlayPauseButton = null;
        mPrevButton = null;
        mNextButton = null;
        mAppInAppButton = null;
        mTotalDurationInSecond = 0;
        TRICKMODESPEED_NONE = 0;
        mbIsTouching = false;
        isLocked = false;
        previousFile = "";
        nextFile = "";
    }

    public MtvUiFilePlayerVidFrag(int i)
    {
        boolean flag = true;
        MtvUiFilePlayerVidFrag();
        if(i != 1)
            flag = false;
        isLocked = flag;
    }

    private int getDurationInSeconds(int i)
    {
        if(i < 1000)
            return 1;
        else
            return (i + 900) / 1000;
    }

    private void initializeUI()
    {
        int j = mFilePlayer.getFileTotalTime();
        int i = MtvUiFilePlayer.MTvAppPlaybackTimer.getInstance().getCurrentPlayBackTime();
        j = getDurationInSeconds(j);
        mTotalDurationInSecond = j;
        setTextFileEndtime(j);
        if(i > 0)
            setTextFilePlayingtime(i);
        else
            setTextFilePlayingtime(0);
        mPlayerSeekBar.setMax(mTotalDurationInSecond);
        mPlayerSeekBar.setEnabled(false);
        mPlayerSeekBar.setProgress(i);
        mPlayerSeekBar.bringToFront();
        if(mMenuButton != null)
            mMenuButton.setOnClickListener(this);
        if(MtvFeatures.isMiniModeEnabled())
            mLayoutView.findViewById(0x7f0a0099).setOnClickListener(this);
        mPrevButton.setOnClickListener(this);
        mPrevButton.setOnLongClickListener(this);
        mNextButton.setOnClickListener(this);
        mNextButton.setOnLongClickListener(this);
        mPlayPauseButton.setOnClickListener(this);
        mPlayPauseButton.setEnabled(false);
        mPlayPauseButton.setBackgroundResource(0x7f020097);
        mControlLayout = (RelativeLayout)mLayoutView.findViewById(0x7f0a00f5);
        setMainControlByPlayback(mFilePlayer.isInTrickMode());
        mControlLayout.setOnTouchListener(new android.view.View.OnTouchListener() {

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                return true;
            }

            final MtvUiFilePlayerVidFrag this$0;

            
            {
                this$0 = MtvUiFilePlayerVidFrag.this;
                Object();
            }
        }
);
        mListener.onFragEvent(201, Integer.valueOf(mPreferences.getDisplaySize()));
    }

    private void initilizePopupForHoverEvents()
    {
        MtvUtilDebug.Low("MtvUiFilePlayerVidFrag", "initilizePopupForHoverEvents is called....:");
        nextFile = mPreferences.getNextFileInfo();
        previousFile = mPreferences.getPreFileInfo();
        if(mPrevButton != null)
        {
            mPrevButton.setContentDescription(previousFile);
            mPrevButton.setHoverPopupType(1);
            mPrevButton.getHoverPopupWindow().setHoverDetectTime(300);
            mPrevButton.getHoverPopupWindow().setPopupGravity(12337);
            mPrevButton.getHoverPopupWindow().setPopupPosOffset(0, -10);
        }
        if(mNextButton != null)
        {
            mNextButton.setContentDescription(nextFile);
            mNextButton.setHoverPopupType(1);
            mNextButton.getHoverPopupWindow().setHoverDetectTime(300);
            mNextButton.getHoverPopupWindow().setPopupGravity(12337);
            mNextButton.getHoverPopupWindow().setPopupPosOffset(0, -10);
        }
    }

    private void setInitialMainControl(int i)
    {
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = mFilePlayer.getPlaybackState();
        if(i == 114)
            mPrevButton.setEnabled(false);
        else
            mNextButton.setEnabled(false);
        if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == state)
        {
            mPlayPauseButton.setEnabled(false);
            mPlayPauseButton.setBackgroundResource(0x7f020097);
        }
        if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED == state)
        {
            mPlayPauseButton.setEnabled(false);
            mPlayPauseButton.setBackgroundResource(0x7f02009a);
        }
        i = getDurationInSeconds(mFilePlayer.getFileTotalTime());
        mTotalDurationInSecond = i;
        setTextFileEndtime(i);
        setTextFilePlayingtime(0);
        mPlayerSeekBar.setMax(mTotalDurationInSecond);
        mPlayerSeekBar.setEnabled(false);
        mPlayerSeekBar.setProgress(0);
    }

    private void setMainControlByPlayback(boolean flag)
    {
        boolean flag4;
        boolean flag5;
        boolean flag6;
        int i;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state;
        state = mFilePlayer.getPlaybackState();
        i = mFilePlayer.getPlayerCommand();
        flag6 = false;
        flag4 = false;
        flag5 = false;
        MtvUtilDebug.Low("MtvUiFilePlayerVidFrag", (new StringBuilder()).append("setMainControlByPlayback: playbackState[").append(state).append("] playerCommand[").append(i).append("] bIsInTrickMode[").append(flag).append("]").toString());
        if(flag) goto _L2; else goto _L1
_L1:
        boolean flag2;
        boolean flag1;
        boolean flag3;
        if(20480 == i)
        {
            if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == state)
            {
                flag1 = flag6;
                flag3 = flag4;
                flag2 = flag5;
            } else
            {
                flag2 = flag5;
                flag3 = flag4;
                flag1 = flag6;
                if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED == state)
                {
                    flag1 = true;
                    flag2 = true;
                    flag3 = flag4;
                }
            }
        } else
        if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == state && 20489 == i)
        {
            flag3 = true;
            flag2 = flag5;
            flag1 = flag6;
        } else
        if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED == state && 20490 == i)
        {
            flag1 = true;
            flag3 = true;
            flag2 = flag5;
        } else
        {
            flag2 = flag5;
            flag3 = flag4;
            flag1 = flag6;
            if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == state)
            {
                flag2 = flag5;
                flag3 = flag4;
                flag1 = flag6;
                if(20491 == i)
                {
                    flag1 = true;
                    flag2 = true;
                    flag3 = flag4;
                }
            }
        }
        mPrevButton.setEnabled(true);
        mNextButton.setEnabled(true);
        if(flag2)
            mPlayerSeekBar.setEnabled(false);
        else
            mPlayerSeekBar.setEnabled(true);
        if(true)
            if(flag3)
            {
                mPlayPauseButton.setEnabled(false);
                mPlayPauseButton.setBackgroundResource(0x7f020097);
            } else
            {
                mPlayPauseButton.setEnabled(true);
                mPlayPauseButton.setBackgroundResource(0x7f020097);
                if(flag2)
                    mPlayerSeekBar.setEnabled(false);
                else
                    mPlayerSeekBar.setEnabled(true);
            }
        if(!flag1) goto _L4; else goto _L3
_L3:
        if(!flag3) goto _L6; else goto _L5
_L5:
        mPlayPauseButton.setEnabled(false);
        mPlayPauseButton.setBackgroundResource(0x7f02009a);
_L4:
        return;
_L6:
        mPlayPauseButton.setEnabled(true);
        mPlayPauseButton.setBackgroundResource(0x7f02009a);
        if(flag2)
        {
            mPlayerSeekBar.setEnabled(false);
            return;
        } else
        {
            mPlayerSeekBar.setEnabled(true);
            return;
        }
_L2:
        mPlayPauseButton.setBackgroundResource(0x7f02009a);
        if(mPlayerSeekBar != null)
        {
            mPlayerSeekBar.setEnabled(false);
            return;
        }
        if(true) goto _L4; else goto _L7
_L7:
    }

    private void setTextFileEndtime(int i)
    {
        if(i != -1)
        {
            if(i < 3600)
            {
                mPlayingTotalTimeTextView.setText(String.format("%02d:%02d:%02d", new Object[] {
                    Integer.valueOf(i / 3600), Integer.valueOf(i / 60), Integer.valueOf(i % 60)
                }));
            } else
            {
                int j = i / 60;
                mPlayingTotalTimeTextView.setText(String.format("%02d:%02d:%02d", new Object[] {
                    Integer.valueOf(i / 3600), Integer.valueOf(j % 60), Integer.valueOf(i % 60)
                }));
            }
            mPlayingTotalTimeTextView.invalidate();
        }
    }

    private void setTextFilePlayingtime(int i)
    {
        if(mPlayingTimeTextView == null) goto _L2; else goto _L1
_L1:
        if(i >= 3600 || i > mTotalDurationInSecond) goto _L4; else goto _L3
_L3:
        mPlayingTimeTextView.setText(String.format("%02d:%02d:%02d", new Object[] {
            Integer.valueOf(i / 3600), Integer.valueOf(i / 60), Integer.valueOf(i % 60)
        }));
_L6:
        mPlayingTimeTextView.invalidate();
_L2:
        return;
_L4:
        int j = i / 60;
        if(i <= mTotalDurationInSecond)
            mPlayingTimeTextView.setText(String.format("%02d:%02d:%02d", new Object[] {
                Integer.valueOf(i / 3600), Integer.valueOf(j % 60), Integer.valueOf(i % 60)
            }));
        if(true) goto _L6; else goto _L5
_L5:
    }

    private void updateFragmentsBasedOnLockState(boolean flag)
    {
        int i;
        if(flag)
            i = 0;
        else
            i = 4;
        if(!mFilePlayer.isBmlFullView())
            mProgressBarArea.setVisibility(i);
        else
            mProgressBarArea.setVisibility(4);
        mPrevButton.setEnabled(flag);
        mNextButton.setEnabled(flag);
        mPlayPauseButton.setEnabled(flag);
        if(mAppInAppButton != null)
            mAppInAppButton.setEnabled(flag);
        onUpdate(113, Boolean.valueOf(mFilePlayer.isInTrickMode()));
    }

    private void updateTrickSeekBar(int i)
    {
label0:
        {
            if(mProgressBarArea != null)
            {
                if(i != TRICKMODESPEED_NONE)
                    break label0;
                mProgressBarArea.setVisibility(0);
                mListener.onFragEvent(285, null);
            }
            return;
        }
        mProgressBarArea.setVisibility(0);
        mListener.onFragEvent(286, null);
    }

    private void updateTrickSpeed(int i)
    {
label0:
        {
            if(mTrickModeText != null)
            {
                if(i != 1)
                    break label0;
                mTrickModeText.setVisibility(0);
                mTrickModeText.setText("2x");
            }
            return;
        }
        if(i == 2)
        {
            mTrickModeText.setVisibility(0);
            mTrickModeText.setText("10x");
            return;
        } else
        {
            mTrickModeText.setVisibility(8);
            return;
        }
    }

    public void onAttach(Activity activity)
    {
        onAttach(activity);
        try
        {
            mListener = (com.samsung.sec.mtv.ui.common.MtvUiFrag.IMtvFragEventListener)activity;
            return;
        }
        catch(ClassCastException classcastexception)
        {
            throw new ClassCastException((new StringBuilder()).append(activity.toString()).append(" must implement IMtvFragEventListener").toString());
        }
    }

    public void onClick(View view)
    {
        int i;
        int j;
        Object obj;
        obj = mFilePlayer.getPlaybackState();
        i = mFilePlayer.getPlayerCommand();
        j = mFilePlayer.getTrickMode();
        if(!mFilePlayer.isPhoneLocked()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        switch(view.getId())
        {
        default:
            return;

        case 2131361945: 
            if(!mFilePlayer.isInTrickMode())
            {
                obj = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
                StringBuilder stringbuilder = (new StringBuilder()).append("onClick Btn_AppInApp: ");
                if(obj != null)
                    view = (new StringBuilder()).append("State: ").append(((MtvAppPlaybackContext) (obj)).getState().getState()).append(" Command: ").append(((MtvAppPlaybackContext) (obj)).getState().getOp()).toString();
                else
                    view = (new StringBuilder()).append(" mMtvAppPlaybackContext: ").append(obj).toString();
                MtvUtilDebug.Low("MtvUiFilePlayerVidFrag", stringbuilder.append(view).toString());
                if(obj != null && (com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == ((MtvAppPlaybackContext) (obj)).getState().getState() || com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED == ((MtvAppPlaybackContext) (obj)).getState().getState()) && 20480 == ((MtvAppPlaybackContext) (obj)).getState().getOp())
                    i = 1;
                else
                    i = 0;
                if(i != 0)
                {
                    mListener.onFragEvent(236, null);
                    return;
                } else
                {
                    Toast.makeText(getActivity(), 0x7f07020e, 0).show();
                    return;
                }
            } else
            {
                Toast.makeText(getActivity(), 0x7f070308, 0).show();
                return;
            }

        case 2131362039: 
            MtvUtilDebug.Low("MtvUiFilePlayerVidFrag", (new StringBuilder()).append("onClick - VideoPlayerBtnPause: command[").append(i).append("] state[").append(obj).append("]").toString());
            if(j != 0)
            {
                mListener.onFragEvent(284, null);
                return;
            }
            if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == obj)
            {
                mListener.onFragEvent(278, null);
                return;
            }
            if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED == obj)
            {
                mListener.onFragEvent(279, null);
                return;
            }
            break;

        case 2131362014: 
        case 2131362027: 
        case 2131362028: 
            mListener.onFragEvent(221, null);
            return;

        case 2131362038: 
            mListener.onFragEvent(277, null);
            return;

        case 2131362040: 
            mListener.onFragEvent(276, null);
            return;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        onCreate(bundle);
        mFilePlayer = (MtvUiFilePlayer)getActivity();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        mContext = getActivity().getApplicationContext();
        if(MtvFeatures.isMiniModeEnabled())
            mLayoutView = layoutinflater.inflate(0x7f03002c, null);
        else
            mLayoutView = layoutinflater.inflate(0x7f03002b, null);
        mMtvAudMgr = MtvUtilAudioManager.getInstance(mContext);
        mProgressBarArea = (RelativeLayout)mLayoutView.findViewById(0x7f0a00ee);
        mPlayerSeekBar = (SeekBar)mLayoutView.findViewById(0x7f0a00f0);
        mPlayerSeekBar.setOnSeekBarChangeListener(mPlayerSeekBarChangeListener);
        mPlayPauseButton = (ImageButton)mLayoutView.findViewById(0x7f0a00f7);
        mPrevButton = (ImageButton)mLayoutView.findViewById(0x7f0a00f6);
        mNextButton = (ImageButton)mLayoutView.findViewById(0x7f0a00f8);
        mAppInAppButton = (ImageButton)mLayoutView.findViewById(0x7f0a0099);
        mPlayingTimeTextView = (TextView)mLayoutView.findViewById(0x7f0a00f2);
        mPlayingTotalTimeTextView = (TextView)mLayoutView.findViewById(0x7f0a00f3);
        mTrickModeText = (TextView)mLayoutView.findViewById(0x7f0a00f4);
        mPreferences = new MtvPreferences(mContext);
        return mLayoutView;
    }

    public void onDestroy()
    {
        onDestroy();
    }

    public void onDetach()
    {
        if(mIsPopupMenuShowing && mPopupMenu != null)
            mPopupMenu.dismiss();
        onDetach();
    }

    public boolean onLongClick(View view)
    {
        boolean flag;
        int i;
        boolean flag1;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state;
        flag1 = false;
        state = mFilePlayer.getPlaybackState();
        i = mFilePlayer.getPlayerCommand();
        flag = false;
        view.getId();
        JVM INSTR lookupswitch 6: default 84
    //                   2131362014: 94
    //                   2131362027: 94
    //                   2131362028: 94
    //                   2131362038: 116
    //                   2131362039: 252
    //                   2131362040: 116;
           goto _L1 _L2 _L2 _L2 _L3 _L4 _L3
_L1:
        if(flag)
            flag1 = true;
        return flag1;
_L2:
        mMtvAudMgr.volumeMute();
        mListener.onFragEvent(220, null);
        return true;
_L3:
        if(state == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING || state == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED && i == 20491)
        {
            ((ImageButton)mLayoutView.findViewById(0x7f0a00f7)).setBackgroundResource(0x7f02009a);
            ((ImageButton)mLayoutView.findViewById(0x7f0a00f7)).setOnClickListener(this);
            ((ImageButton)mLayoutView.findViewById(0x7f0a00f7)).setOnLongClickListener(this);
            if(0x7f0a00f8 == view.getId())
                mListener.onFragEvent(282, null);
            else
                mListener.onFragEvent(283, null);
            return true;
        }
        flag = true;
        Toast.makeText(getActivity(), 0x7f07029a, 0).show();
          goto _L1
_L4:
        ((ImageButton)mLayoutView.findViewById(0x7f0a00f7)).setBackgroundResource(0x7f020097);
        return true;
    }

    public void onPause()
    {
        onPause();
    }

    public void onResume()
    {
        onResume();
        initializeUI();
        if(MtvFeatures.isHoverEnabled())
            initilizePopupForHoverEvents();
        if(!mFilePlayer.isBmlFullView())
            updateTrickSpeed(mFilePlayer.getTrickModeSpeed());
        boolean flag;
        if(!isLocked)
            flag = true;
        else
            flag = false;
        updateFragmentsBasedOnLockState(flag);
    }

    public void onStart()
    {
        onStart();
    }

    public void onStop()
    {
        onStop();
    }

    public void onUpdate(int i, Object obj)
    {
        int l;
        l = 1;
        MtvUtilDebug.Low("MtvUiFilePlayerVidFrag", (new StringBuilder()).append("onUpdate: what[").append(i).append("]").toString());
        if(!isLocked) goto _L2; else goto _L1
_L1:
        if(i != 112 && i != 120 && i != 126 && i != 114 && i != 406 && i != 238) goto _L4; else goto _L3
_L3:
        MtvUtilDebug.Low("MtvUiFilePlayerVidFrag", (new StringBuilder()).append("This Event what = ").append(i).append(" will served in the locked state").toString());
_L2:
        i;
        JVM INSTR lookupswitch 21: default 288
    //                   106: 288
    //                   107: 288
    //                   108: 288
    //                   112: 327
    //                   113: 381
    //                   114: 537
    //                   116: 572
    //                   117: 628
    //                   118: 764
    //                   119: 788
    //                   120: 830
    //                   121: 694
    //                   122: 844
    //                   123: 868
    //                   124: 879
    //                   126: 546
    //                   237: 886
    //                   238: 959
    //                   406: 471
    //                   407: 395
    //                   408: 555;
           goto _L5 _L5 _L5 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23
_L5:
        onUpdate(i, obj);
        return;
_L4:
        MtvUtilDebug.Low("MtvUiFilePlayerVidFrag", (new StringBuilder()).append("This Event what = ").append(i).append(" will not be served in the locked state").toString());
        return;
_L6:
        if(obj != null)
        {
            boolean flag1;
            if(!((Boolean)obj).booleanValue())
                flag1 = true;
            else
                flag1 = false;
            isLocked = flag1;
            updateFragmentsBasedOnLockState(((Boolean)obj).booleanValue());
        } else
        {
            MtvUtilDebug.Low("MtvUiFilePlayerVidFrag", "UPDATE_COMPONENTS_ON_LOCK : Value passed is null ; can't update ");
        }
        continue; /* Loop/switch isn't completed */
_L7:
        setMainControlByPlayback(((Boolean)obj).booleanValue());
        continue; /* Loop/switch isn't completed */
_L22:
        if(obj != null)
        {
            Bundle bundle = (Bundle)obj;
            if(bundle != null && mFilePlayer.getCurrentFileIndex() == bundle.getInt("fileIndex"))
            {
                l = bundle.getInt("fileUpdateTime");
                int j = l;
                if(l < 0)
                    j = 0;
                setTextFilePlayingtime(j);
                if(mPlayerSeekBar != null)
                    mPlayerSeekBar.setProgress(j);
            }
        }
        continue; /* Loop/switch isn't completed */
_L21:
        MtvUtilDebug.Low("MtvUiFilePlayerVidFrag", (new StringBuilder()).append("SEEK_PROGRESS time at fragment = ").append(((Integer)obj).intValue()).toString());
        if(!mbIsTouching)
        {
            setTextFilePlayingtime(((Integer)obj).intValue());
            mPlayerSeekBar.setProgress(((Integer)obj).intValue());
        }
        continue; /* Loop/switch isn't completed */
_L8:
        setInitialMainControl(114);
        continue; /* Loop/switch isn't completed */
_L18:
        setInitialMainControl(126);
        continue; /* Loop/switch isn't completed */
_L23:
        mPlayerSeekBar.setEnabled(((Boolean)obj).booleanValue());
        continue; /* Loop/switch isn't completed */
_L9:
        ((ImageButton)mLayoutView.findViewById(0x7f0a00f7)).setBackgroundResource(0x7f02009a);
        ((ImageButton)mLayoutView.findViewById(0x7f0a00f7)).setOnClickListener(this);
        ((ImageButton)mLayoutView.findViewById(0x7f0a00f7)).setOnLongClickListener(this);
        continue; /* Loop/switch isn't completed */
_L10:
        if(mProgressBarArea != null)
            if(mProgressBarArea.getVisibility() == 0)
            {
                mProgressBarArea.setVisibility(8);
                mListener.onFragEvent(286, null);
            } else
            {
                mProgressBarArea.setVisibility(0);
                mListener.onFragEvent(285, null);
            }
        continue; /* Loop/switch isn't completed */
_L14:
        if(mProgressBarArea != null)
        {
            int k = MtvUtilAppService.getCurrentOrientation(getActivity().getApplicationContext());
            if(mProgressBarArea.getVisibility() == 0 && k == 0)
                if(mbIsTouching)
                    mListener.onFragEvent(281, Integer.valueOf(-1));
                else
                    mProgressBarArea.setVisibility(8);
        }
        continue; /* Loop/switch isn't completed */
_L11:
        if(mProgressBarArea != null)
            mProgressBarArea.setVisibility(8);
        updateTrickSpeed(0);
        continue; /* Loop/switch isn't completed */
_L12:
        if(mProgressBarArea != null)
            mProgressBarArea.setVisibility(0);
        updateTrickSpeed(mFilePlayer.getTrickModeSpeed());
        mListener.onFragEvent(285, null);
        continue; /* Loop/switch isn't completed */
_L13:
        updateTrickSpeed(((Integer)obj).intValue());
        continue; /* Loop/switch isn't completed */
_L15:
        if(!mFilePlayer.isBmlFullView())
            updateTrickSeekBar(((Integer)obj).intValue());
        continue; /* Loop/switch isn't completed */
_L16:
        mProgressBarArea.setVisibility(0);
        continue; /* Loop/switch isn't completed */
_L17:
        initializeUI();
        continue; /* Loop/switch isn't completed */
_L19:
        boolean flag2 = MtvFeatures.isHoverEnabled();
        boolean flag;
        if(mNextButton != null)
            flag = true;
        else
            flag = false;
        if(mPrevButton == null)
            l = 0;
        if((flag & flag2 & l) != 0)
        {
            mNextButton.setContentDescription(mPreferences.getNextFileInfo());
            mPrevButton.setContentDescription(mPreferences.getPreFileInfo());
        }
        continue; /* Loop/switch isn't completed */
_L20:
        MtvUtilDebug.Low("MtvUiFilePlayerVidFrag", "Entered MTV_UPDATE_FRAG_CMD_MAIN_POPUP_ENABLE");
        if(obj != null)
            if(((Boolean)obj).booleanValue())
                getActivity().findViewById(0x7f0a0099).setVisibility(0);
            else
                getActivity().findViewById(0x7f0a0099).setVisibility(4);
        if(true) goto _L5; else goto _L24
_L24:
    }

    private static final String TAG = "MtvUiFilePlayerVidFrag";
    private static final int TIMEOUT_EXTRA_INTERVAL_VALUE = 1000;
    private static final int TIMEOUT_INTERVAL_VALUE = 5000;
    private int TRICKMODESPEED_NONE;
    private boolean isLocked;
    private ImageButton mAppInAppButton;
    private Context mContext;
    private RelativeLayout mControlLayout;
    private MtvUiFilePlayer mFilePlayer;
    private boolean mIsPopupMenuShowing;
    private View mLayoutView;
    private com.samsung.sec.mtv.ui.common.MtvUiFrag.IMtvFragEventListener mListener;
    private ImageButton mMenuButton;
    private MtvUtilAudioManager mMtvAudMgr;
    private ImageButton mNextButton;
    private ImageButton mPlayPauseButton;
    private SeekBar mPlayerSeekBar;
    private android.widget.SeekBar.OnSeekBarChangeListener mPlayerSeekBarChangeListener = new android.widget.SeekBar.OnSeekBarChangeListener() {

        public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
        {
        }

        public void onStartTrackingTouch(SeekBar seekbar)
        {
            mbIsTouching = true;
            mListener.onFragEvent(281, Integer.valueOf(-1));
        }

        public void onStopTrackingTouch(SeekBar seekbar)
        {
            mbIsTouching = false;
            mListener.onFragEvent(280, Integer.valueOf(seekbar.getProgress()));
            onUpdate(406, Integer.valueOf(seekbar.getProgress()));
            if(MtvUtilAppService.getCurrentOrientation(getActivity().getApplicationContext()) == 1)
                mListener.onFragEvent(281, Integer.valueOf(5000));
        }

        final MtvUiFilePlayerVidFrag this$0;

            
            {
                this$0 = MtvUiFilePlayerVidFrag.this;
                Object();
            }
    }
;
    private TextView mPlayingTimeTextView;
    private TextView mPlayingTotalTimeTextView;
    private PopupMenu mPopupMenu;
    private MtvPreferences mPreferences;
    private ImageButton mPrevButton;
    private RelativeLayout mProgressBarArea;
    private int mTotalDurationInSecond;
    private TextView mTrickModeText;
    private Handler mVideoFragMsgHandler = new Handler() {

        public void handleMessage(Message message)
        {
            MtvUtilDebug.Mid("MtvUiFilePlayerVidFrag", (new StringBuilder()).append("handleMessage : ").append(message.what).toString());
        }

        final MtvUiFilePlayerVidFrag this$0;

            
            {
                this$0 = MtvUiFilePlayerVidFrag.this;
                Handler();
            }
    }
;
    private boolean mbIsTouching;
    private String nextFile;
    private String previousFile;


/*
    static boolean access$002(MtvUiFilePlayerVidFrag mtvuifileplayervidfrag, boolean flag)
    {
        mtvuifileplayervidfrag.mbIsTouching = flag;
        return flag;
    }

*/

}
