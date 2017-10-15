.class public Landroid/broadcast/helper/MtvUtilDebugSetting;
.super Ljava/lang/Object;
.source "MtvUtilDebugSetting.java"


# static fields
.field public static final DBG_APPBASE:I = 0x1000

.field public static final DBG_BML:I = 0x1

.field public static final DBG_CHNGUIDE:I = 0x8

.field public static final DBG_FRAGMENTS:I = 0x40

.field public static final DBG_FRAMEWORK:I = 0x4000

.field public static final DBG_FRAMEWORK_UTILTY:I = 0x8000

.field public static final DBG_HELPER:I = 0x400

.field public static final DBG_LEVEL_ERROR:I = 0x8

.field public static final DBG_LEVEL_HIGH:I = 0x4

.field public static final DBG_LEVEL_LOW:I = 0x1

.field public static final DBG_LEVEL_MID:I = 0x2

.field public static final DBG_LIVE:I = 0x2

.field public static final DBG_LOCAL:I = 0x4

.field public static DBG_NAME_ERROR:Ljava/lang/String; = null

.field public static DBG_NAME_HIGH:Ljava/lang/String; = null

.field public static DBG_NAME_LOW:Ljava/lang/String; = null

.field public static DBG_NAME_MID:Ljava/lang/String; = null

.field public static final DBG_OFF:I = 0x0

.field public static final DBG_ON:I = 0x1

.field public static final DBG_PLAYBACK_CTX:I = 0x800

.field public static final DBG_PLAYER:I = 0x2000

.field public static final DBG_RESERVATION:I = 0x200

.field public static final DBG_TESTMODE:I = 0x20

.field public static final DBG_TVLINK:I = 0x10

.field public static final DBG_UI_COMMON:I = 0x80

.field public static final DBG_UTILITY:I = 0x100

.field public static MdlNclassNames:[Ljava/lang/String; = null

.field public static final NUM_DBG_MDL:I = 0x10

.field private static iSelfInstance:Landroid/broadcast/helper/MtvUtilDebugSetting;


# instance fields
.field private iLevel:I

.field private iModule:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Bml:MtvAppBml,MtvAppBmlConstants,IMtvAppBmlAnimationListener,IMtvAppBmlDialogListener,IMtvAppBmlSurfaceListener,MtvBMLManager,MtvCProBMInfo,MtvUiBmlSurfaceView,MtvUiBmlNumKeyPadFragment,MtvUiBmlKeyPadControlFragment,MtvUiBmlDialogFrag,MtvUiBmlDialog,MtvUiBmlBasicControlFrag,MtvUiBmlAnimation,IMtvUiBmlActivity,MtvOneSegBmlViewControlImpl,MtvOneSegBmlEngineControl,MtvNativeBmlEngineImpl,IMtvNativeBmlViewListener,IMtvNativeBmlEngineListener,MtvOneSegBmlParams"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Live:MtvUiLivePlayer,ErrorDialogFragment,ProgInfoFrag"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Local:MtvUiFilePlayer,MtvUiFilePlayerImgFrag,MtvUiFilePlayerVidFrag"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ChnGuide:MtvUiChangeArea,MtvUiChannelGuide,MtvUiChannelSchedule,MtvUiFragChannelList,MtvUiFragReservationList,MtvUiFragTVFilesList,MtvUiFragTVLinkList,MtvUiSetArea"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TvLink:MtvUiTvLinks"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TestMode:MtvUiTestMode,MtvUiActivtyTestFragment"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Provider:IMtvProgramManager,MtvArea,MtvAreaManager,MtvBMLManager,MtvChannel,MtvChannelManager,MtvCProBMInfo,MtvFile,MtvFileManager,MtvProgram,MtvProgramManager,MtvProvider,MtvReservation,MtvReservationManager,DatabaseHelper"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Ui_Common: MtvUiCaptureFrag,MtvUiDialogsFrag,MtvUiFrag,MtvUiFragHandler,MtvUiLockFrag,MtvUiMainFrag,MtvUiManualReservation,MtvUiMemInfoFrag,MtvUiPopUpActivity,MtvUiProgInfoFrag,MtvUiRecordFrag,MtvUiRemoveList,MtvUiScheduleFailedInfo,MtvUiSettingsFrag,MtvUiSleepTimerDialogFrag,MtvUiStationData,MtvUiStatusBarFrag,MtvUiTvlinkInfoFrag,MtvUiVolumeControlBarFrag"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Utility:MtvAreaStationInfo,MtvBatteryInfo,MtvConstants,MtvFileDBException,MtvPreferences,MtvUtilAppService,MtvUtilAudioManager,MtvUtilConfigSetting,MtvUtilConfigSettingControl,MtvUtilCrypto,MtvUtilMemoryStatus,MtvUtilSetReservationAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Configration:MtvUiConfigration,MtvUiFragmentConfigration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AppService:MtvAppAndroidService,MtvAppAndroidServiceBinder,onMtvAppAndroidServiceListener,MtvBroadcastReciever"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PlaybackContext:MtvAppPlaybackContext,MtvAppPlaybackContextManager,MtvAppPlaybackState,MtvAppProgramAttributes,MtvAppProgramComponents"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "AppBase:MtvAppPlayerOneSeg,IMtvAppPlaybackStateListener,IMtvAppProgramAttributeListener"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "NexPlayer:MtvNexPlayerImpl,MtvNexPlayerCompControlImpl"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "OneSeg:MtvOneSegFactory,MtvOneSegService,SDtvControl"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "FW_Utility:MtvURI,MtvComponent,MtvOneSegChannel,MtvOneSegPlayer,MtvOneSegProgram,MtvOneSegSignal,MtvOneSegTVLink"

    aput-object v2, v0, v1

    sput-object v0, Landroid/broadcast/helper/MtvUtilDebugSetting;->MdlNclassNames:[Ljava/lang/String;

    .line 68
    const-string v0, "Error"

    sput-object v0, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_ERROR:Ljava/lang/String;

    .line 69
    const-string v0, "High"

    sput-object v0, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_HIGH:Ljava/lang/String;

    .line 70
    const-string v0, "Mid"

    sput-object v0, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_MID:Ljava/lang/String;

    .line 71
    const-string v0, "Low"

    sput-object v0, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_LOW:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iSelfInstance:Landroid/broadcast/helper/MtvUtilDebugSetting;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/16 v0, 0xf

    iput v0, p0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iLevel:I

    .line 199
    const v0, 0xffffff

    iput v0, p0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iModule:I

    .line 200
    return-void
.end method

.method public static getInstance()Landroid/broadcast/helper/MtvUtilDebugSetting;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iSelfInstance:Landroid/broadcast/helper/MtvUtilDebugSetting;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-direct {v0}, Landroid/broadcast/helper/MtvUtilDebugSetting;-><init>()V

    sput-object v0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iSelfInstance:Landroid/broadcast/helper/MtvUtilDebugSetting;

    .line 93
    :cond_0
    sget-object v0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iSelfInstance:Landroid/broadcast/helper/MtvUtilDebugSetting;

    return-object v0
.end method


# virtual methods
.method public getDebugValuesOfModule()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iModule:I

    return v0
.end method

.method public getDebugValuesforLevel()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iLevel:I

    return v0
.end method

.method public isAllowedDebugLevel(I)Z
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 167
    .local v0, "bReturnValue":Z
    iget v1, p0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iLevel:I

    and-int/2addr v1, p1

    if-lez v1, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 170
    :cond_0
    return v0
.end method

.method public isAllowedModuleForDebug(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, "bReturnValue":Z
    iget v1, p0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iModule:I

    and-int/2addr v1, p1

    if-lez v1, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 187
    :cond_0
    return v0
.end method

.method public setDebugValuesForLevel(II)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "value"    # I

    .prologue
    .line 104
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 106
    iget v0, p0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iLevel:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iLevel:I

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    if-nez p2, :cond_0

    .line 112
    iget v0, p0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iLevel:I

    xor-int/lit8 v1, p1, -0x1

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iLevel:I

    goto :goto_0
.end method

.method public setDebugValuesOfModule(II)V
    .locals 3
    .param p1, "MdlValue"    # I
    .param p2, "value"    # I

    .prologue
    .line 135
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 137
    iget v0, p0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iModule:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iModule:I

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    if-nez p2, :cond_0

    .line 142
    iget v0, p0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iModule:I

    xor-int/lit8 v1, p1, -0x1

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Landroid/broadcast/helper/MtvUtilDebugSetting;->iModule:I

    goto :goto_0
.end method
