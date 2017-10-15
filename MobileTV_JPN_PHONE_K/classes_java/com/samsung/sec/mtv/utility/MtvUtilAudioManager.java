// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.utility;

import android.bluetooth.*;
import android.broadcast.IMtvOneSegAudioControl;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.media.AudioManager;
import android.media.MediaRouter;
import android.media.audiofx.SoundAlive;
import android.os.Build;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.reciever.MtvBroadcastReceiver;
import com.samsung.sec.mtv.reciever.MtvLiveBroadcastReciever;

// Referenced classes of package com.samsung.sec.mtv.utility:
//            MtvPreferences

public class MtvUtilAudioManager
{
    private class CallStateListener extends PhoneStateListener
    {

        public void onCallStateChanged(int i, String s)
        {
            MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("onCallStateChanged(state=").append(i).append(") is called").toString());
            i;
            JVM INSTR tableswitch 0 2: default 56
        //                       0 56
        //                       1 63
        //                       2 56;
               goto _L1 _L1 _L2 _L1
_L1:
            super.onCallStateChanged(i, s);
            return;
_L2:
            setAudioMute(true);
            if(true) goto _L1; else goto _L3
_L3:
        }

        final MtvUtilAudioManager this$0;

        private CallStateListener()
        {
            this$0 = MtvUtilAudioManager.this;
            super();
        }

    }

    public static class MtvAudioEffects extends SoundAlive
    {

        public static MtvAudioEffects getInstance(int i)
        {
            if(i <= -1)
                throw new IllegalArgumentException("Invalid Audio Session !");
            if(mSinleTonInstance == null || mSinleTonInstance.getAudioSessionId() != i)
            {
                resetResources();
                MtvUtilDebug.Low("MtvUtilAudioManager", "creating a new AudioEffect for the new AudioSession...");
                mSinleTonInstance = new MtvAudioEffects(0, i);
                mSinleTonInstance.setEnabled(true);
            }
            return mSinleTonInstance;
        }

        public static void resetResources()
        {
            if(mSinleTonInstance != null)
            {
                MtvUtilDebug.Low("MtvUtilAudioManager", "releasing Old AudioEffect resources...");
                mSinleTonInstance.setEnabled(false);
                mSinleTonInstance.release();
                mSinleTonInstance = null;
            }
        }

        public int getAudioSessionId()
        {
            return mAudioSessionId;
        }

        public void setPreset(int i)
        {
            MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("setPreset... ").append(i).append("mAudioSessionId...").append(mAudioSessionId).toString());
            short word0 = (short)i;
            try
            {
                super.usePreset(word0);
                return;
            }
            catch(IllegalStateException illegalstateexception)
            {
                illegalstateexception.printStackTrace();
                return;
            }
            catch(RuntimeException runtimeexception)
            {
                runtimeexception.printStackTrace();
            }
        }

        private static MtvAudioEffects mSinleTonInstance = null;
        private int mAudioSessionId;


        private MtvAudioEffects(int i, int j)
            throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException, RuntimeException
        {
            super(i, j);
            mAudioSessionId = 0;
            mAudioSessionId = j;
        }
    }


    private MtvUtilAudioManager()
    {
        mAudioManager = null;
        mContext = null;
        mBtA2DP = null;
        mLastRetainedVolumeLevel = 0;
        mLastRetainedVolumeLevelBT = 0;
        mLastRetainedVolumeLevelHeadset = 0;
        mMtvAppPlaybackContextManager = null;
        mMtvPreferences = null;
        mRouter = null;
        mCallStateListener = null;
    }

    private MtvUtilAudioManager(Context context)
    {
        mAudioManager = null;
        mContext = null;
        mBtA2DP = null;
        mLastRetainedVolumeLevel = 0;
        mLastRetainedVolumeLevelBT = 0;
        mLastRetainedVolumeLevelHeadset = 0;
        mMtvAppPlaybackContextManager = null;
        mMtvPreferences = null;
        mRouter = null;
        mCallStateListener = null;
        mContext = context;
        mMtvAppPlaybackContextManager = MtvAppPlaybackContextManager.getInstance();
        mMtvPreferences = new MtvPreferences(mContext);
        mAudioManager = (AudioManager)mContext.getSystemService("audio");
        mCallStateListener = new CallStateListener();
        ((TelephonyManager)mContext.getSystemService("phone")).listen(mCallStateListener, 32);
        BluetoothAdapter.getDefaultAdapter().getProfileProxy(context, serviceListener, 2);
        mRouter = (MediaRouter)context.getSystemService("media_router");
        setRouteTypes(1);
    }

    public static MtvUtilAudioManager getInstance(Context context)
    {
        if(mMtvUtilAudioManager == null)
            mMtvUtilAudioManager = new MtvUtilAudioManager(context);
        return mMtvUtilAudioManager;
    }

    private int getLastRetainedVolume()
    {
        if(isBTConnected())
            return mLastRetainedVolumeLevelBT;
        if(isHeadsetConnected())
            return mLastRetainedVolumeLevelHeadset;
        else
            return mLastRetainedVolumeLevel;
    }

    private static int getPresetValue(int i)
    {
        if(i != 0)
        {
            if(i == 1)
                return 11;
            if(i == 2)
                return 12;
            if(i == 3)
                return 2;
        }
        return 10;
    }

    private boolean isMuted()
    {
        return mAudioManager.getStreamVolume(3) == 0;
    }

    private void removeCallStateListener()
    {
        ((TelephonyManager)mContext.getSystemService("phone")).listen(mCallStateListener, 0);
    }

    public static void reset()
    {
        if(mMtvUtilAudioManager != null)
            mMtvUtilAudioManager.removeCallStateListener();
        mMtvUtilAudioManager = null;
    }

    private void selectRouteInt(int i)
    {
        if(mRouter == null)
        {
            MtvUtilDebug.Error("MtvUtilAudioManager", "selectRouteInt : mRouter is NULL !!");
            return;
        }
        android.media.MediaRouter.RouteInfo routeinfo;
        if(i == 0)
        {
            routeinfo = mRouter.getDefaultRoute();
        } else
        {
            int j = mRouter.getRouteCount();
            MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("selectRouteInt : N : ").append(j).toString());
            for(i = 0; i < j; i++)
            {
                routeinfo = mRouter.getRouteAt(i);
                if((routeinfo.getSupportedTypes() & mRouteTypes) != 0 && routeinfo != mRouter.getDefaultRoute())
                    MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("selectRouteInt : Route Selected! : ").append(i).toString());
            }

            routeinfo = mRouter.getA2dpRoute();
        }
        if(routeinfo != null)
        {
            mRouter.selectRoute(mRouteTypes, routeinfo);
            return;
        } else
        {
            MtvUtilDebug.Mid("MtvUtilAudioManager", "selectRouteInt : routeInfo is NULL!");
            return;
        }
    }

    private void setLastRetainedVolume(int i)
    {
        MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("setLastRetainedVolume() : volume= ").append(i).toString());
        if(isBTConnected())
        {
            mLastRetainedVolumeLevelBT = i;
            return;
        }
        if(isHeadsetConnected())
        {
            mLastRetainedVolumeLevelHeadset = i;
            return;
        } else
        {
            mLastRetainedVolumeLevel = i;
            return;
        }
    }

    private void setRouteTypes(int i)
    {
        mRouteTypes = i;
    }

    public boolean checkIsCalling()
    {
        int i = ((TelephonyManager)mContext.getSystemService("phone")).getCallState();
        MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("checkIsCalling() - tm.getCallState(): ").append(i).toString());
        if(i == 2 || i == 1)
        {
            MtvUtilDebug.Low("MtvUtilAudioManager", "checkIsCalling() - in call ");
            return true;
        } else
        {
            return false;
        }
    }

    public void closeBluetoothProxy()
    {
        if(mBtA2DP != null)
            BluetoothAdapter.getDefaultAdapter().closeProfileProxy(2, mBtA2DP);
    }

    public int getCurrentVolume()
    {
        return mAudioManager.getStreamVolume(3);
    }

    public int getVolumeLevel()
    {
        int i = mAudioManager.getStreamVolume(3);
        MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("getVolumeLevel() : volume= ").append(i).toString());
        return i;
    }

    public boolean isBTConnected()
    {
        String s = mAudioManager.getParameters("audioParam;outDevice");
        if(s == null || "".equals(s))
            return false;
        return (Integer.valueOf(s).intValue() & 0x380) != 0;
    }

    public boolean isBluetoothA2dpConnected()
    {
        return mAudioManager.isBluetoothA2dpOn();
    }

    public boolean isHeadsetConnected()
    {
        if(mAudioManager.isWiredHeadsetOn())
        {
            MtvUtilDebug.Low("MtvUtilAudioManager", "isHeadsetConnected(): connected");
            return true;
        } else
        {
            MtvUtilDebug.Low("MtvUtilAudioManager", "isHeadsetConnected(): not - connected");
            return false;
        }
    }

    public boolean isRecordActive()
    {
        return mAudioManager.isRecordActive();
    }

    public void loseFocus()
    {
        mAudioManager.abandonAudioFocus(mAudioFocusChangeListner);
    }

    public void registerMediaButtonReceiver()
    {
        MtvUtilDebug.Low("MtvUtilAudioManager", "registerMediaButtonReceiver...");
        mAudioManager.registerMediaButtonEventReceiver(new ComponentName(mContext.getPackageName(), com/samsung/sec/mtv/reciever/MtvBroadcastReceiver.getName()));
    }

    public int setAudioEffect(int i, boolean flag)
    {
        Object obj;
        MtvUtilDebug.Low("MtvUtilAudioManager", "setAudioEffect() :: ");
        obj = mMtvAppPlaybackContextManager.getCurrentContext();
        if(obj == null) goto _L2; else goto _L1
_L1:
        obj = ((MtvAppPlaybackContext) (obj)).getComponents().getAudio().getControlInterface();
        if(obj == null) goto _L2; else goto _L3
_L3:
        int j;
        MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("AudioControlInterface setSoundEffect").append(i).toString());
        j = ((IMtvOneSegAudioControl) (obj)).getAudioSessionId();
        MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("getAudioSessionId :: ").append(j).toString());
        if(j == -1) goto _L5; else goto _L4
_L4:
        if(!isHeadsetConnected()) goto _L7; else goto _L6
_L6:
        if(!Build.MODEL.equals("SC-04E")) goto _L9; else goto _L8
_L8:
        ((IMtvOneSegAudioControl) (obj)).setSoundEffect(1, i);
_L11:
        if(flag)
            mMtvPreferences.setAudioEffect(i);
_L2:
        return 0;
_L9:
        try
        {
            MtvAudioEffects.getInstance(j).setPreset(getPresetValue(i));
        }
        // Misplaced declaration of an exception variable
        catch(Object obj)
        {
            MtvUtilDebug.High("MtvUtilAudioManager", "Sound ALive Effect not supported from framework, IllegalArgumentException");
        }
        continue; /* Loop/switch isn't completed */
_L7:
        if(Build.MODEL.equals("SC-04E"))
        {
            ((IMtvOneSegAudioControl) (obj)).setSoundEffect(0, i);
            continue; /* Loop/switch isn't completed */
        }
        MtvAudioEffects.getInstance(j).setPreset(10);
        continue; /* Loop/switch isn't completed */
_L5:
        MtvUtilDebug.Error("MtvUtilAudioManager", "setAudioEffect() :: Invalid Session ID");
        if(true) goto _L11; else goto _L10
_L10:
    }

    public int setAudioEnable(boolean flag)
    {
        if(checkIsCalling() && flag)
        {
            MtvUtilDebug.Low("MtvUtilAudioManager", "setAudioEnable() request ignored while call");
            return 0;
        }
        MtvAppPlaybackContext mtvappplaybackcontext = mMtvAppPlaybackContextManager.getCurrentContext();
        if(mtvappplaybackcontext != null)
        {
            if(flag)
                mtvappplaybackcontext.getComponents().getAudio().enable();
            else
                mtvappplaybackcontext.getComponents().getAudio().disable();
            return 1;
        } else
        {
            return -1;
        }
    }

    public int setAudioMode(int i)
    {
        MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("inside setAudioMode... playerAudioMode = ").append(i).toString());
        Object obj = mMtvAppPlaybackContextManager.getCurrentContext();
        if(obj != null)
        {
            obj = ((MtvAppPlaybackContext) (obj)).getComponents().getAudio().getControlInterface();
            if(obj != null)
            {
                MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("AudioControlInterface setAudioMode").append(i).toString());
                boolean flag = ((IMtvOneSegAudioControl) (obj)).setAudioMode(i);
                MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("AudioControlInterface setAudioMode retVal:").append(flag).toString());
            }
        }
        return 0;
    }

    public void setAudioMute(boolean flag)
    {
        boolean flag1;
        Object obj;
        MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("inside setAudioMute : mute: ").append(flag).toString());
        flag1 = flag;
        if(checkIsCalling())
        {
            flag1 = flag;
            if(!flag)
            {
                MtvUtilDebug.Low("MtvUtilAudioManager", "setAudioMute() unmute request ignored while call");
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

    public void setAvStreaming(boolean flag)
    {
        MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("setAvStreaming (").append(flag).append(")").toString());
        BluetoothAdapter bluetoothadapter = BluetoothAdapter.getDefaultAdapter();
        if(bluetoothadapter != null)
        {
            MtvUtilDebug.Low("MtvUtilAudioManager", "btAdapter not null");
            bluetoothadapter.setScmstContentProtection(flag);
        }
    }

    public void setVolumeLevel(int i)
    {
        if(i <= 0)
            setLastRetainedVolume(0);
        MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("setVolumeLevel() : volume= ").append(i).toString());
        mAudioManager.setStreamVolume(3, i, 0);
    }

    public void stopOtherSound()
    {
        if(!checkIsCalling())
        {
            if(mAudioManager != null)
            {
                mAudioManager.requestAudioFocus(mAudioFocusChangeListner, 3, 1);
                MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append(" stopOtherSound DCHECKFOCUS: ").append(mAudioManager.getCurrentAudioFocusPackageName()).toString());
                if(mAudioManager.getCurrentAudioFocusPackageName().equals("com.samsung.sec.mtv"))
                {
                    MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append(" stopOtherSound DCHECKFOCUS: ").append(mAudioManager.getCurrentAudioFocusPackageName()).toString());
                    isFocused = true;
                } else
                {
                    isFocused = false;
                }
                setAudioMute(false);
                if(isBTConnected())
                    setAvStreaming(true);
            }
            return;
        } else
        {
            MtvUtilDebug.High("MtvUtilAudioManager", "stopOtherSound called while on Call... Cannot proceed...");
            return;
        }
    }

    public void transferToBT()
    {
        MtvUtilDebug.High("MtvUtilAudioManager", "transferToBT");
        setAvStreaming(true);
        if(isBluetoothA2dpConnected())
        {
            MtvUtilDebug.High("MtvUtilAudioManager", "BT already connected, so routing to BT");
            selectRouteInt(1);
            MtvLiveBroadcastReciever.getInstance(mContext).notifyAllListener(9, null);
            return;
        } else
        {
            MtvUtilDebug.High("MtvUtilAudioManager", "No BT connected, so trying to connect to BT");
            Intent intent = new Intent("android.bluetooth.devicepicker.action.LAUNCH");
            intent.putExtra("android.bluetooth.devicepicker.extra.NEED_AUTH", true);
            intent.putExtra("android.bluetooth.devicepicker.extra.FILTER_TYPE", 6);
            intent.putExtra("android.bluetooth.FromHeadsetActivity", true);
            intent.setFlags(0x10000000);
            mContext.startActivity(intent);
            return;
        }
    }

    public void transferToPhone()
    {
        MtvUtilDebug.Low("MtvUtilAudioManager", "transferToPhone() routing to default");
        selectRouteInt(0);
        MtvLiveBroadcastReciever.getInstance(mContext).notifyAllListener(9, null);
    }

    public void unRegisterMediaButtonReceiver()
    {
        MtvUtilDebug.Low("MtvUtilAudioManager", "unRegisterMediaButtonReceiver...");
        mAudioManager.unregisterMediaButtonEventReceiver(new ComponentName(mContext.getPackageName(), com/samsung/sec/mtv/reciever/MtvBroadcastReceiver.getName()));
    }

    public boolean updateCurrentAudioEffectAndMode()
    {
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("updateCurrentAudioEffectAndMode... preferenceValues :AudioEffect=").append(mMtvPreferences.getAudioEffect()).append(" AudioLanguage=").append(mMtvPreferences.getAudioLanguage()).toString());
        setAudioEffect(mMtvPreferences.getAudioEffect(), false);
        setAudioMode(mMtvPreferences.getAudioLanguage());
        return true;
    }

    public void volumeDown()
    {
        MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("volumeDown() start: lastRetainedVolume =").append(getLastRetainedVolume()).append(getVolumeLevel()).toString());
        if(!isFocused)
            stopOtherSound();
        if(isMuted() && mAudioManager.getStreamVolume(3) == 0)
            mAudioManager.setStreamVolume(3, getLastRetainedVolume() + 1, 0);
        setLastRetainedVolume(0);
        mAudioManager.adjustStreamVolume(3, -1, 0);
        MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("volumeDown() end : volume ").append(getVolumeLevel()).toString());
    }

    public void volumeMute()
    {
        if(isMuted())
        {
            MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("volumeMute() : unmuted ,mLastRetainedVolumeLevel= ").append(getLastRetainedVolume()).toString());
            mAudioManager.setStreamVolume(3, getLastRetainedVolume(), 0);
            setLastRetainedVolume(0);
            return;
        } else
        {
            setLastRetainedVolume(mAudioManager.getStreamVolume(3));
            mAudioManager.setStreamVolume(3, 0, 0);
            MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("volumeMute() : muted ,mLastRetainedVolumeLevel= ").append(getLastRetainedVolume()).toString());
            return;
        }
    }

    public void volumeUp()
    {
        MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("volumeUp() start: lastRetainedVolume =").append(getLastRetainedVolume()).append(getVolumeLevel()).toString());
        if(!isFocused)
            stopOtherSound();
        if(isMuted() && mAudioManager.getStreamVolume(3) == 0)
            mAudioManager.setStreamVolume(3, getLastRetainedVolume() - 1, 0);
        setLastRetainedVolume(0);
        mAudioManager.adjustStreamVolume(3, 1, 0);
        MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("volumeUp() end : volume ").append(getVolumeLevel()).toString());
    }

    public static final int AUDIO_MANAGER_VOLUME_MUTE = 0;
    public static final int AUDIO_MODE_ALL = 0;
    public static final int AUDIO_MODE_MAIN = 1;
    public static final int AUDIO_MODE_SUB = 2;
    private static final String TAG = "MtvUtilAudioManager";
    public static boolean isFocused = true;
    private static MtvUtilAudioManager mMtvUtilAudioManager = null;
    private android.media.AudioManager.OnAudioFocusChangeListener mAudioFocusChangeListner = new android.media.AudioManager.OnAudioFocusChangeListener() {

        public void onAudioFocusChange(int i)
        {
            i;
            JVM INSTR tableswitch -2 1: default 32
        //                       -2 61
        //                       -1 61
        //                       0 32
        //                       1 33;
               goto _L1 _L2 _L2 _L1 _L3
_L1:
            return;
_L3:
            MtvUtilDebug.Low("MtvUtilAudioManager", "OnAudioFocusChangeListener() : AUDIOFOCUS_GAIN");
            MtvUtilAudioManager.isFocused = true;
            setAudioMute(false);
            setAvStreaming(true);
            return;
_L2:
            MtvUtilAudioManager.isFocused = false;
            setAudioMute(true);
            MtvUtilDebug.Low("MtvUtilAudioManager", (new StringBuilder()).append("OnAudioFocusChangeListener() : AUDIOFOCUS_LOSS_").append(i).toString());
            setAvStreaming(false);
            Intent intent = new Intent();
            intent.setAction("MTV_MINIMODE_AUDIO_FOCUS_LOSS");
            if(mContext != null)
            {
                mContext.sendBroadcast(intent);
                return;
            }
            if(true) goto _L1; else goto _L4
_L4:
        }

        final MtvUtilAudioManager this$0;

            
            {
                this$0 = MtvUtilAudioManager.this;
                super();
            }
    }
;
    private AudioManager mAudioManager;
    private BluetoothA2dp mBtA2DP;
    private CallStateListener mCallStateListener;
    private Context mContext;
    private int mLastRetainedVolumeLevel;
    private int mLastRetainedVolumeLevelBT;
    private int mLastRetainedVolumeLevelHeadset;
    private MtvAppPlaybackContextManager mMtvAppPlaybackContextManager;
    private MtvPreferences mMtvPreferences;
    private int mRouteTypes;
    private MediaRouter mRouter;
    private android.bluetooth.BluetoothProfile.ServiceListener serviceListener = new android.bluetooth.BluetoothProfile.ServiceListener() {

        public void onServiceConnected(int i, BluetoothProfile bluetoothprofile)
        {
            mBtA2DP = (BluetoothA2dp)bluetoothprofile;
        }

        public void onServiceDisconnected(int i)
        {
            mBtA2DP = null;
        }

        final MtvUtilAudioManager this$0;

            
            {
                this$0 = MtvUtilAudioManager.this;
                super();
            }
    }
;



/*
    static BluetoothA2dp access$102(MtvUtilAudioManager mtvutilaudiomanager, BluetoothA2dp bluetootha2dp)
    {
        mtvutilaudiomanager.mBtA2DP = bluetootha2dp;
        return bluetootha2dp;
    }

*/

}
