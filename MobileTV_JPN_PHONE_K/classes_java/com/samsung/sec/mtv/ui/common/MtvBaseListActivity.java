// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.*;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.sdtv.SDtvControl;
import android.content.*;
import android.database.ContentObserver;
import android.media.MediaRouter;
import android.os.Bundle;
import android.os.Handler;
import android.view.Window;
import com.samsung.sec.mtv.reciever.MtvLiveBroadcastListener;
import com.samsung.sec.mtv.reciever.MtvLiveBroadcastReciever;
import com.samsung.sec.mtv.utility.*;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvUiPopUpActivity

public abstract class MtvBaseListActivity extends ListActivity
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


    public MtvBaseListActivity()
    {
        mRotationObserver = null;
    }

    private void registerContentObserver()
    {
        if(mRotationObserver == null)
        {
            mRotationObserver = new ContentObserver(new Handler()) {

                public void onChange(boolean flag)
                {
                    MtvUtilDebug.Low("MtvBaseListActivity", "registerContentObserver onChange()");
                    if(android.provider.Settings.System.getInt(getContentResolver(), "accelerometer_rotation", 0) == 1)
                    {
                        requestOrientation(-1);
                        MtvUtilAppService.setPreferredOrientation(-1);
                    }
                }

                final MtvBaseListActivity this$0;

            
            {
                this$0 = MtvBaseListActivity.this;
                super(handler);
            }
            }
;
            android.net.Uri uri = android.provider.Settings.System.getUriFor("accelerometer_rotation");
            getContentResolver().registerContentObserver(uri, false, mRotationObserver);
            MtvUtilDebug.Low("MtvBaseListActivity", "registerContentObserver - mRotationObserver is registered");
        }
    }

    private void requestOrientation(int i)
    {
        MtvUtilDebug.High("MtvBaseListActivity", (new StringBuilder()).append("Requested Orientation in BaseListActivity [").append(i).append("] System Values [1:Port 0:Land -1:UnSpecified]: Mtv Values [0:Port 1:Land 3:Reverse Landscape] ").toString());
        setRequestedOrientation(i);
    }

    private void unregisterContentObserver()
    {
        if(mRotationObserver != null)
        {
            getContentResolver().unregisterContentObserver(mRotationObserver);
            mRotationObserver = null;
            MtvUtilDebug.Low("MtvBaseListActivity", "unregisterContentObserver - mRotationObserver is unregistered");
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mCurrentAcitivity = this;
        MtvLiveBroadcastReciever.getInstance(getApplicationContext()).registerListener(this);
        registerContentObserver();
    }

    protected void onDestroy()
    {
        if(isFinishing())
        {
            if(mCurrentAcitivity == this)
                mCurrentAcitivity = null;
            MtvUtilAppService.releaseCPUPartialWakeLock();
        }
        MtvLiveBroadcastReciever.getInstance(getApplicationContext()).unregisterListener(this);
        unregisterContentObserver();
        super.onDestroy();
    }

    public void onMtvAppFinishNotify(Object obj)
    {
        MtvUtilDebug.Low("MtvBaseListActivity", "onMtvAppFinishNotify() :: ");
        finish();
    }

    public void onMtvAppLiveBroadcastNotify(int i, Object obj)
    {
        boolean flag;
        flag = true;
        MtvUtilDebug.Low("MtvBaseListActivity", (new StringBuilder()).append("onMtvAppLiveBroadcastNotify()  :: ").append(i).toString());
        i;
        JVM INSTR lookupswitch 8: default 104
    //                   2: 179
    //                   3: 276
    //                   4: 387
    //                   6: 387
    //                   7: 308
    //                   14: 442
    //                   15: 344
    //                   27: 134;
           goto _L1 _L2 _L3 _L4 _L4 _L5 _L6 _L7 _L8
_L1:
        MtvUtilDebug.Low("MtvBaseListActivity", (new StringBuilder()).append("onMtvAppLiveBroadcastNotify()  :: notification - ").append(i).append(" not handled!").toString());
_L10:
        return;
_L8:
        if(!MtvUtilMemoryStatus.isLowMemoryToLaunch()) goto _L10; else goto _L9
_L9:
        MtvUtilDebug.Error("MtvBaseListActivity", "Memory is low in MobileTV... ");
        if(MtvUtilAppService.isAppOnForeground(getApplicationContext()))
        {
            showLowMemoryPopup();
            return;
        } else
        {
            getApplicationContext().sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"));
            return;
        }
_L2:
        if(obj == null) goto _L10; else goto _L11
_L11:
        obj = (Intent)obj;
        int j;
        if(((Intent) (obj)).getIntExtra("status", 1) != 2)
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
        if(isFinishing()) goto _L10; else goto _L12
_L12:
        obj = new Intent();
        ((Intent) (obj)).setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
        ((Intent) (obj)).putExtra("popup_type", 1);
        startActivity(((Intent) (obj)));
        return;
_L7:
        if(!MtvFeatures.is3LMEnabled() || isFinishing()) goto _L10; else goto _L13
_L13:
        obj = new Intent();
        ((Intent) (obj)).setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
        ((Intent) (obj)).putExtra("popup_type", 6);
        startActivity(((Intent) (obj)));
        return;
_L4:
        if(i == 6)
            MtvUtilDebug.Low("MtvBaseListActivity", getString(0x7f070278));
        else
        if(i == 4)
            MtvUtilDebug.Low("MtvBaseListActivity", getString(0x7f07027a));
        (new Thread(new UpdateDBRunnable())).start();
        return;
_L6:
        setRequestedOrientation(5);
        return;
    }

    protected void onPause()
    {
        mMediaRouter.removeCallback(mMediaRouterCallback);
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        requestOrientation(MtvUtilAppService.preferred_orientation);
        mCurrentAcitivity = this;
        MtvUtilAppService.setMtvVisibiltySettings(getApplicationContext());
        MtvUtilAppService.releaseCPUPartialWakeLock();
        mMediaRouter = (MediaRouter)getSystemService("media_router");
        mMediaRouter.addCallback(2, mMediaRouterCallback);
        updatePresentation();
    }

    protected void onStop()
    {
        MtvUtilDebug.Low("MtvBaseListActivity", (new StringBuilder()).append("onStop() :: isFinishing ? ").append(isFinishing()).toString());
        MtvUtilAppService.resetMtvVisibiltySettings(getApplicationContext());
        if(mCurrentAcitivity == this && !mCurrentAcitivity.isResumed() && !mCurrentAcitivity.isFinishing())
            MtvUtilAppService.aquireCPUPartialWakeLock(getApplicationContext());
        if(mPresentation != null)
        {
            mPresentation.dismiss();
            mPresentation = null;
        }
        super.onStop();
    }

    protected void showLowBatteryPopup()
    {
        if(!MtvUiPopUpActivity.isBatteryLowPopupAvailable() && !isFinishing())
        {
            Intent intent = new Intent();
            intent.setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
            intent.putExtra("popup_type", 0);
            startActivity(intent);
        }
    }

    protected void showLowMemoryPopup()
    {
        MtvUtilDebug.Low("MtvBaseListActivity", "showLowMemoryPopup() ::");
        if(!MtvUiPopUpActivity.isMemoryLowPopupAvailable() && !isFinishing())
        {
            Intent intent = new Intent();
            intent.setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
            intent.putExtra("popup_type", 7);
            startActivity(intent);
        }
    }

    public void updatePresentation()
    {
        Object obj;
        android.media.MediaRouter.RouteInfo routeinfo = mMediaRouter.getSelectedRoute(2);
        obj = null;
        if(routeinfo != null)
            obj = routeinfo.getPresentationDisplay();
        if(mPresentation != null && mPresentation.getDisplay() != obj)
        {
            mPresentation.dismiss();
            mPresentation = null;
        }
        if(mPresentation != null || obj == null)
            break MISSING_BLOCK_LABEL_126;
        mPresentation = new Presentation(getApplicationContext(), ((android.view.Display) (obj)));
        mPresentation.getWindow().setType(2003);
        mPresentation.setContentView(0x7f030000);
        mPresentation.setOnDismissListener(mOnDismissListener);
        mPresentation.show();
_L1:
        return;
        obj;
        mPresentation = null;
        return;
        if(mPresentation != null && obj != null)
        {
            MtvUtilDebug.High("MtvBaseListActivity", "updatePresentation :: unhiding : doing mPresentation.show()");
            try
            {
                mPresentation.show();
                return;
            }
            catch(android.view.WindowManager.InvalidDisplayException invaliddisplayexception)
            {
                mPresentation = null;
            }
            return;
        }
          goto _L1
    }

    private static final String TAG = "MtvBaseListActivity";
    protected static Activity mCurrentAcitivity = null;
    public MediaRouter mMediaRouter;
    public final android.media.MediaRouter.SimpleCallback mMediaRouterCallback = new android.media.MediaRouter.SimpleCallback() {

        public void onRoutePresentationDisplayChanged(MediaRouter mediarouter, android.media.MediaRouter.RouteInfo routeinfo)
        {
            updatePresentation();
        }

        public void onRouteSelected(MediaRouter mediarouter, int i, android.media.MediaRouter.RouteInfo routeinfo)
        {
            updatePresentation();
        }

        public void onRouteUnselected(MediaRouter mediarouter, int i, android.media.MediaRouter.RouteInfo routeinfo)
        {
            updatePresentation();
        }

        final MtvBaseListActivity this$0;

            
            {
                this$0 = MtvBaseListActivity.this;
                super();
            }
    }
;
    public final android.content.DialogInterface.OnDismissListener mOnDismissListener = new android.content.DialogInterface.OnDismissListener() {

        public void onDismiss(DialogInterface dialoginterface)
        {
            if(mPresentation != null)
            {
                mPresentation.dismiss();
                mPresentation = null;
            }
        }

        final MtvBaseListActivity this$0;

            
            {
                this$0 = MtvBaseListActivity.this;
                super();
            }
    }
;
    public Presentation mPresentation;
    protected ContentObserver mRotationObserver;


}
