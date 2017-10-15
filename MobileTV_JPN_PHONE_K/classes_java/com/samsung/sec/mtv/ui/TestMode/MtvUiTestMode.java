// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.TestMode;

import android.app.Activity;
import android.app.AlertDialog;
import android.broadcast.IMtvOneSegAudioControl;
import android.broadcast.IMtvOneSegVideoControl;
import android.broadcast.helper.MtvURI;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.MtvOneSegSignal;
import android.content.*;
import android.media.AudioManager;
import android.net.Uri;
import android.os.*;
import android.telephony.TelephonyManager;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.app.player.IMtvAppPlayerOneSeg;
import com.samsung.sec.mtv.app.player.MtvAppPlayerOneSeg;
import com.samsung.sec.mtv.ui.configration.MtvUiConfigration;
import com.samsung.sec.mtv.utility.MtvUtilConfigSetting;
import com.samsung.sec.mtv.utility.MtvUtilConfigSettingControl;
import java.io.File;
import java.util.*;

public class MtvUiTestMode extends Activity
    implements android.widget.AdapterView.OnItemClickListener, IMtvAppProgramAttributeListener, IMtvAppPlaybackStateListener
{
    public class ChannelAdapter extends ArrayAdapter
    {

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            viewgroup = view;
            if(view == null)
                viewgroup = mInflater.inflate(mLayoutId, null);
            i = ((Integer)mContainer.get(i)).intValue();
            viewgroup.setTag(Integer.valueOf(i));
            ((TextView)viewgroup.findViewById(0x7f0a011a)).setText((new StringBuilder()).append("Channel ").append(i).toString());
            return viewgroup;
        }

        private final List mContainer;
        private final LayoutInflater mInflater;
        private final int mLayoutId;
        final MtvUiTestMode this$0;

        public ChannelAdapter(Context context, int i, List list)
        {
            this$0 = MtvUiTestMode.this;
            ArrayAdapter(context, i, list);
            mContainer = list;
            mLayoutId = i;
            mInflater = (LayoutInflater)getSystemService("layout_inflater");
        }
    }

    private final class RunnableRemoveAlertDialog
        implements Runnable
    {

        public void run()
        {
            if(mScanDialog.isShowing())
            {
                mScanDialog.cancel();
                mScanDialog.dismiss();
            }
        }

        final MtvUiTestMode this$0;

        private RunnableRemoveAlertDialog()
        {
            this$0 = MtvUiTestMode.this;
            Object();
        }

    }

    private final class RunnableUpdateAlertDialogText
        implements Runnable
    {

        public void run()
        {
            if(mScanDialog.isShowing())
                mScanDialog.setMessage(mString);
        }

        private final String mString;
        final MtvUiTestMode this$0;

        public RunnableUpdateAlertDialogText(String s)
        {
            this$0 = MtvUiTestMode.this;
            Object();
            mString = s;
        }
    }

    private static final class RunnableUpdateText
        implements Runnable
    {

        public void run()
        {
            mView.setText(mString);
        }

        private final String mString;
        private final TextView mView;

        public RunnableUpdateText(TextView textview, String s)
        {
            mView = textview;
            mString = s;
        }
    }


    public MtvUiTestMode()
    {
        mVideoSurfaceView = null;
        mChannelInfoTextView = null;
        mChannelScanInfoTextView = null;
        mSignalInfoTextView = null;
        mSignalDetailsTextView = null;
        mSignalParamsLayout = null;
        mTestmodeChannelListView = null;
        mTestmodeChannelListAdapter = null;
        mScanDialog = null;
        mStartScanTimeMsecs = 0L;
        mStopScanTimeMsecs = 0L;
        mMaxChannelScanTimeMsecs = 0L;
        mMinChannelScanTimeMsecs = 0L;
        mChannelScanStartedMSecs = 0L;
        mLastScanTimeMsecs = 0L;
        mFirstDetectedChannelNumber = 0;
        mNumDetectedChannels = 0;
        mStartChannelSwapTimeMsecs = 0L;
        mStopChannelSwapTimeMsecs = 0L;
        mLastChannelSwapTime = 0L;
        bIsCreateComplete = false;
        bFromFactoryTest = false;
        bFactoryTestSuccess = false;
        mSavedVolumeLevel = 0;
        mChannelNumber = 27;
        mDebugSetting = null;
        mMtvPlayerOneSeg = null;
        mMtvAppPlaybackContext = null;
        haveToFinish = false;
        mMtvAppPlaybackContextManager = null;
        mHandler = new Handler() {

            public void handleMessage(Message message)
            {
                if(message.what != 0) goto _L2; else goto _L1
_L1:
                if(!MtvUiTestMode.mShowSignalState) goto _L4; else goto _L3
_L3:
                message = getSignalValue();
                MtvUtilDebug.Mid("MtvUiTestMode", (new StringBuilder()).append("handleMessage getSignalValue ").append(message).toString());
                View view = findViewById(0x7f0a004b);
                int i;
                if(view != null && message != null)
                {
                    if((long)message.getRSSI() >= -88L)
                    {
                        if(mSignalParamsLayout != null)
                            mSignalParamsLayout.setBackgroundColor(0xff0000ff);
                        view.setBackgroundColor(0xff0000ff);
                    } else
                    {
                        if(mSignalParamsLayout != null)
                            mSignalParamsLayout.setBackgroundColor(0xffff0000);
                        view.setBackgroundColor(0xffff0000);
                    }
                    i = message.getSignalQuality();
                    mSignalDetailsTextView.setText(getSignalValue(message));
                } else
                {
                    if(view != null)
                        view.setBackgroundColor(0xff444444);
                    i = 0;
                    mSignalDetailsTextView.setText(" ");
                }
                if(mSignalInfoTextView != null)
                    mSignalInfoTextView.setText((new StringBuilder()).append("Signal[0.. 4]=").append(i).toString());
_L6:
                return;
_L4:
                if(mSignalDetailsTextView != null)
                {
                    mSignalDetailsTextView.setText(" ");
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L2:
                if(message.what == 1)
                {
                    message = new MtvURI(4, mFirstDetectedChannelNumber);
                    invalidate();
                    mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getLiveTV();
                    mMtvAppPlaybackContext.getState().registerListener(MtvUiTestMode.this);
                    runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, (new StringBuilder()).append("Channel [").append(mChannelNumber).append("]").append(" searching started... SwapTime(msecs) [").append(mLastChannelSwapTime).append("]").toString()));
                    Date date = new Date();
                    mStartChannelSwapTimeMsecs = date.getTime();
                    if(mMtvPlayerOneSeg != null)
                    {
                        mMtvPlayerOneSeg.open(MtvAppPlaybackContextManager.getInstance().getLiveTV(), message);
                        return;
                    }
                }
                if(true) goto _L6; else goto _L5
_L5:
            }

            final MtvUiTestMode this$0;

            
            {
                this$0 = MtvUiTestMode.this;
                Handler();
            }
        }
;
    }

    private void cancelUpdateChannelList()
    {
        MtvUtilDebug.Low("MtvUiTestMode", "Start : TEST MODE cancelUpdateChannelList");
        MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mtvappplaybackcontext != null && mMtvPlayerOneSeg != null)
        {
            if(mMtvPlayerOneSeg.cancelScanChannels(mtvappplaybackcontext))
            {
                MtvUtilDebug.Low("MtvUiTestMode", "SUCCESS : TEST MODE cancelUpdateChannelList");
                return;
            } else
            {
                MtvUtilDebug.High("MtvUiTestMode", "FAILURE FROM FRAMEWORK: TEST MODE cancelUpdateChannelList");
                return;
            }
        } else
        {
            MtvUtilDebug.High("MtvUiTestMode", "FAILURE : TEST MODE cancelUpdateChannelList");
            return;
        }
    }

    private void changeLayout(boolean flag)
    {
        mCurrentLayoutState = flag;
        if(flag)
        {
            setRequestedOrientation(0);
            setContentView(0x7f03000a);
            getWindow().addFlags(1024);
            mChannelInfoTextView = (TextView)findViewById(0x7f0a004c);
            mChannelScanInfoTextView = (TextView)findViewById(0x7f0a004d);
            mChannelScanInfoTextView.setText((new StringBuilder()).append("Last Scan Time (msecs) [ ").append(mLastScanTimeMsecs).append(" ]    Num of Ch. found [").append(mNumDetectedChannels).append("]").toString());
            mSignalInfoTextView = (TextView)findViewById(0x7f0a0049);
            mSignalDetailsTextView = (TextView)findViewById(0x7f0a0048);
            mSignalParamsLayout = (LinearLayout)findViewById(0x7f0a0047);
            mVideoSurfaceView = (SurfaceView)findViewById(0x7f0a004a);
            mTestmodeChannelListView = null;
        } else
        {
            setRequestedOrientation(1);
            setContentView(0x7f030009);
            ArrayList arraylist = new ArrayList();
            mChannelInfoTextView = (TextView)findViewById(0x7f0a004c);
            mChannelScanInfoTextView = (TextView)findViewById(0x7f0a004d);
            mChannelScanInfoTextView.setText((new StringBuilder()).append("Last Scan Time (msecs) [ ").append(mLastScanTimeMsecs).append(" ]     Num of Ch. found [").append(mNumDetectedChannels).append("]").toString());
            mSignalInfoTextView = (TextView)findViewById(0x7f0a0049);
            mSignalDetailsTextView = (TextView)findViewById(0x7f0a0048);
            mSignalParamsLayout = (LinearLayout)findViewById(0x7f0a0047);
            mVideoSurfaceView = (SurfaceView)findViewById(0x7f0a004a);
            mTestmodeChannelListView = (ListView)findViewById(0x7f0a004e);
            mTestmodeChannelListAdapter = new ChannelAdapter(this, 0x7f030030, arraylist);
            for(int i = 13; i <= 52; i++)
                arraylist.add(Integer.valueOf(i));

            mTestmodeChannelListView.setOnItemClickListener(this);
            mTestmodeChannelListView.setAdapter(mTestmodeChannelListAdapter);
            mTestmodeChannelListView.setSelection(14);
            showSignal(mShowSignalState);
        }
        runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, (new StringBuilder()).append("Channel[").append(mChannelNumber).append("]  SwapTime(msecs) [").append(mLastChannelSwapTime).append("]").toString()));
    }

    private void createCancelScanProgressDialog(String s, String s1, CharSequence charsequence)
    {
        mScanDialog = (new android.app.AlertDialog.Builder(this)).create();
        mScanDialog.setTitle(s);
        mScanDialog.setMessage(s1);
        mScanDialog.setCancelable(false);
        mScanDialog.setButton(-1, charsequence, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                cancelUpdateChannelList();
            }

            final MtvUiTestMode this$0;

            
            {
                this$0 = MtvUiTestMode.this;
                Object();
            }
        }
);
        mScanDialog.setCanceledOnTouchOutside(false);
        mScanDialog.show();
    }

    private int getScanProgessPercentage()
    {
        int i = 0;
        boolean flag = false;
        if(mMtvAppPlaybackContext == null || mMtvAppPlaybackContext.getType() != com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.SCANNER)
        {
            MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
            if(mtvappplaybackcontext != null && mtvappplaybackcontext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.SCANNER)
                mMtvAppPlaybackContext = mtvappplaybackcontext;
        }
        if(mMtvAppPlaybackContext != null)
        {
            i = mMtvAppPlaybackContext.getAttribute().getLastScannedChannel();
            MtvUtilDebug.Low("MtvUiTestMode", (new StringBuilder()).append("pg*** mMtvAppPlaybackContext  ").append(mMtvAppPlaybackContext.getType()).toString());
        }
        int j = ((flag) ? 1 : 0);
        if(i >= 13)
        {
            j = ((flag) ? 1 : 0);
            if(i <= 52)
            {
                j = ((flag) ? 1 : 0);
                if(40 > 0)
                {
                    MtvUtilDebug.Low("MtvUiTestMode", (new StringBuilder()).append("pg*** % ***    ").append(i).toString());
                    j = ((i - 12) * 100) / 40;
                }
            }
        }
        MtvUtilDebug.Low("MtvUiTestMode", (new StringBuilder()).append("pg*** % ***    ").append(j).append("  ").append(i).toString());
        return j;
    }

    private MtvOneSegSignal getSignalValue()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getSignalStatistics();
        else
            return null;
    }

    private String getSignalValue(MtvOneSegSignal mtvonesegsignal)
    {
        return "CN[".concat(Long.toString(mtvonesegsignal.getCN())).concat("] RSSI[").concat(Long.toString(mtvonesegsignal.getRSSI())).concat("] BER[").concat(Long.toString(mtvonesegsignal.getBER())).concat("]");
    }

    private int getVolumeLevel()
    {
        AudioManager audiomanager = (AudioManager)getApplicationContext().getSystemService("audio");
        if(audiomanager != null)
        {
            int i = audiomanager.getStreamVolume(3);
            MtvUtilDebug.Low("MtvUiTestMode", (new StringBuilder()).append("getVolumeLevel() : volume= ").append(i).toString());
            return i;
        } else
        {
            MtvUtilDebug.High("MtvUiTestMode", "Error in retrieving Volume Level !");
            return 0;
        }
    }

    private void invalidate()
    {
        View view = findViewById(0x7f0a004b);
        if(view != null)
            view.setBackgroundColor(0xff444444);
        runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, ""));
        mSignalInfoTextView.setText("");
        mSignalDetailsTextView.setText("");
        mVideoSurfaceView.setVisibility(4);
        mVideoSurfaceView.setVisibility(0);
    }

    private void releaseMtvPlayer()
    {
        bIsCreateComplete = false;
        if(mMtvAppPlaybackContext != null)
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext != null)
        {
            MtvAppPlaybackContextManager.getInstance().reset();
            mMtvPlayerOneSeg = null;
            mMtvAppPlaybackContext = null;
        }
    }

    private void setVolumeLevel(int i)
    {
        int j = i;
        if(i <= 0)
            j = 0;
        AudioManager audiomanager = (AudioManager)getApplicationContext().getSystemService("audio");
        if(audiomanager != null)
        {
            MtvUtilDebug.Low("MtvUiTestMode", (new StringBuilder()).append("setVolumeLevel() : volume= ").append(j).toString());
            audiomanager.setStreamVolume(3, j, 0);
            return;
        } else
        {
            MtvUtilDebug.High("MtvUiTestMode", "Error in setting Stram Volume !");
            return;
        }
    }

    private void showConfigrationSettings()
    {
        Intent intent = new Intent();
        intent.setClass(this, com/samsung/sec/mtv/ui/configration/MtvUiConfigration);
        MtvUtilDebug.Low("MtvUiTestMode", "Start Activity - MtvUiConfigration");
        startActivity(intent);
    }

    private void showSignal(boolean flag)
    {
        mHandler.sendEmptyMessage(0);
    }

    private void stopOneSegPlayer()
    {
    }

    private void updateChannelList()
    {
        MtvUtilDebug.Low("MtvUiTestMode", "Start : TEST MODE updateChannelList");
        MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getScanner();
        createCancelScanProgressDialog("Scan Progress", "Completion Status: 0%", "Cancel");
        if(mtvappplaybackcontext != null && mMtvPlayerOneSeg != null)
        {
            mtvappplaybackcontext.getState().registerListener(this);
            mtvappplaybackcontext.getAttribute().registerListener(this);
            mStartScanTimeMsecs = (new Date()).getTime();
            mMtvPlayerOneSeg.scanChannels(mtvappplaybackcontext);
            return;
        } else
        {
            MtvUtilDebug.Low("MtvUiTestMode", "FAILURE : TEST MODE updateChannelList ");
            return;
        }
    }

    public boolean checkIsCalling()
    {
        int i = ((TelephonyManager)getSystemService("phone")).getCallState();
        MtvUtilDebug.Low("MtvUiTestMode", (new StringBuilder()).append("checkIsCalling() - tm.getCallState(): ").append(i).toString());
        if(i == 2 || i == 1)
        {
            MtvUtilDebug.Low("MtvUiTestMode", "checkIsCalling() - in call ");
            return true;
        } else
        {
            return false;
        }
    }

    public void onBackPressed()
    {
        MtvUtilDebug.Low("MtvUiTestMode", "onBackPressed");
        if(bFromFactoryTest)
            if(bFactoryTestSuccess)
                setResult(-1);
            else
                setResult(0);
        MtvUtilDebug.Mid("MtvUiTestMode", (new StringBuilder()).append("bFactoryTestSuccess -").append(bFactoryTestSuccess).append(" bFromFactoryTest - ").append(bFromFactoryTest).toString());
        if(bFromFactoryTest)
            setVolumeLevel(mSavedVolumeLevel);
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext != null)
            mMtvAppPlaybackContext.getState().registerListener(this);
        if(mMtvAppPlaybackContext == null || mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE || haveToFinish)
            break MISSING_BLOCK_LABEL_262;
        MtvUtilDebug.Mid("MtvUiTestMode", (new StringBuilder()).append("Exiting - OneSeg already initialized so deleting OneSeg and waiting till delete callback  ").append(mMtvAppPlaybackContext.getState().getState()).append("  ").append(mMtvAppPlaybackContext.getState().getOp()).toString());
        mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        if(mMtvAppPlaybackContext == null || mMtvAppPlaybackContext.getState().getOp() != 20495) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvUiTestMode", "cannot issue delete as already one delete operation is going on...");
_L4:
        return;
_L2:
        if(mMtvPlayerOneSeg == null) goto _L4; else goto _L3
_L3:
        mMtvPlayerOneSeg.delete(mMtvAppPlaybackContext);
        return;
        if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getOp() == 20481)
        {
            MtvUtilDebug.Low("MtvUiTestMode", "Create in Progress..Cannot finish...");
            haveToFinish = true;
            return;
        } else
        {
            MtvUtilDebug.Low("MtvUiTestMode", "finish()-ed");
            finish();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getApplicationContext().startService(new Intent("com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"));
        changeLayout(mCurrentLayoutState);
        mMtvAppPlaybackContextManager = MtvAppPlaybackContextManager.getInstance();
        mDebugSetting = MtvUtilDebug.getDebugInstance();
        mDebugSetting.loadDbgInfoFromFile();
        MtvUtilDebug.Low("MtvUiTestMode", "onCreate");
        bFromFactoryTest = getIntent().getBooleanExtra("fromFactoryTest", false);
        bFactoryTestSuccess = false;
        mConfigSettingControl = new MtvUtilConfigSettingControl();
        mConfigSetting = mConfigSettingControl.getConfigFromFile();
        mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getLiveTV();
        mMtvAppPlaybackContext.getState().registerListener(this);
        if(bundle == null && mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE)
        {
            getApplicationContext().startService(new Intent("com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"));
            bIsCreateComplete = false;
            boolean flag = mMtvPlayerOneSeg.create(mMtvAppPlaybackContext, getApplicationContext(), -1);
            MtvUtilDebug.Low("MtvUiTestMode", (new StringBuilder()).append("onCreate first create : ").append(flag).toString());
            if(!flag)
            {
                MtvAppPlayerOneSeg.getInstance().screwupCleanup();
                boolean flag1 = mMtvPlayerOneSeg.create(mMtvAppPlaybackContext, getApplicationContext(), -1);
                MtvUtilDebug.Low("MtvUiTestMode", (new StringBuilder()).append("onCreate second create : ").append(flag1).toString());
            }
        } else
        {
            bIsCreateComplete = true;
            mMtvAppPlaybackContext.getComponents().getVideo().enable();
            if(mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface() != null)
                mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface().registerSurface(mVideoSurfaceView);
            mMtvAppPlaybackContext.getAttribute().registerListener(this);
        }
        if(bFromFactoryTest)
        {
            mSavedVolumeLevel = getVolumeLevel();
            setVolumeLevel(15);
        }
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
        if(!(new File("/efs/imei/.nvdevicekey.info")).exists())
            MtvUtilDebug.High("MtvUiTestMode", "Cannot record on SD CARD, Device Key is not present..!!");
    }

    protected void onDestroy()
    {
        MtvUtilDebug.Low("MtvUiTestMode", "onDestroy");
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        mChannelNumber = ((Integer)view.getTag()).intValue();
        MtvUtilDebug.Low("MtvUiTestMode", (new StringBuilder()).append("onItemClick pos=").append(i).append(", channel=").append(mChannelNumber).toString());
        adapterview = new MtvURI(4, mChannelNumber);
        invalidate();
        runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, (new StringBuilder()).append("Channel [").append(mChannelNumber).append("]").append(" searching started... SwapTime(msecs) [").append(mLastChannelSwapTime).append("]").toString()));
        mStartChannelSwapTimeMsecs = (new Date()).getTime();
        if(mMtvPlayerOneSeg != null)
            mMtvPlayerOneSeg.open(MtvAppPlaybackContextManager.getInstance().getLiveTV(), adapterview);
    }

    public boolean onMenuItemSelected(int i, MenuItem menuitem)
    {
        MtvUtilDebug.Mid("MtvUiTestMode", (new StringBuilder()).append("onMenuItemSelected : ").append(menuitem.getItemId()).toString());
        menuitem.getItemId();
        JVM INSTR tableswitch 0 6: default 80
    //                   0 87
    //                   1 94
    //                   2 121
    //                   3 143
    //                   4 197
    //                   5 204
    //                   6 211;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
        return super.onMenuItemSelected(i, menuitem);
_L2:
        stopOneSegPlayer();
        continue; /* Loop/switch isn't completed */
_L3:
        if(mShowSignalState)
            mShowSignalState = false;
        else
            mShowSignalState = true;
        showSignal(mShowSignalState);
        continue; /* Loop/switch isn't completed */
_L4:
        if(!mCurrentLayoutState)
            changeLayout(true);
        else
            changeLayout(false);
        continue; /* Loop/switch isn't completed */
_L5:
        if(mConfigSetting.iTsFileSimul)
            mConfigSetting.iTsFileSimul = false;
        else
            mConfigSetting.iTsFileSimul = true;
        if(!mConfigSettingControl.setConfigToFile(mConfigSetting))
            MtvUtilDebug.Mid("MtvUiTestMode", "setConfigToFile false!");
        continue; /* Loop/switch isn't completed */
_L6:
        showConfigrationSettings();
        continue; /* Loop/switch isn't completed */
_L7:
        updateChannelList();
        continue; /* Loop/switch isn't completed */
_L8:
        startActivity(new Intent("com.samsung.sec.mtv.testmode.LAUNCH_SCAN_RESULTS"));
        if(true) goto _L1; else goto _L9
_L9:
    }

    public void onPlayerNotification(int i, int j, int k)
    {
        i;
        JVM INSTR tableswitch 20481 20495: default 76
    //                   20481 77
    //                   20482 318
    //                   20483 1160
    //                   20484 690
    //                   20485 1260
    //                   20486 1859
    //                   20487 76
    //                   20488 76
    //                   20489 76
    //                   20490 76
    //                   20491 76
    //                   20492 76
    //                   20493 76
    //                   20494 1063
    //                   20495 1128;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L1 _L1 _L1 _L1 _L1 _L1 _L1 _L8 _L9
_L6:
        break MISSING_BLOCK_LABEL_1260;
_L7:
        break MISSING_BLOCK_LABEL_1859;
_L11:
        return;
_L2:
        MtvUtilDebug.Low("MtvUiTestMode", "onPlayerNotification ...:CMD_CREATE");
        switch(j)
        {
        default:
            return;

        case 24580: 
            runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, (new StringBuilder()).append("OneSeg Error [").append(j).append("]").toString()));
            return;

        case 24581: 
            bIsCreateComplete = true;
            break;
        }
        if(haveToFinish)
        {
            mHandler.post(new Runnable() {

                public void run()
                {
                    if(mMtvPlayerOneSeg != null)
                        mMtvPlayerOneSeg.delete(mMtvAppPlaybackContext);
                }

                final MtvUiTestMode this$0;

            
            {
                this$0 = MtvUiTestMode.this;
                Object();
            }
            }
);
            return;
        }
        mMtvAppPlaybackContext.getComponents().getVideo().enable();
        if(mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface() != null)
            mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface().registerSurface(mVideoSurfaceView);
        mMtvAppPlaybackContext.getAttribute().registerListener(this);
        MtvURI mtvuri = new MtvURI(4, mChannelNumber);
        runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, (new StringBuilder()).append("Channel[").append(mChannelNumber).append("] searching started").toString()));
        mMtvPlayerOneSeg.open(mMtvAppPlaybackContext, mtvuri);
        return;
_L3:
        MtvUtilDebug.Low("MtvUiTestMode", "onPlayerNotification ...:CMD_OPEN");
        switch(j)
        {
        default:
            return;

        case 24582: 
            break;

        case 24580: 
            MtvUtilDebug.Low("MtvUiTestMode", "onPlayerNotification ...:CMD_OPEN - STAT_FAILURE");
            MtvUtilDebug.Low("MtvUiTestMode", "Channel searching failed...");
            mLastChannelSwapTime = 0L;
            runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, (new StringBuilder()).append("Channel [").append(k).append("] searching failed ... SwapTime(msecs) [").append(mLastChannelSwapTime).append("]").toString()));
            return;

        case 24581: 
            MtvUtilDebug.Low("MtvUiTestMode", "***oneseg open completed");
            if(mStartChannelSwapTimeMsecs != 0L)
            {
                mStopChannelSwapTimeMsecs = (new Date()).getTime();
                mLastChannelSwapTime = mStopChannelSwapTimeMsecs - mStartChannelSwapTimeMsecs;
            }
            if(mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface() != null)
            {
                mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface().registerSurface(mVideoSurfaceView);
                return;
            }
            break;

        case 24583: 
            runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, (new StringBuilder()).append("Channel searching ").append(k).append("%    SwapTime(msecs) [").append(mLastChannelSwapTime).append("]").toString()));
            return;

        case 24584: 
            runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, (new StringBuilder()).append("Channel searching done..... SwapTime(msecs) [").append(mLastChannelSwapTime).append("]").toString()));
            runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, (new StringBuilder()).append("Channel [").append(mChannelNumber).append("]       SwapTime(msecs) [").append(mLastChannelSwapTime).append("]").toString()));
            continue; /* Loop/switch isn't completed */
        }
_L1:
        if(true)
            continue; /* Loop/switch isn't completed */
        if(!bFromFactoryTest) goto _L11; else goto _L10
_L10:
        bFactoryTestSuccess = true;
        return;
_L5:
        MtvUtilDebug.Low("MtvUiTestMode", "onPlayerNotification ...:CMD_PLAY");
        setAudioMute(false);
        switch(j)
        {
        default:
            return;

        case 24580: 
            runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, (new StringBuilder()).append("Channel Play Error [").append(j).append("]        SwapTime(msecs) [").append(mLastChannelSwapTime).append("]").toString()));
            return;

        case 24582: 
            runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, (new StringBuilder()).append("Channel[").append(mChannelNumber).append("] buffering start       SwapTime(msecs) [").append(mLastChannelSwapTime).append("]").toString()));
            return;

        case 24583: 
            runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, (new StringBuilder()).append("Channel[").append(mChannelNumber).append("] buffering ").append(k).append("%      SwapTime(msecs) [").append(mLastChannelSwapTime).append("]").toString()));
            return;

        case 24584: 
            runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, (new StringBuilder()).append("Channel[").append(mChannelNumber).append("]        SwapTime(msecs) [").append(mLastChannelSwapTime).append("]").toString()));
            if(bFromFactoryTest)
            {
                bFactoryTestSuccess = true;
                return;
            }
            break;

        case 24593: 
            MtvUtilDebug.Error("MtvUiTestMode", "onPlayerNotification ...CMD_PLAY:STAT_UNKNOWN:: Something severely screwed -- Happy Debugging !!!");
            continue; /* Loop/switch isn't completed */
        }
        if(true)
            continue; /* Loop/switch isn't completed */
        if(MtvUtilDebug.isReleaseMode()) goto _L11; else goto _L12
_L12:
        Toast toast = Toast.makeText(this, "\n\n\n       [OneSeg]   F A T A L    E R R O R !\n\n\n OneSeg middleware crashed, cannot continue MTV \n\n  - Use *#9900# to take log after termination - ", 1);
        toast.setGravity(119, 0, 0);
        toast.show();
        mHandler.post(new Runnable() {

            public void run()
            {
                if(mMtvPlayerOneSeg != null)
                    mMtvPlayerOneSeg.delete(mMtvAppPlaybackContext);
            }

            final MtvUiTestMode this$0;

            
            {
                this$0 = MtvUiTestMode.this;
                Object();
            }
        }
);
        return;
_L8:
        MtvUtilDebug.Low("MtvUiTestMode", (new StringBuilder()).append("onPlayerNotification ...:CMD_CLOSE: Status-").append(j).toString());
        switch(j)
        {
        default:
            return;

        case 24581: 
            break;
        }
        if(mMtvAppPlaybackContext != null)
        {
            mMtvAppPlaybackContext.getAttribute().registerListener(this);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        MtvUtilDebug.Low("MtvUiTestMode", "onPlayerNotification ...:CMD_DELETE");
        if(j == 24581)
        {
            mHandler.post(new Runnable() {

                public void run()
                {
                    releaseMtvPlayer();
                    finish();
                }

                final MtvUiTestMode this$0;

            
            {
                this$0 = MtvUiTestMode.this;
                Object();
            }
            }
);
            return;
        }
        if(true) goto _L11; else goto _L4
_L4:
        MtvUtilDebug.Low("MtvUiTestMode", (new StringBuilder()).append("onPlayerNotification ...:CMD_STATUS_UPDT Status-").append(j).toString());
        switch(j)
        {
        default:
            return;

        case 24588: 
            runOnUiThread(new RunnableUpdateText(mChannelInfoTextView, (new StringBuilder()).append("Channel searching failed [").append(j).append("]        SwapTime(msecs) [").append(mLastChannelSwapTime).append("]").toString()));
            break;
        }
        return;
        MtvUtilDebug.Low("MtvUiTestMode", "onPlayerNotification ...:CMD_SCAN");
        switch(j)
        {
        default:
            return;

        case 24577: 
            MtvUtilDebug.Low("MtvUiTestMode", "onPlayerNotification :CMD_SCAN : STAT_STARTED");
            mChannelScanStartedMSecs = (new Date()).getTime();
            mMaxChannelScanTimeMsecs = 0L;
            mMinChannelScanTimeMsecs = 0L;
            mNumDetectedChannels = 0;
            mFirstDetectedChannelNumber = 0;
            return;

        case 24597: 
            MtvUtilDebug.Low("MtvUiTestMode", (new StringBuilder()).append("onPlayerNotification :CMD_SCAN : STAT_CHNL_DETECTED extra:").append(k).toString());
            Date date = new Date();
            long l = date.getTime() - mChannelScanStartedMSecs;
            mChannelScanStartedMSecs = date.getTime();
            if(l > mMaxChannelScanTimeMsecs)
                mMaxChannelScanTimeMsecs = l;
            if(l < mMinChannelScanTimeMsecs || mMinChannelScanTimeMsecs == 0L)
                mMinChannelScanTimeMsecs = l;
            mNumDetectedChannels = mNumDetectedChannels + 1;
            if(mFirstDetectedChannelNumber == 0)
                mFirstDetectedChannelNumber = k;
            i = getScanProgessPercentage();
            runOnUiThread(new RunnableUpdateAlertDialogText((new StringBuilder()).append("Completion Status: ").append(i).append("%").toString()));
            return;

        case 24598: 
            mChannelScanStartedMSecs = (new Date()).getTime();
            i = getScanProgessPercentage();
            runOnUiThread(new RunnableUpdateAlertDialogText((new StringBuilder()).append("Completion Status: ").append(i).append("%").toString()));
            return;

        case 24581: 
            MtvUtilDebug.Low("MtvUiTestMode", "onPlayerNotification :CMD_SCAN : STAT_COMPLETED");
            mStopScanTimeMsecs = (new Date()).getTime();
            mLastScanTimeMsecs = mStopScanTimeMsecs - mStartScanTimeMsecs;
            runOnUiThread(new RunnableUpdateText(mChannelScanInfoTextView, (new StringBuilder()).append("Last Scan Time (msecs) [ ").append(mLastScanTimeMsecs).append(" ]     Num of Ch. found [").append(mNumDetectedChannels).append("]").toString()));
            runOnUiThread(new RunnableRemoveAlertDialog());
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("scantime", Long.valueOf(mLastScanTimeMsecs));
            contentvalues.put("numchannels", Integer.valueOf(mNumDetectedChannels));
            contentvalues.put("maxchanneltime", Long.valueOf(mMaxChannelScanTimeMsecs));
            contentvalues.put("minchanneltime", Long.valueOf(mMinChannelScanTimeMsecs));
            contentvalues.put("unixtime", Long.valueOf(System.currentTimeMillis() / 1000L));
            getApplicationContext().getContentResolver().insert(TESTSCANS_URI, contentvalues);
            if(mNumDetectedChannels == 0)
                mFirstDetectedChannelNumber = 27;
            mHandler.sendEmptyMessage(1);
            return;

        case 24580: 
            MtvUtilDebug.Low("MtvUiTestMode", "onPlayerNotification :CMD_SCAN : STAT_FAILURE");
            runOnUiThread(new RunnableRemoveAlertDialog());
            break;
        }
        if(mNumDetectedChannels == 0)
            mFirstDetectedChannelNumber = 27;
        mHandler.sendEmptyMessage(1);
        return;
        switch(j)
        {
        default:
            return;

        case 24580: 
        case 24581: 
            runOnUiThread(new RunnableRemoveAlertDialog());
            break;
        }
        if(mNumDetectedChannels == 0)
            mFirstDetectedChannelNumber = 27;
        mHandler.sendEmptyMessage(1);
        return;
    }

    public boolean onPrepareOptionsMenu(Menu menu)
    {
        menu.clear();
        menu.add(0, 0, 0, "stop");
        if(mShowSignalState)
            menu.add(0, 1, 0, "Hide OneSeg Signal");
        else
            menu.add(0, 1, 0, "Show OneSeg Signal");
        if(!mCurrentLayoutState)
            menu.add(0, 2, 0, "Horizontal");
        else
            menu.add(0, 2, 0, "Vertical");
        if(mConfigSetting.iTsFileSimul)
            menu.add(0, 3, 0, "Simul mode Off");
        else
            menu.add(0, 3, 0, "Simul mode On");
        menu.add(0, 4, 0, "Configration");
        menu.add(0, 5, 0, "Update Channel List");
        menu.add(0, 6, 0, "View Past Scan Results");
        return super.onPrepareOptionsMenu(menu);
    }

    public void onProgramAttributeReset(int i)
    {
    }

    public void onProgramAttributeUpdated(int i)
    {
        switch(i)
        {
        default:
            return;

        case 16: // '\020'
            showSignal(mShowSignalState);
            break;
        }
    }

    protected void onResume()
    {
        super.onResume();
        if(bIsCreateComplete)
        {
            mMtvAppPlaybackContext.getComponents().getVideo().enable();
            if(mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface() != null)
                mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface().registerSurface(mVideoSurfaceView);
            mMtvAppPlaybackContext.getAttribute().registerListener(this);
        }
        mVideoSurfaceView.setKeepScreenOn(true);
    }

    public void onStateChanged(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state, com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1)
    {
    }

    public void setAudioMute(boolean flag)
    {
        boolean flag1;
        Object obj;
        MtvUtilDebug.Low("MtvUiTestMode", (new StringBuilder()).append("inside setAudioMute : mute: ").append(flag).toString());
        flag1 = flag;
        if(checkIsCalling())
        {
            flag1 = flag;
            if(!flag)
            {
                MtvUtilDebug.Low("MtvUiTestMode", "setAudioMute() unmute request ignored while call");
                flag1 = true;
            }
        }
        obj = mMtvAppPlaybackContextManager.getCurrentContext();
        if(obj == null) goto _L2; else goto _L1
_L1:
        if(flag1) goto _L4; else goto _L3
_L3:
        ((MtvAppPlaybackContext) (obj)).getComponents().getAudio().enable();
        obj = ((MtvAppPlaybackContext) (obj)).getComponents().getAudio().getControlInterface();
        if(obj != null)
            ((IMtvOneSegAudioControl) (obj)).unmuteAudio();
_L2:
        return;
_L4:
        ((MtvAppPlaybackContext) (obj)).getComponents().getAudio().enable();
        obj = ((MtvAppPlaybackContext) (obj)).getComponents().getAudio().getControlInterface();
        if(obj != null)
            ((IMtvOneSegAudioControl) (obj)).muteAudio();
        if(true) goto _L2; else goto _L5
_L5:
    }

    private static final boolean LAYOUT_HORIZONTAL = true;
    private static final boolean LAYOUT_VERTICAL = false;
    private static final int MENU_CHANGE_LAYOUT = 2;
    private static final int MENU_SECRET_CONFIGRATION = 4;
    private static final int MENU_SIGNAL = 1;
    private static final int MENU_SIMUL_MODE = 3;
    private static final int MENU_STOP = 0;
    private static final int MENU_UPDATE_CHANNEL_LIST = 5;
    private static final int MENU_VIEW_SCAN_RESULTS = 6;
    private static final int MTV_CHANNEL_DEFAULT_CHANNEL_NO = 27;
    private static final int MTV_CHANNEL_NO_MAX_VAL = 52;
    private static final int MTV_CHANNEL_NO_MIN_VAL = 13;
    private static final boolean SECRET_CONFIGRATION_ENABLED = true;
    private static final String TAG = "MtvUiTestMode";
    public static final Uri TESTSCANS_URI = Uri.parse("content://com.samung.sec.mtv.ui.TestMode.TestScans/testscansinfo");
    private static final int TEST_MODE_MSG_START_LIVE_PLAY_AFTER_SCAN = 1;
    private static final int TEST_MODE_MSG_UPDATE_SIGNAL = 0;
    private static boolean mCurrentLayoutState = false;
    private static boolean mShowSignalState = true;
    private boolean bFactoryTestSuccess;
    private boolean bFromFactoryTest;
    private boolean bIsCreateComplete;
    private boolean haveToFinish;
    private TextView mChannelInfoTextView;
    private int mChannelNumber;
    private TextView mChannelScanInfoTextView;
    private long mChannelScanStartedMSecs;
    private MtvUtilConfigSetting mConfigSetting;
    private MtvUtilConfigSettingControl mConfigSettingControl;
    private MtvUtilDebug mDebugSetting;
    private int mFirstDetectedChannelNumber;
    private Handler mHandler;
    private long mLastChannelSwapTime;
    private long mLastScanTimeMsecs;
    private long mMaxChannelScanTimeMsecs;
    private long mMinChannelScanTimeMsecs;
    private MtvAppPlaybackContext mMtvAppPlaybackContext;
    private MtvAppPlaybackContextManager mMtvAppPlaybackContextManager;
    private IMtvAppPlayerOneSeg mMtvPlayerOneSeg;
    private int mNumDetectedChannels;
    private int mSavedVolumeLevel;
    private AlertDialog mScanDialog;
    private TextView mSignalDetailsTextView;
    private TextView mSignalInfoTextView;
    private LinearLayout mSignalParamsLayout;
    private long mStartChannelSwapTimeMsecs;
    private long mStartScanTimeMsecs;
    private long mStopChannelSwapTimeMsecs;
    private long mStopScanTimeMsecs;
    private ListAdapter mTestmodeChannelListAdapter;
    private ListView mTestmodeChannelListView;
    private SurfaceView mVideoSurfaceView;







/*
    static long access$1202(MtvUiTestMode mtvuitestmode, long l)
    {
        mtvuitestmode.mStartChannelSwapTimeMsecs = l;
        return l;
    }

*/













/*
    static MtvAppPlaybackContext access$802(MtvUiTestMode mtvuitestmode, MtvAppPlaybackContext mtvappplaybackcontext)
    {
        mtvuitestmode.mMtvAppPlaybackContext = mtvappplaybackcontext;
        return mtvappplaybackcontext;
    }

*/

}
