// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.*;
import android.broadcast.helper.MtvURI;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.sdtv.SDtvControl;
import android.content.*;
import android.database.ContentObserver;
import android.media.MediaRouter;
import android.os.Bundle;
import android.os.Handler;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.provider.MtvChannelManager;
import com.samsung.sec.mtv.reciever.MtvLiveBroadcastListener;
import com.samsung.sec.mtv.reciever.MtvLiveBroadcastReciever;
import com.samsung.sec.mtv.utility.*;
import java.util.List;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvUiPopUpActivity

public abstract class MtvBaseActivity extends Activity
    implements MtvLiveBroadcastListener
{
    private static class UpdateDBRunnable
        implements Runnable
    {

        public void run()
        {
            SDtvControl.getInstance().updateTVFilesDB();
        }

        UpdateDBRunnable()
        {
        }
    }


    public MtvBaseActivity()
    {
        mMtvAudMgr = null;
        mRotationObserver = null;
        mBaseActivityhandler = new Handler() {

            final MtvBaseActivity this$0;

            
            {
                this$0 = MtvBaseActivity.this;
                super();
            }
        }
;
        mRunnableUpdateTvFilesDb = new Runnable() {

            public void run()
            {
                MtvUtilDebug.Low("MtvBaseActivity", "mRunnableUpdateTvFilesDb Start");
                MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
                if(mtvappplaybackcontext != null)
                {
                    MtvUtilDebug.Low("MtvBaseActivity", (new StringBuilder()).append("mRunnableUpdateTvFilesDb: Type[").append(mtvappplaybackcontext.getType()).append("]. If LOCAL runnable will be self Posted again in 1sec.").toString());
                    if(mtvappplaybackcontext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LOCALTV)
                    {
                        mBaseActivityhandler.removeCallbacks(mRunnableUpdateTvFilesDb);
                        mBaseActivityhandler.postDelayed(mRunnableUpdateTvFilesDb, 1000L);
                        return;
                    } else
                    {
                        (new Thread(new UpdateDBRunnable())).start();
                        return;
                    }
                } else
                {
                    MtvUtilDebug.Error("MtvBaseActivity", "mRunnableUpdateTvFilesDb: mMtvAppPlaybackContext is null, Fix it by Self Posting if there is any issue.!!!");
                    return;
                }
            }

            final MtvBaseActivity this$0;

            
            {
                this$0 = MtvBaseActivity.this;
                super();
            }
        }
;
    }

    private void registerContentObserver()
    {
        if(mRotationObserver == null)
        {
            mRotationObserver = new ContentObserver(new Handler()) {

                public void onChange(boolean flag)
                {
                    MtvUtilDebug.Low("MtvBaseActivity", "registerContentObserver onChange()");
                    if(android.provider.Settings.System.getInt(getContentResolver(), "accelerometer_rotation", 0) != 1) goto _L2; else goto _L1
_L1:
                    if(!getIntent().getComponent().getClassName().equalsIgnoreCase("com.samsung.sec.mtv.ui.tvlink.MtvUiTvLinks")) goto _L4; else goto _L3
_L3:
                    MtvUtilDebug.Error("MtvBaseActivity", "MtvUiTvLinks: Restricting the rotation to portrait only");
                    requestOrientation(1);
_L6:
                    MtvUtilAppService.setPreferredOrientation(-1);
_L2:
                    return;
_L4:
                    if(!getIntent().getComponent().getClassName().equalsIgnoreCase("com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer") && !getIntent().getComponent().getClassName().equalsIgnoreCase("com.samsung.sec.mtv.ui.fileplayer.MtvUFilePlayer"))
                        requestOrientation(-1);
                    if(true) goto _L6; else goto _L5
_L5:
                }

                final MtvBaseActivity this$0;

            
            {
                this$0 = MtvBaseActivity.this;
                super(handler);
            }
            }
;
            android.net.Uri uri = android.provider.Settings.System.getUriFor("accelerometer_rotation");
            getContentResolver().registerContentObserver(uri, false, mRotationObserver);
            MtvUtilDebug.Low("MtvBaseActivity", "registerContentObserver - mRotationObserver is registered");
        }
    }

    private void unregisterContentObserver()
    {
        if(mRotationObserver != null)
        {
            getContentResolver().unregisterContentObserver(mRotationObserver);
            mRotationObserver = null;
            MtvUtilDebug.Low("MtvBaseActivity", "unregisterContentObserver - mRotationObserver is unregistered");
        }
    }

    public boolean isMobileTvNotOnTop(Context context)
    {
        Object obj = null;
        ActivityManager activitymanager = (ActivityManager)context.getSystemService("activity");
        context = obj;
        if(activitymanager != null)
            context = ((android.app.ActivityManager.RunningTaskInfo)activitymanager.getRunningTasks(1).get(0)).topActivity.getClassName();
        if(context != null)
        {
            if(!MtvUtilDebug.isReleaseMode())
                MtvUtilDebug.Low("MtvBaseActivity", (new StringBuilder()).append("HomeKeyPresses :topActivityName = ").append(context).toString());
            if(!context.contains("com.samsung.sec.mtv"))
                return true;
        }
        return false;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mCurrentAcitivity = this;
        MtvLiveBroadcastReciever.getInstance(getApplicationContext()).registerListener(this);
        registerContentObserver();
    }

    protected void onCreate(Bundle bundle, boolean flag)
    {
        super.onCreate(bundle);
        mCurrentAcitivity = this;
        if(flag)
            MtvLiveBroadcastReciever.getInstance(getApplicationContext()).registerBaseListener(this);
        registerContentObserver();
    }

    protected void onDestroy()
    {
        MtvLiveBroadcastReciever.getInstance(getApplicationContext()).unregisterListener(this);
        if(isFinishing())
        {
            if(mCurrentAcitivity == this)
            {
                mCurrentAcitivity = null;
                if(MtvUtilTvOut.mPresentation != null)
                {
                    MtvUtilTvOut.mPresentation.dismiss();
                    MtvUtilTvOut.mPresentation = null;
                }
            }
            MtvUtilAppService.releaseCPUPartialWakeLock();
        }
        unregisterContentObserver();
        super.onDestroy();
    }

    public void onMtvAppFinishNotify(Object obj)
    {
        MtvUtilDebug.Low("MtvBaseActivity", "onMtvAppFinishNotify() :: ");
        finish();
    }

    public void onMtvAppLiveBroadcastNotify(int i, Object obj)
    {
        MtvUtilDebug.Low("MtvBaseActivity", (new StringBuilder()).append("onMtvAppLiveBroadcastNotify()  :: ").append(i).toString());
        i;
        JVM INSTR lookupswitch 10: default 116
    //                   2: 191
    //                   3: 293
    //                   4: 408
    //                   6: 408
    //                   7: 325
    //                   9: 693
    //                   14: 462
    //                   15: 363
    //                   17: 468
    //                   27: 146;
           goto _L1 _L2 _L3 _L4 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L1:
        MtvUtilDebug.Low("MtvBaseActivity", (new StringBuilder()).append("onMtvAppLiveBroadcastNotify()  :: notification - ").append(i).append(" not handled!").toString());
_L11:
        return;
_L10:
        if(MtvUtilMemoryStatus.isLowMemoryToLaunch())
        {
            MtvUtilDebug.Error("MtvBaseActivity", "Memory is low in MobileTV... ");
            if(MtvUtilAppService.isAppOnForeground(getApplicationContext()))
            {
                showLowMemoryPopup();
                return;
            } else
            {
                getApplicationContext().sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"));
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if(obj != null)
        {
            obj = (Intent)obj;
            int j;
            boolean flag;
            if(((Intent) (obj)).getIntExtra("status", 1) == 2)
                flag = true;
            else
                flag = false;
            i = ((Intent) (obj)).getIntExtra("scale", 100);
            j = ((Intent) (obj)).getIntExtra("level", i);
            MtvBatteryInfo.setBatteryCharging(flag);
            if(j < 15 && !flag)
            {
                if(MtvUtilAppService.isAppOnForeground(getApplicationContext()))
                {
                    showLowBatteryPopup();
                    return;
                } else
                {
                    getApplicationContext().sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"));
                    return;
                }
            } else
            {
                MtvBatteryInfo.updateBatteryLevel(j, i);
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if(MtvUtilAppService.isAppOnForeground(getApplicationContext()))
        {
            showLowBatteryPopup();
            return;
        } else
        {
            getApplicationContext().sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"));
            return;
        }
_L5:
        if(!isFinishing())
        {
            obj = new Intent();
            ((Intent) (obj)).setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
            ((Intent) (obj)).putExtra("popup_type", 1);
            startActivity(((Intent) (obj)));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        if(MtvFeatures.is3LMEnabled() && !isFinishing())
        {
            obj = new Intent();
            ((Intent) (obj)).setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
            ((Intent) (obj)).putExtra("popup_type", 6);
            startActivity(((Intent) (obj)));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if(i == 6)
            MtvUtilDebug.Low("MtvBaseActivity", "Memory card inserted");
        else
        if(i == 4)
            MtvUtilDebug.Low("MtvBaseActivity", "Memory card removed");
        mBaseActivityhandler.removeCallbacks(mRunnableUpdateTvFilesDb);
        mBaseActivityhandler.post(mRunnableUpdateTvFilesDb);
        return;
_L7:
        setRequestedOrientation(5);
        return;
_L9:
        obj = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(obj != null)
        {
            if(((MtvAppPlaybackContext) (obj)).getState().getOp() == 20487)
            {
                if(isResumed())
                {
                    obj = ((ActivityManager)getSystemService("activity")).getRunningTasks(0x7fffffff);
                    for(i = 0; i < ((List) (obj)).size(); i++)
                    {
                        android.app.ActivityManager.RunningTaskInfo runningtaskinfo = (android.app.ActivityManager.RunningTaskInfo)((List) (obj)).get(i);
                        if(runningtaskinfo.topActivity.getClassName().contains("com.samsung.sec.mtv") && runningtaskinfo.topActivity.getClassName().contains("com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"))
                        {
                            MtvUtilDebug.Low("MtvBaseActivity", "MtvUiPopUpActivity is already running");
                            return;
                        }
                    }

                    obj = new Intent();
                    ((Intent) (obj)).setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"));
                    ((Intent) (obj)).setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
                    ((Intent) (obj)).putExtra("popup_type", 9);
                    startActivity(((Intent) (obj)));
                    return;
                }
            } else
            {
                obj = new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND");
                if(MtvUtilAppService.isAppOnForeground(getApplicationContext()))
                    ((Intent) (obj)).putExtra("antenna_close", true);
                getApplicationContext().sendBroadcast(((Intent) (obj)));
                MtvUtilDebug.High("MtvBaseActivity", " Sending Broadcast ACTION_MTV_APP_FINISH_BACKGROUND");
                return;
            }
        } else
        {
            MtvUtilDebug.High("MtvBaseActivity", "mMtvAppPlaybackContext is null so ignore");
            return;
        }
        if(true) goto _L11; else goto _L6
_L6:
        MtvUtilAudioManager mtvutilaudiomanager = MtvUtilAudioManager.getInstance(getApplicationContext());
        StringBuilder stringbuilder = (new StringBuilder()).append("MTVAPP_ANDRIOD_SERVICE_HEADSET isHeadsetConnected:");
        if(mtvutilaudiomanager == null)
            obj = mtvutilaudiomanager;
        else
            obj = Boolean.valueOf(mtvutilaudiomanager.isHeadsetConnected());
        MtvUtilDebug.Low("MtvBaseActivity", stringbuilder.append(obj).toString());
        if(mtvutilaudiomanager != null && !mtvutilaudiomanager.isHeadsetConnected())
        {
            mtvutilaudiomanager.setAudioEffect(0, true);
            return;
        }
        if(true) goto _L11; else goto _L12
_L12:
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        Object obj;
        super.onResume();
        obj = getIntent();
        mCurrentAcitivity = this;
        MtvUtilAppService.setMtvVisibiltySettings(getApplicationContext());
        MtvUtilAppService.releaseCPUPartialWakeLock();
        if(obj == null) goto _L2; else goto _L1
_L1:
        obj = ((Intent) (obj)).getComponent();
        if(obj == null) goto _L2; else goto _L3
_L3:
        obj = ((ComponentName) (obj)).getClassName();
        if(obj == null) goto _L2; else goto _L4
_L4:
        if(!((String) (obj)).equalsIgnoreCase("com.samsung.sec.mtv.ui.tvlink.MtvUiTvLinks")) goto _L6; else goto _L5
_L5:
        MtvUtilDebug.Error("MtvBaseActivity", "MtvUiTvLinks: Restricting the rotation to portrait only");
        requestOrientation(1);
_L2:
        mMediaRouter = (MediaRouter)getSystemService("media_router");
        mMediaRouter.addCallback(2, mMediaRouterCallback);
        MtvUtilTvOut.updatePresentation(getApplicationContext(), mMediaRouter);
        return;
_L6:
        if(!((String) (obj)).equalsIgnoreCase("com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"))
        {
            MtvUtilDebug.Low("MtvBaseActivity", "DTV Requesting for the Rotation....");
            requestOrientation(MtvUtilAppService.preferred_orientation);
        }
        if(true) goto _L2; else goto _L7
_L7:
    }

    protected void onStop()
    {
        MtvUtilDebug.Low("MtvBaseActivity", (new StringBuilder()).append("onStop() :: isFinishing ? ").append(isFinishing()).toString());
        MtvPreferences mtvpreferences = new MtvPreferences(getApplicationContext());
        if(!MtvUtilAppService.isMiniModeRunning(this) && !mtvpreferences.getIsLivePlayMiniMode() && !mtvpreferences.getIsFilePlayMiniMode() && !mtvpreferences.isSViewRunning())
            MtvUtilAppService.resetMtvVisibiltySettings(getApplicationContext());
        if(mCurrentAcitivity == this && !mCurrentAcitivity.isResumed() && !mCurrentAcitivity.isFinishing())
            MtvUtilAppService.aquireCPUPartialWakeLock(getApplicationContext());
        else
            MtvUtilDebug.Low("MtvBaseActivity", "not acquiring wakelock due to current activity or state mismatch !");
        if(mMediaRouter != null)
            mMediaRouter.removeCallback(mMediaRouterCallback);
        if(MtvUtilTvOut.mPresentation == null || isFinishing() || mCurrentAcitivity == null || mCurrentAcitivity.isResumed() || isMobileTvNotOnTop(getApplicationContext())) goto _L2; else goto _L1
_L1:
        MtvUtilTvOut.mPresentation.hide();
        MtvUtilDebug.Low("MtvBaseActivity", "onStop() :: hiding Presentation dialog");
_L4:
        super.onStop();
        return;
_L2:
        if(MtvUtilTvOut.mPresentation != null && !isFinishing() && mCurrentAcitivity != null && !mCurrentAcitivity.isResumed() && isMobileTvNotOnTop(getApplicationContext()))
        {
            MtvUtilDebug.Low("MtvBaseActivity", "onStop() :: DTV is not on top, let'us dismiss Presentation class");
            MtvUtilTvOut.mPresentation.dismiss();
            MtvUtilTvOut.mPresentation = null;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public MtvURI prepareUri(int i, int j, boolean flag)
    {
        MtvURI mtvuri = null;
        int k = 0;
        MtvPreferences mtvpreferences = new MtvPreferences(getApplicationContext());
        if(flag)
        {
            mtvuri = new MtvURI(2, mtvpreferences.getLatestPChannel(), j);
            k = MtvChannelManager.findMultiChannelNoByServiceId(this, i, j);
        }
        MtvUtilDebug.Low("MtvBaseActivity", (new StringBuilder()).append("prepareUri, iServiceID: ").append(j).append(" iMultiChannelNumber: ").append(k).toString());
        mtvpreferences.setLatestServiceID(j);
        mtvpreferences.setLatestVChannelMultiChannel(k);
        return mtvuri;
    }

    protected void requestOrientation(int i)
    {
        MtvUtilDebug.High("MtvBaseActivity", (new StringBuilder()).append("Requested Orientation in BaseActivity [").append(i).append("] System Values [1:Port 0:Land -1:UnSpecified]: Mtv Values [0:Port 1:Land 3:Reverse Landscape] ").toString());
        setRequestedOrientation(i);
    }

    protected void showLowBatteryPopup()
    {
        MtvUtilDebug.Low("MtvBaseActivity", "showLowBatteryPopup() ::");
        if(!MtvUiPopUpActivity.isBatteryLowPopupAvailable() && !isFinishing())
        {
            Intent intent;
            if(MtvUtilAppService.getRotation(getApplicationContext()) == 1)
                setRequestedOrientation(0);
            else
            if(MtvUtilAppService.getRotation(getApplicationContext()) == 3)
                setRequestedOrientation(8);
            else
                setRequestedOrientation(1);
            intent = new Intent();
            intent.setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
            intent.putExtra("popup_type", 0);
            startActivity(intent);
        }
    }

    protected void showLowMemoryPopup()
    {
        MtvUtilDebug.Low("MtvBaseActivity", "showLowMemoryPopup() ::");
        if(!MtvUiPopUpActivity.isMemoryLowPopupAvailable() && !isFinishing())
        {
            Intent intent;
            if(MtvUtilAppService.getRotation(getApplicationContext()) == 1)
                setRequestedOrientation(0);
            else
            if(MtvUtilAppService.getRotation(getApplicationContext()) == 3)
                setRequestedOrientation(8);
            else
                setRequestedOrientation(1);
            intent = new Intent();
            intent.setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
            intent.putExtra("popup_type", 7);
            startActivity(intent);
        }
    }

    private static final String TAG = "MtvBaseActivity";
    protected static Activity mCurrentAcitivity = null;
    protected Handler mBaseActivityhandler;
    public MediaRouter mMediaRouter;
    public final android.media.MediaRouter.SimpleCallback mMediaRouterCallback = new android.media.MediaRouter.SimpleCallback() {

        public void onRoutePresentationDisplayChanged(MediaRouter mediarouter, android.media.MediaRouter.RouteInfo routeinfo)
        {
            MtvUtilDebug.High("MtvBaseActivity", "onRoutePresentationDisplayChanged");
            MtvUtilTvOut.updatePresentation(getApplicationContext(), mMediaRouter);
        }

        public void onRouteSelected(MediaRouter mediarouter, int i, android.media.MediaRouter.RouteInfo routeinfo)
        {
            MtvUtilDebug.High("MtvBaseActivity", "onRouteSelected");
            MtvUtilTvOut.updatePresentation(getApplicationContext(), mMediaRouter);
        }

        public void onRouteUnselected(MediaRouter mediarouter, int i, android.media.MediaRouter.RouteInfo routeinfo)
        {
            MtvUtilTvOut.updatePresentation(getApplicationContext(), mMediaRouter);
            MtvUtilDebug.High("MtvBaseActivity", "onRouteUnselected");
        }

        final MtvBaseActivity this$0;

            
            {
                this$0 = MtvBaseActivity.this;
                super();
            }
    }
;
    private MtvUtilAudioManager mMtvAudMgr;
    protected ContentObserver mRotationObserver;
    private Runnable mRunnableUpdateTvFilesDb;


}
