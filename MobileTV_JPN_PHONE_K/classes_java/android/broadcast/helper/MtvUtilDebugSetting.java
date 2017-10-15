// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.helper;


public class MtvUtilDebugSetting
{

    private MtvUtilDebugSetting()
    {
        iLevel = 15;
        iModule = 0xffffff;
    }

    public static MtvUtilDebugSetting getInstance()
    {
        if(iSelfInstance == null)
            iSelfInstance = new MtvUtilDebugSetting();
        return iSelfInstance;
    }

    public int getDebugValuesOfModule()
    {
        return iModule;
    }

    public int getDebugValuesforLevel()
    {
        return iLevel;
    }

    public boolean isAllowedDebugLevel(int i)
    {
        boolean flag = false;
        if((iLevel & i) > 0)
            flag = true;
        return flag;
    }

    public boolean isAllowedModuleForDebug(int i)
    {
        boolean flag = false;
        if((iModule & i) > 0)
            flag = true;
        return flag;
    }

    public void setDebugValuesForLevel(int i, int j)
    {
        if(j == 1)
            iLevel = iLevel | i;
        else
        if(j == 0)
        {
            iLevel = iLevel & (~i | 0xff000000);
            return;
        }
    }

    public void setDebugValuesOfModule(int i, int j)
    {
        if(j == 1)
            iModule = iModule | i;
        else
        if(j == 0)
        {
            iModule = iModule & (~i | 0xff000000);
            return;
        }
    }

    public static final int DBG_APPBASE = 4096;
    public static final int DBG_BML = 1;
    public static final int DBG_CHNGUIDE = 8;
    public static final int DBG_FRAGMENTS = 64;
    public static final int DBG_FRAMEWORK = 16384;
    public static final int DBG_FRAMEWORK_UTILTY = 32768;
    public static final int DBG_HELPER = 1024;
    public static final int DBG_LEVEL_ERROR = 8;
    public static final int DBG_LEVEL_HIGH = 4;
    public static final int DBG_LEVEL_LOW = 1;
    public static final int DBG_LEVEL_MID = 2;
    public static final int DBG_LIVE = 2;
    public static final int DBG_LOCAL = 4;
    public static String DBG_NAME_ERROR = "Error";
    public static String DBG_NAME_HIGH = "High";
    public static String DBG_NAME_LOW = "Low";
    public static String DBG_NAME_MID = "Mid";
    public static final int DBG_OFF = 0;
    public static final int DBG_ON = 1;
    public static final int DBG_PLAYBACK_CTX = 2048;
    public static final int DBG_PLAYER = 8192;
    public static final int DBG_RESERVATION = 512;
    public static final int DBG_TESTMODE = 32;
    public static final int DBG_TVLINK = 16;
    public static final int DBG_UI_COMMON = 128;
    public static final int DBG_UTILITY = 256;
    public static String MdlNclassNames[] = {
        "Bml:MtvAppBml,MtvAppBmlConstants,IMtvAppBmlAnimationListener,IMtvAppBmlDialogListener,IMtvAppBmlSurfaceListener,MtvBMLManager,MtvCProBMInfo,MtvUiBmlSurfaceView,MtvUiBmlNumKeyPadFragment,MtvUiBmlKeyPadControlFragment,MtvUiBmlDialogFrag,MtvUiBmlDialog,MtvUiBmlBasicControlFrag,MtvUiBmlAnimation,IMtvUiBmlActivity,MtvOneSegBmlViewControlImpl,MtvOneSegBmlEngineControl,MtvNativeBmlEngineImpl,IMtvNativeBmlViewListener,IMtvNativeBmlEngineListener,MtvOneSegBmlParams", "Live:MtvUiLivePlayer,ErrorDialogFragment,ProgInfoFrag", "Local:MtvUiFilePlayer,MtvUiFilePlayerImgFrag,MtvUiFilePlayerVidFrag", "ChnGuide:MtvUiChangeArea,MtvUiChannelGuide,MtvUiChannelSchedule,MtvUiFragChannelList,MtvUiFragReservationList,MtvUiFragTVFilesList,MtvUiFragTVLinkList,MtvUiSetArea", "TvLink:MtvUiTvLinks", "TestMode:MtvUiTestMode,MtvUiActivtyTestFragment", "Provider:IMtvProgramManager,MtvArea,MtvAreaManager,MtvBMLManager,MtvChannel,MtvChannelManager,MtvCProBMInfo,MtvFile,MtvFileManager,MtvProgram,MtvProgramManager,MtvProvider,MtvReservation,MtvReservationManager,DatabaseHelper", "Ui_Common: MtvUiCaptureFrag,MtvUiDialogsFrag,MtvUiFrag,MtvUiFragHandler,MtvUiLockFrag,MtvUiMainFrag,MtvUiManualReservation,MtvUiMemInfoFrag,MtvUiPopUpActivity,MtvUiProgInfoFrag,MtvUiRecordFrag,MtvUiRemoveList,MtvUiScheduleFailedInfo,MtvUiSettingsFrag,MtvUiSleepTimerDialogFrag,MtvUiStationData,MtvUiStatusBarFrag,MtvUiTvlinkInfoFrag,MtvUiVolumeControlBarFrag", "Utility:MtvAreaStationInfo,MtvBatteryInfo,MtvConstants,MtvFileDBException,MtvPreferences,MtvUtilAppService,MtvUtilAudioManager,MtvUtilConfigSetting,MtvUtilConfigSettingControl,MtvUtilCrypto,MtvUtilMemoryStatus,MtvUtilSetReservationAlarm", "Configration:MtvUiConfigration,MtvUiFragmentConfigration", 
        "AppService:MtvAppAndroidService,MtvAppAndroidServiceBinder,onMtvAppAndroidServiceListener,MtvBroadcastReciever", "PlaybackContext:MtvAppPlaybackContext,MtvAppPlaybackContextManager,MtvAppPlaybackState,MtvAppProgramAttributes,MtvAppProgramComponents", "AppBase:MtvAppPlayerOneSeg,IMtvAppPlaybackStateListener,IMtvAppProgramAttributeListener", "NexPlayer:MtvNexPlayerImpl,MtvNexPlayerCompControlImpl", "OneSeg:MtvOneSegFactory,MtvOneSegService,SDtvControl", "FW_Utility:MtvURI,MtvComponent,MtvOneSegChannel,MtvOneSegPlayer,MtvOneSegProgram,MtvOneSegSignal,MtvOneSegTVLink"
    };
    public static final int NUM_DBG_MDL = 16;
    private static MtvUtilDebugSetting iSelfInstance = null;
    private int iLevel;
    private int iModule;

}
