// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.cover;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.*;
import android.util.Log;
import android.util.Slog;
import android.view.Window;
import com.samsung.android.cover.CoverState;
import com.samsung.android.cover.ICoverManager;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

// Referenced classes of package com.samsung.android.sdk.cover:
//            ScoverState

public class ScoverManager
{
    private class CoverListenerDelegate extends com.samsung.android.cover.ICoverManagerCallback.Stub
    {

        public void coverCallback(CoverState coverstate)
            throws RemoteException
        {
            Message message = Message.obtain();
            message.what = 0;
            message.obj = coverstate;
            mHandler.sendMessage(message);
        }

        public StateListener getListener()
        {
            return mListener;
        }

        public String getListenerInfo()
            throws RemoteException
        {
            return mListener.toString();
        }

        private Handler mHandler;
        private final StateListener mListener;
        final ScoverManager this$0;


        CoverListenerDelegate(StateListener statelistener, Handler handler)
        {
            this$0 = ScoverManager.this;
            super();
            mListener = statelistener;
            if(handler == null)
                statelistener = mContext.getMainLooper();
            else
                statelistener = handler.getLooper();
            mHandler = statelistener. new _cls1(ScoverManager.this);
        }
    }

    public static interface ScoverStateListener
    {

        public abstract void onCoverStateChanged(ScoverState scoverstate);
    }

    public static interface StateListener
    {

        public abstract void onCoverStateChanged(ScoverState scoverstate);
    }


    public ScoverManager(Context context)
    {
        mContext = context;
        initSystemFeature();
    }

    private ICoverManager getService()
    {
        this;
        JVM INSTR monitorenter ;
        ICoverManager icovermanager;
        if(mService == null)
        {
            mService = com.samsung.android.cover.ICoverManager.Stub.asInterface(ServiceManager.getService("cover"));
            if(mService == null)
                Slog.w("CoverManager", "warning: no COVER_MANAGER_SERVICE");
        }
        icovermanager = mService;
        this;
        JVM INSTR monitorexit ;
        return icovermanager;
        Exception exception;
        exception;
        throw exception;
    }

    private void initSystemFeature()
    {
        if(!sIsSystemFeatureQueried)
        {
            sIsFilpCoverSystemFeatureEnabled = mContext.getPackageManager().hasSystemFeature("com.sec.feature.cover.flip");
            sIsSViewCoverSystemFeatureEnabled = mContext.getPackageManager().hasSystemFeature("com.sec.feature.cover.sview");
            sIsSystemFeatureQueried = true;
        }
    }

    public ScoverState getCoverState()
    {
        if(!isSupportCover())
        {
            Log.w("CoverManager", "getCoverState : This device is not supported cover");
            return null;
        }
        Object obj = getService();
        if(obj == null)
            break MISSING_BLOCK_LABEL_73;
        obj = ((ICoverManager) (obj)).getCoverState();
        if(obj == null)
            break MISSING_BLOCK_LABEL_65;
        return new ScoverState(((CoverState) (obj)).switchState, ((CoverState) (obj)).type, ((CoverState) (obj)).color, ((CoverState) (obj)).widthPixel, ((CoverState) (obj)).heightPixel);
        Log.e("CoverManager", "getCoverState : coverState is null");
_L2:
        return null;
        RemoteException remoteexception;
        remoteexception;
        Log.e("CoverManager", "RemoteException in getCoverState: ", remoteexception);
        if(true) goto _L2; else goto _L1
_L1:
    }

    boolean isSupportCover()
    {
        return sIsFilpCoverSystemFeatureEnabled || sIsSViewCoverSystemFeatureEnabled;
    }

    boolean isSupportSViewCover()
    {
        return sIsSViewCoverSystemFeatureEnabled;
    }

    boolean isSupportTypeOfCover(int i)
    {
        switch(i)
        {
        case 2: // '\002'
        case 4: // '\004'
        default:
            return false;

        case 0: // '\0'
            return sIsFilpCoverSystemFeatureEnabled;

        case 1: // '\001'
        case 3: // '\003'
        case 5: // '\005'
            return sIsSViewCoverSystemFeatureEnabled;
        }
    }

    public void registerListener(ScoverStateListener scoverstatelistener)
    {
        Log.d("CoverManager", "registerListener : Use deprecated API!! Change ScoverStateListener to StateListener");
    }

    public void registerListener(StateListener statelistener)
    {
        Log.d("CoverManager", "registerListener");
        if(!isSupportCover())
        {
            Log.w("CoverManager", "registerListener : This device is not supported cover");
            return;
        }
        if(statelistener == null)
        {
            Log.w("CoverManager", "registerListener : listener is null");
            return;
        }
        CopyOnWriteArrayList copyonwritearraylist = mListenerDelegates;
        copyonwritearraylist;
        JVM INSTR monitorenter ;
        Object obj1 = mListenerDelegates.iterator();
_L4:
        if(!((Iterator) (obj1)).hasNext()) goto _L2; else goto _L1
_L1:
        boolean flag;
        Object obj;
        obj = (CoverListenerDelegate)((Iterator) (obj1)).next();
        flag = ((CoverListenerDelegate) (obj)).getListener().equals(statelistener);
        if(!flag) goto _L4; else goto _L3
_L3:
        if(obj != null) goto _L6; else goto _L5
_L5:
        statelistener = new CoverListenerDelegate(statelistener, null);
        mListenerDelegates.add(statelistener);
_L9:
        obj = getService();
        if(obj == null)
            break MISSING_BLOCK_LABEL_163;
        obj1 = new ComponentName(mContext.getPackageName(), getClass().getCanonicalName());
        if(statelistener == null || obj1 == null)
            break MISSING_BLOCK_LABEL_163;
        ((ICoverManager) (obj)).registerCallback(statelistener, ((ComponentName) (obj1)));
_L7:
        copyonwritearraylist;
        JVM INSTR monitorexit ;
        return;
_L8:
        copyonwritearraylist;
        JVM INSTR monitorexit ;
        throw statelistener;
        statelistener;
        Log.e("CoverManager", "RemoteException in registerListener: ", statelistener);
          goto _L7
        statelistener;
          goto _L8
_L6:
        statelistener = ((StateListener) (obj));
          goto _L9
_L2:
        obj = null;
          goto _L3
        statelistener;
          goto _L8
    }

    public void setCoverModeToWindow(Window window, int i)
    {
        if(!isSupportSViewCover())
        {
            Log.w("CoverManager", "setSViewCoverModeToWindow : This device is not supported s view cover");
        } else
        {
            android.view.WindowManager.LayoutParams layoutparams = window.getAttributes();
            if(layoutparams != null)
            {
                layoutparams.coverMode = i;
                window.setAttributes(layoutparams);
                return;
            }
        }
    }

    public void unregisterListener(ScoverStateListener scoverstatelistener)
    {
        Log.d("CoverManager", "unregisterListener : Use deprecated API!! Change ScoverStateListener to StateListener");
    }

    public void unregisterListener(StateListener statelistener)
    {
        Log.d("CoverManager", "unregisterListener");
        if(!isSupportCover())
        {
            Log.w("CoverManager", "unregisterListener : This device is not supported cover");
            return;
        }
        if(statelistener == null)
        {
            Log.w("CoverManager", "unregisterListener : listener is null");
            return;
        }
        CopyOnWriteArrayList copyonwritearraylist = mListenerDelegates;
        copyonwritearraylist;
        JVM INSTR monitorenter ;
        Object obj = null;
        Iterator iterator = mListenerDelegates.iterator();
_L2:
        CoverListenerDelegate coverlistenerdelegate = obj;
        if(!iterator.hasNext())
            break; /* Loop/switch isn't completed */
        coverlistenerdelegate = (CoverListenerDelegate)iterator.next();
        if(!coverlistenerdelegate.getListener().equals(statelistener)) goto _L2; else goto _L1
_L1:
        if(coverlistenerdelegate != null)
            break MISSING_BLOCK_LABEL_106;
        copyonwritearraylist;
        JVM INSTR monitorexit ;
        return;
        statelistener;
        copyonwritearraylist;
        JVM INSTR monitorexit ;
        throw statelistener;
        statelistener = getService();
        if(statelistener == null)
            break MISSING_BLOCK_LABEL_134;
        if(statelistener.unregisterCallback(coverlistenerdelegate))
            mListenerDelegates.remove(coverlistenerdelegate);
_L3:
        copyonwritearraylist;
        JVM INSTR monitorexit ;
        return;
        statelistener;
        Log.e("CoverManager", "RemoteException in unregisterListener: ", statelistener);
          goto _L3
    }

    public static final int COVER_MODE_HIDE_SVIEW_ONCE = 2;
    public static final int COVER_MODE_NONE = 0;
    public static final int COVER_MODE_SVIEW = 1;
    private static final String FEATURE_COVER_FLIP = "com.sec.feature.cover.flip";
    private static final String FEATURE_COVER_SVIEW = "com.sec.feature.cover.sview";
    static final int SDK_VERSION = 0x1000000;
    private static final String TAG = "CoverManager";
    private static boolean sIsFilpCoverSystemFeatureEnabled = false;
    private static boolean sIsSViewCoverSystemFeatureEnabled = false;
    private static boolean sIsSystemFeatureQueried = false;
    private Context mContext;
    private final CopyOnWriteArrayList mListenerDelegates = new CopyOnWriteArrayList();
    private ICoverManager mService;



    // Unreferenced inner class com/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1

/* anonymous class */
    class CoverListenerDelegate._cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
label0:
            {
                if(mListener != null)
                {
                    message = (CoverState)message.obj;
                    if(message == null)
                        break label0;
                    message = new ScoverState(((CoverState) (message)).switchState, ((CoverState) (message)).type, ((CoverState) (message)).color, ((CoverState) (message)).widthPixel, ((CoverState) (message)).heightPixel);
                    mListener.onCoverStateChanged(message);
                }
                return;
            }
            Log.e("CoverManager", "coverState : null");
        }

        final CoverListenerDelegate this$1;
        final ScoverManager val$this$0;

            
            {
                this$1 = final_coverlistenerdelegate;
                this$0 = scovermanager;
                super(Looper.this);
            }
    }

}
