// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.utility;

import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import com.samsung.sec.mtv.provider.MtvChannel;
import com.samsung.sec.mtv.provider.MtvChannelManager;
import java.util.Observable;

// Referenced classes of package com.samsung.sec.mtv.utility:
//            MtvUtilMemoryStatus

public final class MtvPreferences extends Observable
{

    public MtvPreferences(Context context)
    {
        mContext = context;
        mPreferences = context.getSharedPreferences("com.samsung.sec.mtv.utility", 0);
    }

    public int getAntennaOnOff()
    {
        return mPreferences.getInt("pref_launch_antenna_int", 0);
    }

    public int getAudioEffect()
    {
        return mPreferences.getInt("pref_audio_effect", 0);
    }

    public int getAudioLanguage()
    {
        return mPreferences.getInt("pref_audio_language", 0);
    }

    public boolean getAutoPlayNext()
    {
        return mPreferences.getBoolean("pref_auto_play_next", true);
    }

    public int getAutoPowerOffTime()
    {
        return mPreferences.getInt("pref_auto_power_off_time", 0);
    }

    public boolean getBoolean(String s, boolean flag)
    {
        return mPreferences.getBoolean(s, flag);
    }

    public int getBrightnessLevel()
    {
        return mPreferences.getInt("pref_brightness_level", 3);
    }

    public float getBrightnessValue()
    {
        return mBrightnessTable[getBrightnessLevel()];
    }

    public int getBroadcastDataLocationMode()
    {
        return mPreferences.getInt("pref_broadcast_location", 0);
    }

    public int getBroadcastDataManufactureMode()
    {
        return mPreferences.getInt("pref_broadcast_manufacture", 0);
    }

    public int getBroadcastDataNotifyMode()
    {
        return mPreferences.getInt("pref_broadcast_notify", 0);
    }

    public int getBroadcastImageLocationStorage()
    {
        if(!MtvUtilMemoryStatus.isExternalMemoryAvailable())
            setBroadcastImageLocationStorage(1);
        return mPreferences.getInt("pref_image_location_storage", 1);
    }

    public int getBroadcastSetRecordingMode()
    {
        return mPreferences.getInt("pref_broadcast_set_recording", 0);
    }

    public int getColorTone()
    {
        return mPreferences.getInt("pref_screen_colortone", 1);
    }

    public int getComingReservationID()
    {
        return mPreferences.getInt("pref_coming_reserveration_id", -1);
    }

    public int getCurrentSlot()
    {
        return mPreferences.getInt("pref_current_slot", 0);
    }

    public int getDisplaySize()
    {
        return mPreferences.getInt("pref_display_size", 0);
    }

    public boolean getFrameIPEnabled()
    {
        return mPreferences.getBoolean("pref_frameip", false);
    }

    public int getInt(String s, int i)
    {
        return mPreferences.getInt(s, i);
    }

    public boolean getIsAntenaDialogRequired()
    {
        return mPreferences.getBoolean("is_antena_dialog_required", true);
    }

    public boolean getIsDtvStartedByFromMiniMode()
    {
        return mPreferences.getBoolean("dtv_statred_from_mini_mode", false);
    }

    public boolean getIsDtvStartedByReminderAlert()
    {
        return mPreferences.getBoolean("pref_reserve_dtv_started", false);
    }

    public boolean getIsFileFormatImage()
    {
        return mPreferences.getBoolean("pref_file_format", false);
    }

    public boolean getIsFilePlayMiniMode()
    {
        return mPreferences.getBoolean("file_play_mini_mode", false);
    }

    public boolean getIsLivePlayMiniMode()
    {
        return mPreferences.getBoolean("live_play_mini_mode", false);
    }

    public boolean getIsLivePlayMode()
    {
        return mPreferences.getBoolean("live_play_mode", false);
    }

    public long getLastLivePlayBackDestroyTime()
    {
        return mPreferences.getLong("pref_last_live_playback_destroy", 0L);
    }

    public String getLatestChannelNameForDisplay(boolean flag)
    {
        int i;
        MtvChannel mtvchannel;
        mtvchannel = null;
        i = getLatestVChannel();
        if(i <= 0 || i >= 25) goto _L2; else goto _L1
_L1:
        mtvchannel = MtvChannelManager.findByVChannel(mContext, i);
_L4:
        if(mtvchannel != null)
            return mtvchannel.mChannelName;
        break; /* Loop/switch isn't completed */
_L2:
        if(i > -1)
        {
            int j = getLatestPChannel();
            mtvchannel = MtvChannelManager.findByPChannel(mContext, j);
        }
        if(true) goto _L4; else goto _L3
_L3:
        int k = getLatestPChannel();
        if(flag && k > -1)
            return (new StringBuilder()).append("Ch: ").append(k).toString();
        else
            return "";
    }

    public int getLatestChannelNumberForDisplay()
    {
        int i;
label0:
        {
            int j = getLatestVChannel();
            if(j > 0)
            {
                i = j;
                if(j < 25)
                    break label0;
            }
            i = getLatestPChannel();
        }
        return i;
    }

    public int getLatestFileIndex()
    {
        return mPreferences.getInt("pref_latest_file_index", 0);
    }

    public int getLatestPChannel()
    {
        return mPreferences.getInt("pref_latest_pchannel", -1);
    }

    public int getLatestPChannelFromVChannel()
    {
label0:
        {
            int i = getLatestVChannel();
            int j;
            if(i > 0 && i < 25)
            {
                MtvChannel mtvchannel = MtvChannelManager.findByVChannel(mContext, i);
                if(mtvchannel != null)
                    i = mtvchannel.mPhysicalNum;
            } else
            {
                i = getLatestPChannel();
            }
            if(i >= 13)
            {
                j = i;
                if(i <= 52)
                    break label0;
            }
            MtvUtilDebug.High("MtvPreferences", "Channel Nunber not in range ! Returning Default Channel");
            j = 13;
        }
        return j;
    }

    public String getLatestPchservicename()
    {
        return mPreferences.getString("pref_latest_pchannelServiceName", "");
    }

    public int getLatestServiceID()
    {
        return mPreferences.getInt("pref_latest_pchannelServiceId", 0);
    }

    public int getLatestVChannel()
    {
        return mPreferences.getInt("pref_latest_vchannel", -1);
    }

    public int getLatestVChannelMultiChannel()
    {
        return mPreferences.getInt("pref_latest_multichannelNo", 0);
    }

    public boolean getLaunchAntennaAlert()
    {
        return mPreferences.getBoolean("pref_launch_antenna", false);
    }

    public Object getLivePlayerMode()
    {
        return null;
    }

    public String getNextChannelInfo()
    {
        MtvUtilDebug.Low("MtvPreferences", "setNextChannelInfo is called....getNextChannelInfo :");
        return mPreferences.getString("nextChannel", mContext.getResources().getString(0x7f07028a));
    }

    public String getNextFileInfo()
    {
        return mPreferences.getString("nextFile", "");
    }

    public String getPreChannelInfo()
    {
        return mPreferences.getString("preChannel", mContext.getResources().getString(0x7f07028a));
    }

    public String getPreFileInfo()
    {
        return mPreferences.getString("preFile", "");
    }

    public int getReservationAlertID()
    {
        int i = mPreferences.getInt("pref_reserve_alert_id", -1);
        MtvUtilDebug.High("MtvPreferences", (new StringBuilder()).append("getReservationAlertID() - reserve Id: ").append(i).toString());
        return i;
    }

    public int getReserveAlertFrom()
    {
        MtvUtilDebug.High("MtvPreferences", "getReserveAlertFrom()");
        return mPreferences.getInt("pref_reserve_alert_from", -1);
    }

    public int getSaveToStorage()
    {
        if(!MtvUtilMemoryStatus.isExternalMemoryAvailable())
            setSaveToStorage(1);
        return mPreferences.getInt("pref_save_to_storage", 1);
    }

    public int getSelectedFileIndex()
    {
        return mPreferences.getInt("pref_select_file_index", 0);
    }

    public String getString(String s, String s1)
    {
        return mPreferences.getString(s, s1);
    }

    public boolean isAudio51Enabled()
    {
        return mPreferences.getBoolean("pref_audio_51", false);
    }

    public boolean isCaptionEnabled()
    {
        return mPreferences.getBoolean("pref_caption", true);
    }

    public boolean isOutdoorVisibility()
    {
        return mPreferences.getInt("pref_outdoor_visibility", 0) == 1;
    }

    public boolean isReservationProgram()
    {
        return mPreferences.getBoolean("pref_while_scheduled_program", false);
    }

    public boolean isSViewCoverClosed()
    {
        return mPreferences.getBoolean("s_view_cover_closed", false);
    }

    public boolean isSViewRunning()
    {
        return mPreferences.getBoolean("s_view_running", false);
    }

    public boolean isframeIPEnabled()
    {
        return mPreferences.getBoolean("pref_frameip", false);
    }

    public void setAntennaOnOff(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_launch_antenna_int", i);
        editor.commit();
    }

    public void setAudio51Enabled(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("pref_audio_51", flag);
        editor.commit();
    }

    public void setAudioEffect(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_audio_effect", i);
        editor.commit();
        setChanged();
        notifyObservers("pref_audio_effect");
    }

    public void setAudioLanguage(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_audio_language", i);
        editor.commit();
    }

    public void setAutoPlayNext(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("pref_auto_play_next", flag);
        editor.commit();
    }

    public void setAutoPowerOffTime(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_auto_power_off_time", i);
        editor.commit();
    }

    public void setBoolean(String s, boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean(s, flag);
        editor.commit();
    }

    public void setBrightnessLevel(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_brightness_level", i);
        editor.commit();
    }

    public void setBroadcastDataLocationMode(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_broadcast_location", i);
        editor.commit();
    }

    public void setBroadcastDataManufactureMode(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_broadcast_manufacture", i);
        editor.commit();
    }

    public void setBroadcastDataNotifyMode(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_broadcast_notify", i);
        editor.commit();
    }

    public void setBroadcastImageLocationStorage(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_image_location_storage", i);
        editor.commit();
        setChanged();
        notifyObservers("pref_image_location_storage");
    }

    public void setBroadcastSetRecordingMode(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_broadcast_set_recording", i);
        editor.commit();
    }

    public void setCaptionEnabled(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("pref_caption", flag);
        editor.commit();
    }

    public void setColorTone(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_screen_colortone", i);
        editor.commit();
    }

    public void setComingReservationID(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_coming_reserveration_id", i);
        editor.commit();
    }

    public void setCurrentSlot(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_current_slot", i);
        editor.commit();
    }

    public void setDisplaySize(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_display_size", i);
        editor.commit();
    }

    public void setFrameIPEnabled(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("pref_frameip", flag);
        editor.commit();
    }

    public void setInt(String s, int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt(s, i);
        editor.commit();
    }

    public void setIsAntenaDialogRequired(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("is_antena_dialog_required", flag);
        editor.commit();
    }

    public void setIsDtvStartedByFromMiniMode(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("dtv_statred_from_mini_mode", flag);
        editor.commit();
    }

    public void setIsDtvStartedByReminderAlert(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("pref_reserve_dtv_started", flag);
        editor.commit();
    }

    public void setIsFileFormatImage(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("pref_file_format", flag);
        editor.commit();
    }

    public void setIsFilePlayMiniMode(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("file_play_mini_mode", flag);
        editor.commit();
    }

    public void setIsLivePlayMiniMode(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("live_play_mini_mode", flag);
        editor.commit();
    }

    public void setIsLivePlayMode(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("live_play_mode", flag);
        editor.commit();
    }

    public void setIsReservationProgram(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("pref_while_scheduled_program", flag);
        editor.commit();
    }

    public void setLastLivePlayBackDestroyTime(long l)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putLong("pref_last_live_playback_destroy", l);
        editor.commit();
    }

    public void setLatestFileIndex(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_latest_file_index", i);
        editor.commit();
    }

    public void setLatestPChannel(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_latest_pchannel", i);
        editor.commit();
    }

    public void setLatestPchservicename(String s)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putString("pref_latest_pchannelServiceName", s);
        editor.commit();
    }

    public void setLatestServiceID(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_latest_pchannelServiceId", i);
        editor.commit();
    }

    public void setLatestVChannel(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_latest_vchannel", i);
        editor.commit();
    }

    public void setLatestVChannelMultiChannel(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_latest_multichannelNo", i);
        editor.commit();
    }

    public void setLaunchAntennaAlert(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("pref_launch_antenna", flag);
        editor.commit();
    }

    public void setNextChannelInfo(String s)
    {
        MtvUtilDebug.Low("MtvPreferences", (new StringBuilder()).append("setNextChannelInfo is called....nextChannel :").append(s).toString());
        String s1 = s;
        if("null".equals(s))
            s1 = mContext.getResources().getString(0x7f07028a);
        s = mPreferences.edit();
        s.putString("nextChannel", s1);
        s.commit();
    }

    public void setNextFileInfo(String s)
    {
        String s1 = s;
        if("null".equals(s))
            s1 = mContext.getResources().getString(0x7f07028a);
        s = mPreferences.edit();
        s.putString("nextFile", s1);
        s.commit();
    }

    public void setOutdoorVisibility(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        int i;
        if(flag)
            i = 1;
        else
            i = 0;
        editor.putInt("pref_outdoor_visibility", i);
        editor.commit();
    }

    public void setPreChannelInfo(String s)
    {
        String s1 = s;
        if("null".equals(s))
            s1 = mContext.getResources().getString(0x7f07028a);
        s = mPreferences.edit();
        s.putString("preChannel", s1);
        s.commit();
    }

    public void setPreFileInfo(String s)
    {
        String s1 = s;
        if("null".equals(s))
            s1 = mContext.getResources().getString(0x7f07028a);
        s = mPreferences.edit();
        s.putString("preFile", s1);
        s.commit();
    }

    public void setReservAlertFrom(int i)
    {
        MtvUtilDebug.High("MtvPreferences", (new StringBuilder()).append("setReservAlertFrom() :VALUE ").append(i).toString());
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_reserve_alert_from", i);
        editor.commit();
    }

    public void setReservationAlertID(int i)
    {
        MtvUtilDebug.Low("MtvPreferences", (new StringBuilder()).append(" setReservationAlertID() - reserve Id : ").append(i).toString());
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_reserve_alert_id", i);
        editor.commit();
    }

    public void setSViewCoverClosed(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("s_view_cover_closed", flag);
        editor.commit();
    }

    public void setSViewRunning(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putBoolean("s_view_running", flag);
        editor.commit();
    }

    public void setSaveToStorage(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_save_to_storage", i);
        editor.commit();
    }

    public void setSelectedFileIndex(int i)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putInt("pref_select_file_index", i);
        editor.commit();
    }

    public void setString(String s, String s1)
    {
        android.content.SharedPreferences.Editor editor = mPreferences.edit();
        editor.putString(s, s1);
        editor.commit();
    }

    public static final String AUDIO_OUTPUT_MODE = "audio_output_mode";
    public static final String PREF_KEY_AUDIO_51 = "pref_audio_51";
    public static final String PREF_KEY_AUDIO_EFFECT = "pref_audio_effect";
    public static final String PREF_KEY_AUDIO_LANGUAGE = "pref_audio_language";
    private static final String PREF_KEY_AUTO_PLAY_NEXT = "pref_auto_play_next";
    private static final String PREF_KEY_AUTO_POWER_OFF_TIME = "pref_auto_power_off_time";
    public static final String PREF_KEY_BRIGHTNESS_LEVEL = "pref_brightness_level";
    public static final String PREF_KEY_BROADCAST_LOCATION = "pref_broadcast_location";
    public static final String PREF_KEY_BROADCAST_MANUFACTURE = "pref_broadcast_manufacture";
    public static final String PREF_KEY_BROADCAST_NOTIFY = "pref_broadcast_notify";
    public static final String PREF_KEY_BROADCAST_SET_RECORDING = "pref_broadcast_set_recording";
    public static final String PREF_KEY_CAPTION = "pref_caption";
    private static final String PREF_KEY_COMING_RESERVATION_ID = "pref_coming_reserveration_id";
    public static final String PREF_KEY_CURRENT_SLOT = "pref_current_slot";
    public static final String PREF_KEY_DISPLAY_SIZE = "pref_display_size";
    private static final String PREF_KEY_DTV_STARTED_FROM_MINIMODE = "dtv_statred_from_mini_mode";
    public static final String PREF_KEY_FILE_FORMAT = "pref_file_format";
    public static final String PREF_KEY_FILE_PLAYBACK_MODE = "pref_file_playback_mode";
    public static final String PREF_KEY_FRAMEIP = "pref_frameip";
    public static final String PREF_KEY_IMAGE_LOCATION_STORAGE = "pref_image_location_storage";
    public static final String PREF_KEY_IS_ANTENA_DIALOG_REQUIRED = "is_antena_dialog_required";
    public static final String PREF_KEY_IS_FILE_MINI_MODE = "file_play_mini_mode";
    private static final String PREF_KEY_IS_LAUNCH_ANTENNA = "pref_launch_antenna";
    private static final String PREF_KEY_IS_LAUNCH_ANTENNA_INT = "pref_launch_antenna_int";
    public static final String PREF_KEY_IS_LIVE_MINI_MODE = "live_play_mini_mode";
    public static final String PREF_KEY_IS_LIVE_MODE = "live_play_mode";
    private static final String PREF_KEY_LAST_LIVE_PLAYBACK_DESTROY = "pref_last_live_playback_destroy";
    public static final String PREF_KEY_LATEST_FILE_INDEX = "pref_latest_file_index";
    public static final String PREF_KEY_LATEST_MULTICHANNELNO = "pref_latest_multichannelNo";
    public static final String PREF_KEY_LATEST_PCHANNEL = "pref_latest_pchannel";
    public static final String PREF_KEY_LATEST_PCHSERVICEID = "pref_latest_pchannelServiceId";
    public static final String PREF_KEY_LATEST_PCHSERVICENAME = "pref_latest_pchannelServiceName";
    public static final String PREF_KEY_LATEST_VCHANNEL = "pref_latest_vchannel";
    private static final String PREF_KEY_NEXT_CHANNEL = "nextChannel";
    private static final String PREF_KEY_NEXT_FILE = "nextFile";
    public static final String PREF_KEY_OUTDOOR_VISIBILITY = "pref_outdoor_visibility";
    private static final String PREF_KEY_PRE_CHANNEL = "preChannel";
    private static final String PREF_KEY_PRE_FILE = "preFile";
    private static final String PREF_KEY_RESERVE_ALERT_FROM = "pref_reserve_alert_from";
    private static final String PREF_KEY_RESERVE_ALERT_ID = "pref_reserve_alert_id";
    private static final String PREF_KEY_RESERVE_REMINDER_ALERT_DTV_STARTED = "pref_reserve_dtv_started";
    public static final String PREF_KEY_SAVE_TO_STORAGE = "pref_save_to_storage";
    public static final String PREF_KEY_SCREEN_COLORTONE = "pref_screen_colortone";
    private static final String PREF_KEY_SELECT_FILE_INDEX = "pref_select_file_index";
    public static final String PREF_KEY_SOUND = "pref_sound";
    public static final String PREF_KEY_SUPERIMPOSE = "pref_super_impose";
    private static final String PREF_KEY_S_VIEW_COVER_CLOSED = "s_view_cover_closed";
    private static final String PREF_KEY_S_VIEW_RUNNING = "s_view_running";
    private static final String PREF_KEY_WHILE_RESERVE_PROGRAM = "pref_while_scheduled_program";
    public static final String SHARED_PREFERENCES = "com.samsung.sec.mtv.utility";
    public static final String TAG = "MtvPreferences";
    private float mBrightnessTable[] = {
        0.12F, 0.16F, 0.35F, 0.47F, 0.75F, 0.98F
    };
    private final Context mContext;
    private final SharedPreferences mPreferences;
}
