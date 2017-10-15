// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.Activity;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.provider.MtvFile;
import com.samsung.sec.mtv.ui.fileplayer.MtvUiFilePlayer;
import com.samsung.sec.mtv.utility.*;
import java.text.SimpleDateFormat;
import java.util.*;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvUiFrag, MtvUiBatteryView

public class MtvUiStatusBarFrag extends MtvUiFrag
    implements android.view.View.OnClickListener
{

    public MtvUiStatusBarFrag()
    {
        mViewStatusBar = null;
        mMainBarLayout = null;
        mRootlayout = null;
        mImageViewSignalLevel = null;
        mImageViewBattery = null;
        mBatteryPercentage = null;
        mImageView5_1Channel = null;
        mTextViewClock = null;
        mCalendar = null;
        mTextViewChannelName = null;
        mTextViewProgramName = null;
        mVolumeButton = null;
        mVolumeMuteButton = null;
        mMenuButton = null;
        mPopupMenu = null;
        mIsPopupMenuShowing = false;
        mRotateButton = null;
        mProgramChannelDetail = "";
        mProgramName = "";
        mChannelName = "";
        mListener = null;
        mMtvPreferences = null;
        mMtvAudMgr = null;
    }

    public MtvUiStatusBarFrag(int i)
    {
        mViewStatusBar = null;
        mMainBarLayout = null;
        mRootlayout = null;
        mImageViewSignalLevel = null;
        mImageViewBattery = null;
        mBatteryPercentage = null;
        mImageView5_1Channel = null;
        mTextViewClock = null;
        mCalendar = null;
        mTextViewChannelName = null;
        mTextViewProgramName = null;
        mVolumeButton = null;
        mVolumeMuteButton = null;
        mMenuButton = null;
        mPopupMenu = null;
        mIsPopupMenuShowing = false;
        mRotateButton = null;
        mProgramChannelDetail = "";
        mProgramName = "";
        mChannelName = "";
        mListener = null;
        mMtvPreferences = null;
        mMtvAudMgr = null;
        fragment_mode = i;
    }

    private int getSignalQuality()
    {
        MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mtvappplaybackcontext != null)
            return mtvappplaybackcontext.getAttribute().getSignalLevel();
        else
            return 0;
    }

    private final CharSequence getSmallTime()
    {
        Object obj;
        if(DateFormat.is24HourFormat(getActivity().getApplicationContext()))
        {
            obj = new SimpleDateFormat("HH:mm");
        } else
        {
            if("en".equals(getResources().getConfiguration().locale.getLanguage()))
                obj = "h:mm a";
            else
                obj = "a h:mm";
            obj = new SimpleDateFormat(((String) (obj)));
        }
        return ((SimpleDateFormat) (obj)).format(mCalendar.getTime());
    }

    private void initializeUI(View view)
    {
        mMainBarLayout = (RelativeLayout)view.findViewById(0x7f0a00e4);
        mRootlayout = (RelativeLayout)view.findViewById(0x7f0a00e3);
        if(mRootlayout != null && getActivity().getResources().getConfiguration().orientation != 1)
            mMainBarLayout.setBackgroundColor(0x7f06000a);
        mImageViewSignalLevel = (ImageView)view.findViewById(0x7f0a00e5);
        mImageViewBattery = (MtvUiBatteryView)view.findViewById(0x7f0a00e9);
        mImageViewBattery.setAlpha(0.8F);
        mBatteryPercentage = (TextView)view.findViewById(0x7f0a00ed);
        mImageView5_1Channel = (ImageView)view.findViewById(0x7f0a00e7);
        mVolumeButton = (ImageButton)view.findViewById(0x7f0a00eb);
        mVolumeMuteButton = (ImageButton)view.findViewById(0x7f0a00ec);
        mMenuButton = (ImageButton)view.findViewById(0x7f0a0008);
        mVolumeButton.setOnClickListener(volumeOnClickListener);
        mVolumeButton.setOnLongClickListener(volumeOnLongClickListener);
        mVolumeMuteButton.setOnClickListener(volumeOnClickListener);
        mVolumeMuteButton.setOnLongClickListener(volumeOnLongClickListener);
        mMenuButton.setOnClickListener(this);
        if(!MtvUtilAudioManager.getInstance(getActivity().getApplicationContext()).isHeadsetConnected())
        {
            mImageView5_1Channel.setVisibility(8);
            mMtvPreferences.setAudio51Enabled(false);
        }
        mTextViewClock = (TextView)view.findViewById(0x7f0a00e8);
        mTextViewChannelName = (TextView)view.findViewById(0x7f0a00e6);
        mTextViewProgramName = (TextView)view.findViewById(0x7f0a00ea);
        onUpdate(100, Integer.valueOf(getSignalQuality()));
        setProgramChannelDetails(mProgramChannelDetail);
        update5_1Channel();
        updateSleepTimer();
        updateBattery();
        updateClock();
        updateBatteryPercentage();
        if(MtvFeatures.isHoverEnabled())
            initilizePopupForHoverEvents();
    }

    private void initilizePopupForHoverEvents()
    {
        if(mTextViewProgramName != null)
        {
            mTextViewProgramName.setHoverPopupType(1);
            mTextViewProgramName.getHoverPopupWindow().setHoverDetectTime(300);
            mTextViewProgramName.getHoverPopupWindow().setPopupGravity(12337);
            mTextViewProgramName.getHoverPopupWindow().setPopupPosOffset(0, -10);
        }
        if(mVolumeButton != null)
        {
            mVolumeButton.setHoverPopupType(1);
            mVolumeButton.getHoverPopupWindow().setHoverDetectTime(300);
            mVolumeButton.getHoverPopupWindow().setPopupGravity(12337);
            mVolumeButton.getHoverPopupWindow().setPopupPosOffset(0, -10);
        }
    }

    private void setProgramChannelDetails(String s)
    {
        Object obj = null;
        String s1 = null;
        if(s != null)
        {
            StringTokenizer stringtokenizer = new StringTokenizer(s, "\n");
            s = obj;
            if(stringtokenizer.hasMoreTokens())
                s = stringtokenizer.nextToken();
            if(stringtokenizer.hasMoreTokens())
                s1 = stringtokenizer.nextToken();
            setStatusBarProgramDetails(s1);
            setStatusBarChannelDetails(s);
        } else
        {
            setStatusBarProgramDetails(null);
            setStatusBarChannelDetails(null);
        }
        update5_1Channel();
    }

    private void setStatusBarChannelDetails(String s)
    {
        if(s != null)
            mChannelName = s;
        else
            mChannelName = "";
        if(mTextViewChannelName != null)
            mTextViewChannelName.setText(mChannelName);
    }

    private void setStatusBarProgramDetails(String s)
    {
        if(s == null) goto _L2; else goto _L1
_L1:
        mProgramName = s;
        if(MtvFeatures.isHoverEnabled())
            mTextViewProgramName.setContentDescription(mProgramName);
_L4:
        if(mTextViewProgramName != null)
            mTextViewProgramName.setText(mProgramName);
        return;
_L2:
        mProgramName = "";
        if(MtvFeatures.isHoverEnabled())
            mTextViewProgramName.setContentDescription(getResources().getString(0x7f07028a));
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void toggleVolumeButton()
    {
        if(mFilePlayer == null) goto _L2; else goto _L1
_L1:
        MtvUiFilePlayer mtvuifileplayer = mFilePlayer;
        if(MtvUiFilePlayer.mMtvFile.getFileFormat() != 2) goto _L2; else goto _L3
_L3:
        if(mVolumeMuteButton != null)
            mVolumeMuteButton.setVisibility(8);
        if(mVolumeButton != null)
            mVolumeButton.setVisibility(8);
_L5:
        return;
_L2:
        if(mMtvAudMgr.getVolumeLevel() != 0)
            break; /* Loop/switch isn't completed */
        if(mVolumeMuteButton != null)
            mVolumeMuteButton.setVisibility(0);
        if(mVolumeButton != null)
            mVolumeButton.setVisibility(8);
_L6:
        if(MtvFeatures.isHoverEnabled() && mVolumeButton != null)
        {
            mVolumeButton.setContentDescription((new StringBuilder()).append(getResources().getString(0x7f070312)).append(" ").append(mMtvAudMgr.getVolumeLevel()).toString());
            return;
        }
        if(true) goto _L5; else goto _L4
_L4:
        if(mVolumeMuteButton != null)
            mVolumeMuteButton.setVisibility(8);
        if(mVolumeButton != null)
            mVolumeButton.setVisibility(0);
          goto _L6
        if(true) goto _L5; else goto _L7
_L7:
    }

    private void update5_1Channel()
    {
        if(mImageView5_1Channel != null)
        {
            ImageView imageview = mImageView5_1Channel;
            int i;
            if(mMtvPreferences.isAudio51Enabled())
                i = 0;
            else
                i = 8;
            imageview.setVisibility(i);
        }
        mListener = (MtvUiFrag.IMtvFragEventListener)getActivity();
        if(1 == fragment_mode && mListener != null)
            mListener.onFragEvent(208, null);
    }

    private void updateBattery()
    {
        updateBatteryInfo();
    }

    private void updateBatteryInfo()
    {
        boolean flag = true;
        Object obj = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        obj = getActivity().registerReceiver(null, ((IntentFilter) (obj)));
        if(obj != null)
        {
            int i;
            if(((Intent) (obj)).getIntExtra("status", 1) != 2)
                flag = false;
            MtvBatteryInfo.setBatteryCharging(flag);
            i = ((Intent) (obj)).getIntExtra("scale", 100);
            MtvBatteryInfo.updateBatteryLevel(((Intent) (obj)).getIntExtra("level", i), i);
            return;
        } else
        {
            MtvUtilDebug.Error("MtvUiStatusBarFrag", "battery_change_intent not broadcasted not able to update :(");
            return;
        }
    }

    private void updateBatteryPercentage()
    {
        int i = 0;
        if(mBatteryPercentage != null)
        {
            mBatteryPercentage.setText((new StringBuilder()).append(MtvBatteryInfo.getBatteryLevel()).append("%").toString());
            TextView textview = mBatteryPercentage;
            if(android.provider.Settings.System.getInt(getActivity().getApplicationContext().getContentResolver(), "display_battery_percentage", 0) != 1)
                i = 8;
            textview.setVisibility(i);
        }
    }

    private void updateClock()
    {
        mCalendar.setTimeInMillis(System.currentTimeMillis());
        if(mTextViewClock != null)
            mTextViewClock.setText(getSmallTime());
    }

    private void updateComponentsOnLock(boolean flag)
    {
        mMenuButton.setEnabled(flag);
        mVolumeButton.setEnabled(flag);
        mVolumeMuteButton.setEnabled(flag);
    }

    private void updateSignalLevel(int i)
    {
label0:
        {
            int j = i;
            if(i < 0)
                j = 0;
            if(mImageViewSignalLevel != null)
            {
                mImageViewSignalLevel.setBackgroundResource(STATUS_BAR_RSRC_SIGNAL_LEVEL[j]);
                if(fragment_mode != 0)
                    break label0;
                mImageViewSignalLevel.setVisibility(0);
            }
            return;
        }
        mImageViewSignalLevel.setVisibility(8);
    }

    private void updateSleepTimer()
    {
        if(mMtvPreferences.getAutoPowerOffTime() > 0)
            return;
        else
            return;
    }

    public void closePopupMenu()
    {
        if(mPopupMenu != null)
            mPopupMenu.dismiss();
        getActivity().closeOptionsMenu();
        mIsPopupMenuShowing = false;
    }

    public void onAttach(Activity activity)
    {
        MtvUtilDebug.Low("TAG", "onAttach");
        super.onAttach(activity);
    }

    public void onClick(View view)
    {
        switch(view.getId())
        {
        default:
            return;

        case 2131361800: 
            break;
        }
        if(mListener != null)
            mListener.onFragEvent(209, new Boolean(true));
        showPopupMenu();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUtilDebug.Low("MtvUiStatusBarFrag", "onCreate");
        if(fragment_mode != 0)
            mFilePlayer = (MtvUiFilePlayer)getActivity();
        setRetainInstance(true);
        mCalendar = Calendar.getInstance(TimeZone.getDefault());
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        MtvUtilDebug.Low("MtvUiStatusBarFrag", "onCreateView");
        mContext = getActivity().getApplicationContext();
        mMtvAudMgr = MtvUtilAudioManager.getInstance(mContext);
        mMtvPreferences = new MtvPreferences(mContext);
        mViewStatusBar = layoutinflater.inflate(0x7f03002a, viewgroup, false);
        mViewStatusBar.setOnTouchListener(new android.view.View.OnTouchListener() {

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if(mListener != null)
                    mListener.onFragEvent(209, new Boolean(true));
                return true;
            }

            final MtvUiStatusBarFrag this$0;

            
            {
                this$0 = MtvUiStatusBarFrag.this;
                super();
            }
        }
);
        initializeUI(mViewStatusBar);
        toggleVolumeButton();
        return mViewStatusBar;
    }

    public void onDestroy()
    {
        MtvUtilDebug.Low("MtvUiStatusBarFrag", "onDestroy");
        super.onDestroy();
    }

    public void onDestroyView()
    {
        MtvUtilDebug.Low("MtvUiStatusBarFrag", "onDestroyView");
        mMtvPreferences = null;
        super.onDestroyView();
    }

    public void onDetach()
    {
        MtvUtilDebug.Low("MtvUiStatusBarFrag", "onDetach");
        if(mIsPopupMenuShowing)
            mPopupMenu.dismiss();
        super.onDetach();
    }

    public void onResume()
    {
        super.onResume();
        MtvUtilDebug.Low("MtvUiStatusBarFrag", "onResume");
        updateSleepTimer();
        updateBatteryPercentage();
        update5_1Channel();
        toggleVolumeButton();
    }

    public void onUpdate(int i, Object obj)
    {
        MtvUtilDebug.Low("MtvUiStatusBarFrag", (new StringBuilder()).append("onUpdate : what = ").append(i).toString());
        i;
        JVM INSTR lookupswitch 13: default 140
    //                   100: 165
    //                   101: 210
    //                   102: 268
    //                   103: 302
    //                   104: 307
    //                   105: 312
    //                   106: 160
    //                   107: 160
    //                   108: 160
    //                   112: 141
    //                   127: 317
    //                   129: 350
    //                   137: 355;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L8 _L8 _L9 _L10 _L11 _L12
_L6:
        break MISSING_BLOCK_LABEL_307;
_L7:
        break MISSING_BLOCK_LABEL_312;
_L10:
        break MISSING_BLOCK_LABEL_317;
_L11:
        break MISSING_BLOCK_LABEL_350;
_L1:
        break; /* Loop/switch isn't completed */
_L12:
        break MISSING_BLOCK_LABEL_355;
_L13:
        return;
_L9:
        if(obj instanceof Boolean)
        {
            updateComponentsOnLock(((Boolean)obj).booleanValue());
            return;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        toggleVolumeButton();
        return;
_L2:
        i = 0;
        if(obj != null)
            i = ((Integer)obj).intValue();
        MtvUtilDebug.Low("MtvUiStatusBarFrag", (new StringBuilder()).append("onUpdate: UPDATE_ANNOUNCE_SIGNAL : level= ").append(i).toString());
        updateSignalLevel(i);
        return;
_L3:
        if(obj != null)
            mProgramChannelDetail = (String)obj;
        else
            mProgramChannelDetail = "";
        MtvUtilDebug.Low("MtvUiStatusBarFrag", (new StringBuilder()).append("onUpdate: UPDATE_NOW_PROGRAM : mProgramChannelDetail= ").append(mProgramChannelDetail).toString());
        setProgramChannelDetails(mProgramChannelDetail);
        return;
_L4:
        if(getActivity().getResources().getConfiguration().orientation == 2)
        {
            updateBattery();
            updateBatteryPercentage();
            updateSignalLevel(getSignalQuality());
            return;
        }
        if(true) goto _L13; else goto _L5
_L5:
        updateClock();
        return;
        update5_1Channel();
        return;
        updateSleepTimer();
        return;
        i = 0;
        if(obj != null)
            i = ((Integer)obj).intValue();
        if(i == 2)
            mImageView5_1Channel.setVisibility(8);
        toggleVolumeButton();
        return;
        showPopupMenu();
        return;
        closePopupMenu();
        return;
    }

    public void showPopupMenu()
    {
        MtvUtilDebug.Low("MtvUiStatusBarFrag", "showPopupMenu()");
        mPopupMenu = new PopupMenu(getActivity(), mMenuButton);
        mPopupMenu.setOnMenuItemClickListener(new android.widget.PopupMenu.OnMenuItemClickListener() {

            public boolean onMenuItemClick(MenuItem menuitem)
            {
                if(getActivity() != null)
                {
                    getActivity().onMenuItemSelected(0, menuitem);
                    return false;
                } else
                {
                    MtvUtilDebug.High("MtvUiStatusBarFrag", "Activity NULL");
                    return false;
                }
            }

            final MtvUiStatusBarFrag this$0;

            
            {
                this$0 = MtvUiStatusBarFrag.this;
                super();
            }
        }
);
        mPopupMenu.setOnDismissListener(new android.widget.PopupMenu.OnDismissListener() {

            public void onDismiss(PopupMenu popupmenu)
            {
                mIsPopupMenuShowing = false;
                if(getActivity() instanceof MtvUiFrag.IMtvFragEventListener)
                    ((MtvUiFrag.IMtvFragEventListener)getActivity()).onFragEvent(209, new Boolean(false));
            }

            final MtvUiStatusBarFrag this$0;

            
            {
                this$0 = MtvUiStatusBarFrag.this;
                super();
            }
        }
);
        if(mIsPopupMenuShowing)
            mPopupMenu.dismiss();
        mPopupMenu.getMenu().clear();
        getActivity().onCreatePanelMenu(0, mPopupMenu.getMenu());
        getActivity().onPreparePanel(0, null, mPopupMenu.getMenu());
        mIsPopupMenuShowing = true;
        mPopupMenu.show();
    }

    public static final int STATUS_BAR_MODE_LIVE = 0;
    public static final int STATUS_BAR_MODE_LOCAL = 1;
    private static final int STATUS_BAR_RSRC_SIGNAL_LEVEL[] = {
        0x7f0200c4, 0x7f0200c5, 0x7f0200c6, 0x7f0200c7, 0x7f0200c8
    };
    private static final String TAG = "MtvUiStatusBarFrag";
    private int fragment_mode;
    private TextView mBatteryPercentage;
    private Calendar mCalendar;
    private String mChannelName;
    private Context mContext;
    private MtvUiFilePlayer mFilePlayer;
    private ImageView mImageView5_1Channel;
    private MtvUiBatteryView mImageViewBattery;
    private ImageView mImageViewSignalLevel;
    private boolean mIsPopupMenuShowing;
    private MtvUiFrag.IMtvFragEventListener mListener;
    private RelativeLayout mMainBarLayout;
    private ImageButton mMenuButton;
    private MtvUtilAudioManager mMtvAudMgr;
    private MtvPreferences mMtvPreferences;
    private PopupMenu mPopupMenu;
    private String mProgramChannelDetail;
    private String mProgramName;
    private RelativeLayout mRootlayout;
    private ImageButton mRotateButton;
    private TextView mTextViewChannelName;
    private TextView mTextViewClock;
    private TextView mTextViewProgramName;
    private View mViewStatusBar;
    private ImageButton mVolumeButton;
    private ImageButton mVolumeMuteButton;
    android.view.View.OnClickListener volumeOnClickListener = new android.view.View.OnClickListener() {

        public void onClick(View view)
        {
            MtvUtilDebug.Low("MtvUiStatusBarFrag", "Mute Volume onClick:...");
            toggleVolumeButton();
            mListener.onFragEvent(214, null);
        }

        final MtvUiStatusBarFrag this$0;

            
            {
                this$0 = MtvUiStatusBarFrag.this;
                super();
            }
    }
;
    android.view.View.OnLongClickListener volumeOnLongClickListener = new android.view.View.OnLongClickListener() {

        public boolean onLongClick(View view)
        {
            mMtvAudMgr.volumeMute();
            toggleVolumeButton();
            mListener.onFragEvent(220, null);
            return true;
        }

        final MtvUiStatusBarFrag this$0;

            
            {
                this$0 = MtvUiStatusBarFrag.this;
                super();
            }
    }
;






/*
    static boolean access$302(MtvUiStatusBarFrag mtvuistatusbarfrag, boolean flag)
    {
        mtvuistatusbarfrag.mIsPopupMenuShowing = flag;
        return flag;
    }

*/
}
