// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.reciever;

import android.bluetooth.BluetoothAdapter;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import com.samsung.android.sdk.SsdkUnsupportedException;
import com.samsung.android.sdk.cover.*;
import com.samsung.sec.mtv.utility.*;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.samsung.sec.mtv.reciever:
//            MtvLiveBroadcastListener

public class MtvLiveBroadcastReciever extends ContextWrapper
{
    private class MtvBroadcastReceiver extends BroadcastReceiver
    {

        public void onReceive(Context context, Intent intent)
        {
            String s;
            s = intent.getAction();
            if(!MtvUtilDebug.isReleaseMode())
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", (new StringBuilder()).append("onReceive() :: ").append(s).toString());
            if(s != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            if(s.equals("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND") || s.equals("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", (new StringBuilder()).append("ACTION_MTV_APP_FINISH: ").append(s).toString());
                MtvUtilAppService.setAppExiting(true);
                finishAllListners(intent);
                return;
            }
            if(s.equals("com.samsung.android.motion.PALM_DOWN"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "palm dowm");
                MtvUtilAudioManager.getInstance(context).setAudioMute(true);
                return;
            }
            if(s.equals("com.samsung.android.motion.PALM_UP"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "palm up");
                MtvUtilAudioManager.getInstance(context).setAudioMute(false);
                return;
            }
            if(s.equals("android.intent.action.USER_PRESENT"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "screen unlock");
                notifyTopListener(23, intent);
                return;
            }
            if(s.equals("android.intent.action.TIME_TICK"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "ACTION_TIME_TICK recivied");
                notifyBaseListener(1, intent);
                return;
            }
            if(s.equals("android.intent.action.BATTERY_CHANGED"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "ACTION_BATTERY_CHANGED recevied");
                notifyTopListener(2, intent);
                return;
            }
            if(s.equals("android.intent.action.HEADSET_PLUG"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "ACTION_HEADSET_PLUG received");
                notifyAllListener(9, intent);
                return;
            }
            if(s.equals("android.media.AUDIO_BECOMING_NOISY"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "ACTION_MTV_AUDIO_BECOMING_NOISY received");
                notifyAllListener(26, intent);
                return;
            }
            if(s.equals("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_FOREGROUND"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "ACTION_MTV_APP_FINISH_FOREGROUND received");
                return;
            }
            if(s.equals("android.intent.action.BATTERY_LOW"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "ACTION_BATTERY_LOW received");
                if(MtvUtilAppService.isAppOnForeground(getApplicationContext()))
                {
                    context = new Intent();
                    context.setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
                    context.putExtra("popup_type", 0);
                    notifyTopListener(3, context);
                    return;
                } else
                {
                    MtvUtilDebug.Low("MtvLiveBroadcastReciever", "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND");
                    sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"));
                    return;
                }
            }
            if(MtvFeatures.is3LMEnabled() && s.equals("android.action.emergencylockenabled"))
                if(MtvUtilAppService.isAppOnForeground(getApplicationContext()))
                {
                    context = new Intent();
                    context.setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
                    context.putExtra("popup_type", 6);
                    notifyTopListener(15, context);
                    return;
                } else
                {
                    MtvUtilDebug.Low("MtvLiveBroadcastReciever", "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND");
                    sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"));
                    return;
                }
            if(s.equals("com.samsung.sec.mtv.ACTION_MTV_SLEEP_TIMER_ALARM"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "ACTION_MTV_SLEEP_TIMER_ALARM received");
                if(MtvUtilAppService.isAppOnForeground(getApplicationContext()))
                {
                    context = new Intent();
                    context.setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
                    context.putExtra("popup_type", 1);
                    notifyTopListener(7, context);
                    return;
                } else
                {
                    MtvUtilDebug.Low("MtvLiveBroadcastReciever", "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND");
                    sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"));
                    return;
                }
            }
            if(s.equals("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_END"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "ACTION_MTV_RESERVATION_END received");
                notifyTopListener(10, intent);
                return;
            }
            if(s.equals("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_CANCEL_EXIT"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "ACTION_MTV_RESERVATION_CANCEL_EXIT received");
                notifyTopListener(10, intent);
                return;
            }
            if(s.equals("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_END_DIALOG_CLOSE"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "ACTION_MTV_RESERVATION_END_DIALOG_CLOSE received");
                notifyTopListener(12, intent);
                return;
            }
            if(s.equals("android.intent.action.LOCALE_CHANGED"))
            {
                notifyBaseListener(16, null);
                return;
            }
            if(!s.equals("com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"))
                break; /* Loop/switch isn't completed */
            MtvUtilDebug.High("MtvLiveBroadcastReciever", "AUTO ANTENNA CLOSE BROADCAST RECEIVER.");
            if(mMtvPreferences == null)
                mMtvPreferences = new MtvPreferences(getApplicationContext());
            boolean flag;
            boolean flag1;
            if(mMtvPreferences.getAntennaOnOff() == 1)
                flag = true;
            else
                flag = false;
            flag1 = MtvUtilAppService.isMiniModeRunning(getApplicationContext());
            if(flag && !flag1)
            {
                notifyTopListener(17, intent);
                return;
            }
            if(true) goto _L1; else goto _L3
_L3:
            if(s.equals("com.samsung.sec.mtv.ACTION_MTV_SVIEW_FINISH_START_LIVE"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "ACTION_MTV_SVIEW_FINISH_START_LIVE received");
                notifyTopListener(20, intent);
                return;
            }
            if(s.equals("com.samsung.sec.mtv.ACTION_MTV_SVIEW_FINISH"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "ACTION_MTV_SVIEW_FINISH received");
                notifyTopListener(21, intent);
                return;
            }
            if(s.equals("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_CLOSE_FROM_NOTIFICATION"))
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "ACTION_MTV_RESERVATION_CLOSE_FROM_NOTIFICATION recevied");
                notifyTopListener(22, intent);
                return;
            }
            if(!s.equals("android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"))
                break; /* Loop/switch isn't completed */
            MtvUtilDebug.Low("MtvLiveBroadcastReciever", (new StringBuilder()).append("recievedIntent =").append(intent).toString());
            int i = intent.getIntExtra("android.bluetooth.profile.extra.STATE", 0);
            if((i == 2 || i == 1) && MtvUtilAudioManager.isFocused)
            {
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "BluetoothA2dp.STATE_CONNECTED or BluetoothA2dp.STATE_CONNECTING");
                BluetoothAdapter.getDefaultAdapter().setScmstContentProtection(true);
                return;
            }
            if(true) goto _L1; else goto _L4
_L4:
            int j;
            if(!s.equals("android.intent.action.EMERGENCY_STATE_CHANGED"))
                continue; /* Loop/switch isn't completed */
            j = intent.getIntExtra("reason", 0);
            MtvUtilDebug.High("MtvLiveBroadcastReciever", (new StringBuilder()).append("emergency mode or ultra power saving mode is enabled. reason: ").append(j).toString());
            if(j != 3 && j != 2) goto _L1; else goto _L5
_L5:
            sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"));
            return;
            if(!s.equals("android.intent.action.ACTION_SHUTDOWN")) goto _L1; else goto _L6
_L6:
            notifyAllListener(28, intent);
            return;
        }

        final MtvLiveBroadcastReciever this$0;

        private MtvBroadcastReceiver()
        {
            this$0 = MtvLiveBroadcastReciever.this;
            super();
        }

    }

    private class MtvMediaBroadcastReceiver extends BroadcastReceiver
    {

        public void onReceive(Context context, Intent intent)
        {
            context = intent.getAction();
            if(!MtvUtilDebug.isReleaseMode())
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", (new StringBuilder()).append("onReceive() :: ").append(context).toString());
            if(context != null)
            {
                if(context.equals("android.intent.action.MEDIA_EJECT"))
                {
                    MtvUtilDebug.Low("MtvLiveBroadcastReciever", "MtvMediaBroadcastReceiver: ACTION_MEDIA_EJECT received");
                    notifyAllListener(4, intent);
                    return;
                }
                if(context.equals("android.intent.action.MEDIA_UNMOUNTED"))
                {
                    MtvUtilDebug.Low("MtvLiveBroadcastReciever", "MtvMediaBroadcastReceiver: ACTION_MEDIA_UNMOUNTED received");
                    notifyAllListener(5, intent);
                    return;
                }
                if(context.equals("android.intent.action.MEDIA_SCANNER_STARTED"))
                {
                    MtvUtilDebug.Low("MtvLiveBroadcastReciever", "MtvMediaBroadcastReceiver: ACTION_MEDIA_SCANNER_STARTED recevied");
                    notifyTopListener(27, intent);
                    return;
                }
                if(context.equals("android.intent.action.MEDIA_MOUNTED"))
                {
                    MtvUtilDebug.Low("MtvLiveBroadcastReciever", "MtvMediaBroadcastReceiver: ACTION_MEDIA_MOUNTED received");
                    notifyTopListener(6, intent);
                    return;
                }
            }
        }

        final MtvLiveBroadcastReciever this$0;

        private MtvMediaBroadcastReceiver()
        {
            this$0 = MtvLiveBroadcastReciever.this;
            super();
        }

    }

    private class MtvTunerResourceBroadcastReciever extends BroadcastReceiver
    {

        public void onReceive(Context context, Intent intent)
        {
            context = intent.getAction();
            MtvUtilDebug.High("MtvLiveBroadcastReciever", (new StringBuilder()).append("MtvTunerResourceBroadcastReciever :: onRecieve()  :: ").append(context).toString());
            boolean flag = MtvUtilAppService.isMiniModeRunning(getApplicationContext());
            if(context.equals("com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE"))
            {
                MtvUtilDebug.High("MtvLiveBroadcastReciever", " MmbFwTmmConstantsSv.ACTION_TUNER_RELEASE : Tuner release Request from Tmm obtained... Closing OneSeg... ");
                if(!flag)
                    finishAllListners(intent);
            } else
            if(context.equals("com.nttdocomo.mmb.android.mmbsv.intent.INTENT_TUNER_RELEASE"))
            {
                MtvUtilDebug.High("MtvLiveBroadcastReciever", " MmbFwTmmConstantsSv.INTENT_TUNER_RELEASE : Tuner release Request from Tmm obtained... Closing OneSeg... ");
                if(!flag)
                {
                    finishAllListners(intent);
                    return;
                }
            }
        }

        final MtvLiveBroadcastReciever this$0;

        private MtvTunerResourceBroadcastReciever()
        {
            this$0 = MtvLiveBroadcastReciever.this;
            super();
        }

    }


    public MtvLiveBroadcastReciever(Context context)
    {
        super(context);
        mListeners = new ArrayList();
        if(MtvFeatures.isSCoverModeEnabled())
            initializeAndRegisterScoverstateListener(context);
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvLiveBroadcastReciever", "MtvLiveBroadcastReciever created...");
        mBroadcastReceiver = new MtvBroadcastReceiver();
        mMediaBroadcastReceiver = new MtvMediaBroadcastReceiver();
        mTunerReleaseRequestReciever = new MtvTunerResourceBroadcastReciever();
        getApplicationContext().registerReceiver(mBroadcastReceiver, broadcastIntentFilters);
        getApplicationContext().registerReceiver(mMediaBroadcastReceiver, broadcastMediaIntentFilters);
        getApplicationContext().registerReceiver(mTunerReleaseRequestReciever, tunerResoruceIntentFilter);
    }

    private final void attach(MtvLiveBroadcastListener mtvlivebroadcastlistener)
    {
        this;
        JVM INSTR monitorenter ;
        mListeners.add(mtvlivebroadcastlistener);
        this;
        JVM INSTR monitorexit ;
        return;
        mtvlivebroadcastlistener;
        throw mtvlivebroadcastlistener;
    }

    private final void detach(MtvLiveBroadcastListener mtvlivebroadcastlistener)
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = mListeners.iterator();
        do
        {
            if(!iterator.hasNext())
                break;
            if(iterator.next() != mtvlivebroadcastlistener)
                continue;
            iterator.remove();
            break;
        } while(true);
        this;
        JVM INSTR monitorexit ;
        return;
        mtvlivebroadcastlistener;
        throw mtvlivebroadcastlistener;
    }

    public static MtvLiveBroadcastReciever getCurrentInstance()
    {
        return mySingletonInstance;
    }

    public static MtvLiveBroadcastReciever getInstance(Context context)
    {
        if(mySingletonInstance == null)
        {
            MtvUtilDebug.Low("MtvLiveBroadcastReciever", "creating MtvAppAndroidService...");
            if(context == null)
            {
                throw new IllegalArgumentException("Passed Application Context is null...");
            } else
            {
                context = new MtvLiveBroadcastReciever(context);
                mySingletonInstance = context;
                return context;
            }
        } else
        {
            return mySingletonInstance;
        }
    }

    private void initializeAndRegisterScoverstateListener(Context context)
    {
        mScover = new Scover();
        try
        {
            mScover.initialize(context);
        }
        catch(IllegalArgumentException illegalargumentexception)
        {
            MtvUtilDebug.High("MtvLiveBroadcastReciever", "IllegalArgumentException");
        }
        catch(SsdkUnsupportedException ssdkunsupportedexception)
        {
            MtvUtilDebug.High("MtvLiveBroadcastReciever", (new StringBuilder()).append("SsdkUnsupportedException type:").append(ssdkunsupportedexception.getType()).toString());
        }
        mCoverManager = new ScoverManager(context);
        mStateListener = new com.samsung.android.sdk.cover.ScoverManager.StateListener() {

            public void onCoverStateChanged(ScoverState scoverstate)
            {
label0:
                {
                    MtvUtilDebug.High("MtvLiveBroadcastReciever", "onCoverStateChanged");
                    mScoverState = scoverstate;
                    if(mMtvPreferences == null)
                        mMtvPreferences = new MtvPreferences(getApplicationContext());
                    boolean flag;
                    boolean flag1;
                    if(mScoverState.getSwitchState())
                        flag = true;
                    else
                        flag = false;
                    scoverstate = mMtvPreferences;
                    if(!flag)
                        flag1 = true;
                    else
                        flag1 = false;
                    scoverstate.setSViewCoverClosed(flag1);
                    if(mScover.isFeatureEnabled(0) && mScover.isFeatureEnabled(3) && mScover.isFeatureEnabled(1) && (MtvUtilAppService.isAppOnForeground(getApplicationContext()) || MtvUtilAppService.isMiniModeRunning(getApplicationContext())))
                    {
                        if(!flag)
                            break label0;
                        MtvUtilDebug.High("MtvLiveBroadcastReciever", "MTVAPP_ANDROID_SERVICE_SCOVER_OPEN");
                        notifyTopListener(18, null);
                    }
                    return;
                }
                MtvUtilDebug.High("MtvLiveBroadcastReciever", "MTVAPP_ANDROID_SERVICE_SCOVER_CLOSE");
                notifyAllListener(19, null);
                scoverstate = new Intent("com.samsung.cover.OPEN");
                scoverstate.putExtra("coverOpen", false);
                sendBroadcast(scoverstate);
            }

            final MtvLiveBroadcastReciever this$0;

            
            {
                this$0 = MtvLiveBroadcastReciever.this;
                super();
            }
        }
;
        mCoverManager.registerListener(mStateListener);
    }

    public static void unregisterRecievers()
    {
        if(mySingletonInstance != null)
        {
            MtvUtilDebug.Low("MtvLiveBroadcastReciever", "unregistering all Recievers and reseting singleTon Instance...");
            mySingletonInstance.getApplicationContext().unregisterReceiver(mySingletonInstance.mBroadcastReceiver);
            mySingletonInstance.getApplicationContext().unregisterReceiver(mySingletonInstance.mMediaBroadcastReceiver);
            mySingletonInstance.getApplicationContext().unregisterReceiver(mySingletonInstance.mTunerReleaseRequestReciever);
            if(MtvFeatures.isSCoverModeEnabled())
                mySingletonInstance.unRegisterScoverstateListener();
            mySingletonInstance.mListeners.clear();
            mySingletonInstance.mBroadcastReceiver = null;
            mySingletonInstance.mMediaBroadcastReceiver = null;
            mySingletonInstance = null;
            return;
        } else
        {
            MtvUtilDebug.Low("MtvLiveBroadcastReciever", "No Valid LiveBroadcastReciever found  ! Probably already Cleaned up");
            return;
        }
    }

    public void finishAllListners(Intent intent)
    {
        MtvLiveBroadcastListener amtvlivebroadcastlistener[] = getArrayFromIterator();
        if(amtvlivebroadcastlistener.length == 0)
        {
            MtvUtilDebug.Error("MtvLiveBroadcastReciever", "arrayOfIteratorList length is Zero!");
            return;
        }
        for(int i = amtvlivebroadcastlistener.length - 1; i >= 0; i--)
        {
            MtvUtilDebug.Low("finish ServiceListener", (new StringBuilder()).append("").append(amtvlivebroadcastlistener[i]).toString());
            if(amtvlivebroadcastlistener[i] != null)
            {
                amtvlivebroadcastlistener[i].onMtvAppFinishNotify(intent);
                amtvlivebroadcastlistener[i] = null;
            }
        }

    }

    protected final MtvLiveBroadcastListener[] getArrayFromIterator()
    {
        this;
        JVM INSTR monitorenter ;
        MtvLiveBroadcastListener amtvlivebroadcastlistener[];
        amtvlivebroadcastlistener = new MtvLiveBroadcastListener[mListeners.size()];
        mListeners.toArray(amtvlivebroadcastlistener);
        this;
        JVM INSTR monitorexit ;
        return amtvlivebroadcastlistener;
        Exception exception;
        exception;
        throw exception;
    }

    public MtvLiveBroadcastListener getTopListener()
    {
        if(mListeners != null && mListeners.size() > 0)
            return (MtvLiveBroadcastListener)mListeners.get(mListeners.size() - 1);
        else
            return null;
    }

    protected final boolean hasListener()
    {
        return mListeners.size() > 0;
    }

    public void notifyAllListener(int i, Intent intent)
    {
        MtvLiveBroadcastListener amtvlivebroadcastlistener[] = getArrayFromIterator();
        MtvUtilDebug.Low("MtvLiveBroadcastReciever", (new StringBuilder()).append("notifyAllListener..:what: ").append(i).toString());
        int k = amtvlivebroadcastlistener.length;
        for(int j = 0; j < k; j++)
        {
            MtvLiveBroadcastListener mtvlivebroadcastlistener = amtvlivebroadcastlistener[j];
            if(mtvlivebroadcastlistener != null)
                mtvlivebroadcastlistener.onMtvAppLiveBroadcastNotify(i, intent);
        }

    }

    public void notifyBaseListener(int i, Intent intent)
    {
        if(mListeners.size() >= 1 && mListeners.get(0) != null)
            ((MtvLiveBroadcastListener)mListeners.get(0)).onMtvAppLiveBroadcastNotify(i, intent);
    }

    public void notifyTopListener(int i, Intent intent)
    {
        int j = mListeners.size();
        MtvUtilDebug.Low("MtvLiveBroadcastReciever", (new StringBuilder()).append("notifyTopListener mListeners ").append(mListeners.toString()).toString());
        if(j > 0)
        {
            ((MtvLiveBroadcastListener)mListeners.get(j - 1)).onMtvAppLiveBroadcastNotify(i, intent);
            return;
        } else
        {
            MtvUtilDebug.Low("MtvLiveBroadcastReciever", (new StringBuilder()).append("No Top Listener to notify... notification - ").append(i).toString());
            return;
        }
    }

    public void registerBaseListener(MtvLiveBroadcastListener mtvlivebroadcastlistener)
    {
        MtvUtilDebug.Low("MtvLiveBroadcastReciever", (new StringBuilder()).append("registerBaseListener listener ").append(mtvlivebroadcastlistener).toString());
        if(mListeners.size() > 0)
            mListeners.remove(0);
        mListeners.add(0, mtvlivebroadcastlistener);
    }

    public void registerListener(MtvLiveBroadcastListener mtvlivebroadcastlistener)
    {
        MtvUtilDebug.Low("MtvLiveBroadcastReciever", (new StringBuilder()).append("registerListener newListener ").append(mtvlivebroadcastlistener).toString());
        if(mListeners.size() > 0)
        {
            int i = mListeners.size() - 1;
            if(((MtvLiveBroadcastListener)mListeners.get(i)).getClass().equals(mtvlivebroadcastlistener.getClass()))
            {
                mListeners.remove(i);
                MtvUtilDebug.Low("MtvLiveBroadcastReciever", "removed last duplicate listener... ");
            }
        }
        attach(mtvlivebroadcastlistener);
        MtvUtilDebug.Low("MtvLiveBroadcastReciever", (new StringBuilder()).append("registerListener mListeners.size()= ").append(mListeners.size()).toString());
    }

    public void unRegisterScoverstateListener()
    {
        mCoverManager.unregisterListener(mStateListener);
    }

    public void unregisterBaseListener(MtvLiveBroadcastListener mtvlivebroadcastlistener)
    {
        if(mListeners != null && mListeners.size() > 0)
            mListeners.remove(0);
    }

    public void unregisterListener(MtvLiveBroadcastListener mtvlivebroadcastlistener)
    {
        detach(mtvlivebroadcastlistener);
        MtvUtilDebug.Low("MtvLiveBroadcastReciever", (new StringBuilder()).append("unregisterListener mListeners.size()= ").append(mListeners.size()).toString());
    }

    private static final int BASE_LISTENER_INDEX = 0;
    private static final String TAG = "MtvLiveBroadcastReciever";
    private static IntentFilter broadcastIntentFilters;
    private static IntentFilter broadcastMediaIntentFilters;
    private static MtvLiveBroadcastReciever mySingletonInstance = null;
    private static IntentFilter tunerResoruceIntentFilter;
    private MtvBroadcastReceiver mBroadcastReceiver;
    private ScoverManager mCoverManager;
    protected volatile ArrayList mListeners;
    private MtvMediaBroadcastReceiver mMediaBroadcastReceiver;
    private MtvPreferences mMtvPreferences;
    private Scover mScover;
    private ScoverState mScoverState;
    private com.samsung.android.sdk.cover.ScoverManager.StateListener mStateListener;
    private MtvTunerResourceBroadcastReciever mTunerReleaseRequestReciever;

    static 
    {
        broadcastIntentFilters = new IntentFilter();
        broadcastIntentFilters.addAction("android.intent.action.BATTERY_CHANGED");
        broadcastIntentFilters.addAction("android.intent.action.BATTERY_LOW");
        broadcastIntentFilters.addAction("android.action.emergencylockenabled");
        broadcastIntentFilters.addAction("android.intent.action.TIME_TICK");
        broadcastIntentFilters.addAction("android.intent.action.HEADSET_PLUG");
        broadcastIntentFilters.addAction("com.samsung.sec.mtv.ACTION_MTV_LOW_BATTERY");
        broadcastIntentFilters.addAction("com.samsung.sec.mtv.ACTION_MTV_SLEEP_TIMER_ALARM");
        broadcastIntentFilters.addAction("com.samsung.sec.mtv.ACTION_MTV_SLEEP_TIMER_EXIT");
        broadcastIntentFilters.addAction("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_END");
        broadcastIntentFilters.addAction("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_CANCEL_EXIT");
        broadcastIntentFilters.addAction("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_END_DIALOG_CLOSE");
        broadcastIntentFilters.addAction("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND");
        broadcastIntentFilters.addAction("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_FOREGROUND");
        broadcastIntentFilters.addAction("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE");
        broadcastIntentFilters.addAction("android.intent.action.HDMI_PLUGGED");
        broadcastIntentFilters.addAction("android.intent.action.WIFI_DISPLAY");
        broadcastIntentFilters.addAction("android.intent.action.LOCALE_CHANGED");
        broadcastIntentFilters.addAction("com.samsung.sec.mtv.DTV_ANTENNA_CLOSE");
        broadcastIntentFilters.addAction("com.samsung.cover.OPEN");
        broadcastIntentFilters.addAction("com.samsung.sec.mtv.ACTION_MTV_SVIEW_FINISH");
        broadcastIntentFilters.addAction("com.samsung.sec.mtv.ACTION_MTV_SVIEW_FINISH_START_LIVE");
        broadcastIntentFilters.addAction("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_CLOSE_FROM_NOTIFICATION");
        broadcastIntentFilters.addAction("com.samsung.android.motion.PALM_DOWN");
        broadcastIntentFilters.addAction("com.samsung.android.motion.PALM_UP");
        broadcastIntentFilters.addAction("android.intent.action.USER_PRESENT");
        broadcastIntentFilters.addAction("android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED");
        broadcastIntentFilters.addAction("android.intent.action.EMERGENCY_STATE_CHANGED");
        broadcastIntentFilters.addAction("android.media.AUDIO_BECOMING_NOISY");
        broadcastIntentFilters.addAction("android.intent.action.ACTION_SHUTDOWN");
        broadcastMediaIntentFilters = new IntentFilter();
        broadcastMediaIntentFilters.addAction("android.intent.action.MEDIA_UNMOUNTED");
        broadcastMediaIntentFilters.addAction("android.intent.action.MEDIA_EJECT");
        broadcastMediaIntentFilters.addAction("android.intent.action.MEDIA_MOUNTED");
        broadcastMediaIntentFilters.addAction("android.intent.action.MEDIA_SCANNER_STARTED");
        broadcastMediaIntentFilters.addDataScheme("file");
        tunerResoruceIntentFilter = new IntentFilter();
        tunerResoruceIntentFilter.addAction("com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE");
        tunerResoruceIntentFilter.addAction("com.nttdocomo.mmb.android.mmbsv.intent.INTENT_TUNER_RELEASE");
    }



/*
    static ScoverState access$302(MtvLiveBroadcastReciever mtvlivebroadcastreciever, ScoverState scoverstate)
    {
        mtvlivebroadcastreciever.mScoverState = scoverstate;
        return scoverstate;
    }

*/



/*
    static MtvPreferences access$402(MtvLiveBroadcastReciever mtvlivebroadcastreciever, MtvPreferences mtvpreferences)
    {
        mtvlivebroadcastreciever.mMtvPreferences = mtvpreferences;
        return mtvpreferences;
    }

*/

}
