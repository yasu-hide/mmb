// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.look.bezelinteraction;

import android.content.ComponentName;
import android.content.Context;
import android.os.*;
import android.util.Log;
import com.samsung.android.bezelinteraction.BezelEvent;
import com.samsung.android.bezelinteraction.IBezelManager;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class SlookBezelInteraction
{
    public static interface BezelListener
    {

        public abstract void onItemSelected(BezelEvent bezelevent);
    }

    private static class BezelListenerDelegate extends com.samsung.android.bezelinteraction.IBezelCallback.Stub
    {

        public BezelListener getListener()
        {
            return mListener;
        }

        public String getListenerInfo()
            throws RemoteException
        {
            return mListener.toString();
        }

        public void onBezelCallback(BezelEvent bezelevent)
            throws RemoteException
        {
            Message message = Message.obtain();
            message.what = 0;
            message.obj = bezelevent;
            mHandler.sendMessage(message);
        }

        public Handler mHandler;
        public BezelListener mListener;

        BezelListenerDelegate(BezelListener bezellistener, Handler handler)
        {
            mListener = bezellistener;
            if(handler == null)
                bezellistener = SlookBezelInteraction.mContext.getMainLooper();
            else
                bezellistener = handler.getLooper();
            mHandler = new ListenerHandler(bezellistener, mListener);
        }
    }

    static class BezelListenerDelegate.ListenerHandler extends Handler
    {

        public void handleMessage(Message message)
        {
label0:
            {
                if(mListener != null)
                {
                    message = (BezelEvent)message.obj;
                    if(message == null)
                        break label0;
                    mListener.onItemSelected(message);
                }
                return;
            }
            Log.e("SlookBezelInteraction", "event : null");
        }

        public BezelListener mListener;

        public BezelListenerDelegate.ListenerHandler(Looper looper, BezelListener bezellistener)
        {
            super(looper);
            mListener = null;
            mListener = bezellistener;
        }
    }


    public SlookBezelInteraction(Context context)
    {
        mContext = context;
        getService();
    }

    private IBezelManager getService()
    {
        this;
        JVM INSTR monitorenter ;
        if(mService != null) goto _L2; else goto _L1
_L1:
        mService = com.samsung.android.bezelinteraction.IBezelManager.Stub.asInterface(ServiceManager.getService("BezelInteractionService"));
_L4:
        IBezelManager ibezelmanager = mService;
        this;
        JVM INSTR monitorexit ;
        return ibezelmanager;
_L2:
        if(mService.asBinder().isBinderAlive()) goto _L4; else goto _L3
_L3:
        Log.i("SlookBezelInteraction", "mService is not valid so retrieve the service again.");
        mService = com.samsung.android.bezelinteraction.IBezelManager.Stub.asInterface(ServiceManager.getService("BezelInteractionService"));
          goto _L4
        Exception exception;
        exception;
        throw exception;
    }

    public void enableBezelInteraction(boolean flag)
    {
        IBezelManager ibezelmanager;
        try
        {
            ibezelmanager = getService();
        }
        catch(RemoteException remoteexception)
        {
            Log.e("SlookBezelInteraction", "RemoteException in enableBezelInteraction : ", remoteexception);
            return;
        }
        if(ibezelmanager == null)
            break MISSING_BLOCK_LABEL_16;
        ibezelmanager.enableBezelInteraction(flag);
    }

    public void registerListener(BezelListener bezellistener)
    {
        Log.d("SlookBezelInteraction", "registerListener");
        if(bezellistener == null)
        {
            Log.w("SlookBezelInteraction", "registerListener : listener is null");
            return;
        }
        CopyOnWriteArrayList copyonwritearraylist = mListenerDelegates;
        copyonwritearraylist;
        JVM INSTR monitorenter ;
        Iterator iterator = mListenerDelegates.iterator();
_L4:
        if(!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        boolean flag;
        Object obj;
        obj = (BezelListenerDelegate)iterator.next();
        flag = ((BezelListenerDelegate) (obj)).getListener().equals(bezellistener);
        if(!flag) goto _L4; else goto _L3
_L3:
        if(obj != null) goto _L6; else goto _L5
_L5:
        bezellistener = new BezelListenerDelegate(bezellistener, null);
        mListenerDelegates.add(bezellistener);
_L9:
        obj = getService();
        if(obj == null)
            break MISSING_BLOCK_LABEL_135;
        ((IBezelManager) (obj)).registerCallback(bezellistener, new ComponentName(mContext.getPackageName(), mContext.getClass().getCanonicalName()));
_L7:
        copyonwritearraylist;
        JVM INSTR monitorexit ;
        return;
_L8:
        copyonwritearraylist;
        JVM INSTR monitorexit ;
        throw bezellistener;
        bezellistener;
        Log.e("SlookBezelInteraction", "RemoteException in registerListener: ", bezellistener);
          goto _L7
        bezellistener;
          goto _L8
_L6:
        bezellistener = ((BezelListener) (obj));
          goto _L9
_L2:
        obj = null;
          goto _L3
        bezellistener;
          goto _L8
    }

    public void unregisterListener(BezelListener bezellistener)
    {
        Log.d("SlookBezelInteraction", "unregisterListener!!!");
        if(bezellistener == null)
        {
            Log.w("SlookBezelInteraction", "unregisterListener : listener is null");
            return;
        }
        CopyOnWriteArrayList copyonwritearraylist = mListenerDelegates;
        copyonwritearraylist;
        JVM INSTR monitorenter ;
        Object obj = null;
        Iterator iterator = mListenerDelegates.iterator();
_L2:
        BezelListenerDelegate bezellistenerdelegate = obj;
        if(!iterator.hasNext())
            break; /* Loop/switch isn't completed */
        bezellistenerdelegate = (BezelListenerDelegate)iterator.next();
        if(!bezellistenerdelegate.getListener().equals(bezellistener)) goto _L2; else goto _L1
_L1:
        if(bezellistenerdelegate != null)
            break MISSING_BLOCK_LABEL_89;
        copyonwritearraylist;
        JVM INSTR monitorexit ;
        return;
        bezellistener;
        copyonwritearraylist;
        JVM INSTR monitorexit ;
        throw bezellistener;
        bezellistener = getService();
        if(bezellistener == null)
            break MISSING_BLOCK_LABEL_127;
        if(bezellistener.unregisterCallback(bezellistenerdelegate))
        {
            mListenerDelegates.remove(bezellistenerdelegate);
            bezellistenerdelegate.mHandler = null;
            bezellistenerdelegate.mListener = null;
        }
_L3:
        copyonwritearraylist;
        JVM INSTR monitorexit ;
        return;
        bezellistener;
        Log.e("SlookBezelInteraction", "RemoteException in unregisterListener: ", bezellistener);
          goto _L3
    }

    public static final String SERVICE_NAME = "BezelInteractionService";
    private static final String TAG = "SlookBezelInteraction";
    private static Context mContext = null;
    private static IBezelManager mService = null;
    private final CopyOnWriteArrayList mListenerDelegates = new CopyOnWriteArrayList();


}
