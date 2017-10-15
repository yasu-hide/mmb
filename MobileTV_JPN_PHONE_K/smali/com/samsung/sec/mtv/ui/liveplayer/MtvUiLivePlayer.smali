.class public Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
.source "MtvUiLivePlayer.java"

# interfaces
.implements Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;
.implements Lcom/samsung/sec/mtv/ui/bml/IMtvUiBmlActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;,
        Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$RunnableShowSignalAlertDialog;,
        Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;,
        Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;
    }
.end annotation


# static fields
.field public static final ACTION_EPGAPP_VIEW:Ljava/lang/String; = "ACTION_EPGAPP_VIEW"

.field private static final CLOSE_FROM_NOTI:Ljava/lang/String; = "closing_from_notification"

.field private static final DELAY_TIMER_FOR_START_CHANNEL:J = 0x9c4L

.field public static final EPG_INTENT:Ljava/lang/String; = "EPG_INTENT"

.field public static final FLING_MAJOR_MOVE:I = 0x64

.field private static final MIN_RECORDING_TIME:I = 0x6

.field public static final MTV_CHANNEL_NO_MAX_VAL_62:I = 0x3e

.field public static final MTV_CHANNEL_NO_MIN_VAL_13:I = 0xd

.field private static final RECORDING_FAILED:Ljava/lang/String; = "recordingFailed"

.field private static final RECORDING_INSUFF_MEM:I = 0x1

.field private static final RECORDING_START_FAILURE:I = -0x1

.field private static final RECORDING_START_SUCCESS:I = 0x0

.field private static RunnableReservationEndPopupExpire:Ljava/lang/Runnable; = null

.field private static SLEEP_TIMER_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MtvUiLivePlayer"

.field private static final TIMEOUT_EXTA_INTERVAL_VALUE:I = 0x3e8

.field private static final TIMEOUT_INTERVAL_VALUE:I = 0xbb8

.field private static bFisrtDTVLaunch:Z

.field private static bIsChannelChngd:Z

.field private static isBMLFullView:Z

.field private static isInBGRecording:Z

.field private static mExitToast:Landroid/widget/Toast;

.field private static mNotificationManager:Landroid/app/NotificationManager;

.field private static mPendingBackendNotification:Ljava/lang/Object;

.field private static showStatusNotification:Z


# instance fields
.field private RunnableCheckIsReservationAndStart:Ljava/lang/Runnable;

.field private RunnableRemoveRotateButton:Ljava/lang/Runnable;

.field private RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

.field private RunnableRemoveWeakSignalDialogue:Ljava/lang/Runnable;

.field private RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

.field private RunnableUpdateSignalInfo:Ljava/lang/Runnable;

.field private RunnableresetComingReservationID:Ljava/lang/Runnable;

.field private bIsBuffering:Z

.field private bIsRecordingFailed:Z

.field private bKeyGuardlock:Z

.field private epgAreaId:I

.field private epgChNo:I

.field private epgServiceId:I

.field private gen_toast:Landroid/widget/Toast;

.field private isStartedFromChannelScheduleForRecord:Z

.field private isStopRecCommandInProcess:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mChannelGestureDetector:Landroid/view/GestureDetector;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mEpgIntent:Landroid/content/Intent;

.field private mExitAppDialog:Landroid/app/DialogFragment;

.field private mExitProgressDialog:Landroid/app/ProgressDialog;

.field private mLiveUiMsgHandler:Landroid/os/Handler;

.field private mMinRecTime:Landroid/widget/Toast;

.field private mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

.field private mNoSignalAlertDialog:Landroid/app/DialogFragment;

.field private mPreviousChannelChangeTime:J

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReservationEndDialog:Landroid/app/DialogFragment;

.field private mRotationObserver:Landroid/database/ContentObserver;

.field private mRunnableUpdateCaptureToFrag:Ljava/lang/Runnable;

.field private mRunnableUpdateRecordComponents:Ljava/lang/Runnable;

.field private mRunnableUpdateRecordDuringLock:Ljava/lang/Runnable;

.field private optionsMenu:Landroid/view/Menu;

.field orientation:I

.field private restrictLaunch:Z

.field private runnableMenuKeyPress:Ljava/lang/Runnable;

.field private runnableRemoveMainFrag:Ljava/lang/Runnable;

.field private runnableShowNotification:Ljava/lang/Runnable;

.field private runnableVolumeDecreasing:Ljava/lang/Runnable;

.field private runnableVolumeEscalating:Ljava/lang/Runnable;

.field private shownToastforOperationNA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 159
    sput-boolean v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showStatusNotification:Z

    .line 160
    sput-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    .line 163
    sput-boolean v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBMLFullView:Z

    .line 197
    sput-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 200
    sput-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mPendingBackendNotification:Ljava/lang/Object;

    .line 201
    sput-boolean v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bFisrtDTVLaunch:Z

    .line 210
    sput-boolean v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isInBGRecording:Z

    .line 211
    sput v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->SLEEP_TIMER_NONE:I

    .line 213
    sput-boolean v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsChannelChngd:Z

    .line 5828
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$32;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$32;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableReservationEndPopupExpire:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;-><init>()V

    .line 167
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    .line 168
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 169
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitAppDialog:Landroid/app/DialogFragment;

    .line 170
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNoSignalAlertDialog:Landroid/app/DialogFragment;

    .line 172
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mReservationEndDialog:Landroid/app/DialogFragment;

    .line 174
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 175
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    .line 176
    iput v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->orientation:I

    .line 181
    iput v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    .line 182
    iput v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgServiceId:I

    .line 183
    iput v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgAreaId:I

    .line 184
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mEpgIntent:Landroid/content/Intent;

    .line 189
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMinRecTime:Landroid/widget/Toast;

    .line 190
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bKeyGuardlock:Z

    .line 191
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRotationObserver:Landroid/database/ContentObserver;

    .line 195
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->shownToastforOperationNA:Z

    .line 198
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 206
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    .line 207
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isStopRecCommandInProcess:Z

    .line 209
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsBuffering:Z

    .line 216
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isStartedFromChannelScheduleForRecord:Z

    .line 220
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$1;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->postHeadsetUpdate:Ljava/lang/Runnable;

    .line 237
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$2;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRunnableUpdateCaptureToFrag:Ljava/lang/Runnable;

    .line 245
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$3;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRunnableUpdateRecordComponents:Ljava/lang/Runnable;

    .line 255
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$4;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$4;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRunnableUpdateRecordDuringLock:Ljava/lang/Runnable;

    .line 348
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    .line 4426
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$9;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$9;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableVolumeEscalating:Ljava/lang/Runnable;

    .line 4439
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$10;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$10;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableVolumeDecreasing:Ljava/lang/Runnable;

    .line 4453
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$11;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$11;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableMenuKeyPress:Ljava/lang/Runnable;

    .line 4461
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$12;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$12;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableRemoveMainFrag:Ljava/lang/Runnable;

    .line 5540
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$26;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$26;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableShowNotification:Ljava/lang/Runnable;

    .line 5745
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$27;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$27;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveRotateButton:Ljava/lang/Runnable;

    .line 5757
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$28;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$28;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    .line 5763
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$29;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$29;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    .line 5789
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$30;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$30;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateSignalInfo:Ljava/lang/Runnable;

    .line 5811
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$31;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$31;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveWeakSignalDialogue:Ljava/lang/Runnable;

    .line 5864
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$33;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$33;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableresetComingReservationID:Ljava/lang/Runnable;

    .line 5873
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$34;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$34;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableCheckIsReservationAndStart:Ljava/lang/Runnable;

    .line 6431
    return-void
.end method

.method private CheckIsReservationPartialOrNone(I)V
    .locals 7
    .param p1, "statusID"    # I

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 5261
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v2, :cond_0

    .line 5262
    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 5264
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v0

    .line 5265
    .local v0, "CurrReserveId":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 5266
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v1

    .line 5267
    .local v1, "mOnGoingReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v1, :cond_1

    .line 5268
    packed-switch p1, :pswitch_data_0

    .line 5304
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "No Above"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5310
    .end local v1    # "mOnGoingReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_1
    :goto_0
    return-void

    .line 5271
    .restart local v1    # "mOnGoingReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :pswitch_0
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "CheckIsReservationPartialOrNone    :STATUS_FAIL_SIGNAL_ERROR"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5272
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-ne v2, v6, :cond_3

    .line 5273
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-ne v2, v4, :cond_2

    .line 5274
    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->CheckIsreservationAndUpdatefailureReason(I)V

    goto :goto_0

    .line 5276
    :cond_2
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->CheckIsreservationAndUpdatefailureReason(I)V

    goto :goto_0

    .line 5278
    :cond_3
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v2, :cond_1

    .line 5279
    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->CheckIsreservationAndUpdatefailureReason(I)V

    goto :goto_0

    .line 5285
    :pswitch_1
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "CheckIsReservationPartialOrNone    :STATUS_FAIL_MEMORY_ERROR"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5286
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-ne v2, v6, :cond_5

    .line 5288
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-ne v2, v4, :cond_4

    .line 5290
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->CheckIsreservationAndUpdatefailureReason(I)V

    goto :goto_0

    .line 5294
    :cond_4
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->CheckIsreservationAndUpdatefailureReason(I)V

    goto :goto_0

    .line 5297
    :cond_5
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v2, :cond_1

    .line 5299
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->CheckIsreservationAndUpdatefailureReason(I)V

    goto :goto_0

    .line 5268
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private CheckIsreservationAndUpdatefailureReason(I)V
    .locals 8
    .param p1, "FailStatusAndreason"    # I

    .prologue
    const v7, 0x7f070318

    .line 5313
    const-string v5, "MtvUiLivePlayer"

    const-string v6, "CheckIsreservationAndUpdatefailureReason"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5314
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v5

    invoke-static {p0, v5}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v3

    .line 5315
    .local v3, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    const/4 v1, 0x0

    .line 5316
    .local v1, "isExit":Z
    const/4 v2, 0x0

    .line 5318
    .local v2, "message":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 5319
    const-string v5, "MtvUiLivePlayer"

    const-string v6, "CheckIsreservationAndUpdatefailureReason() : invalid reservation"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5364
    :goto_0
    return-void

    .line 5323
    :cond_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReserveAlertFrom()I

    move-result v5

    if-nez v5, :cond_1

    .line 5324
    const-string v5, "MtvUiLivePlayer"

    const-string v6, "CheckIsreservationAndUpdatefailureReason() : OUT_OF_APP"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5325
    const/4 v1, 0x1

    .line 5331
    :goto_1
    iget v5, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v5, :cond_3

    .line 5333
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByFromMiniMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 5334
    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5345
    :goto_2
    iget v4, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    .line 5346
    .local v4, "type":I
    const-string v5, "MtvUiLivePlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FailStatusAndreason"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5347
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    .line 5348
    const/4 v5, 0x0

    sput-boolean v5, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isInBGRecording:Z

    .line 5350
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5351
    .local v0, "endBundle":Landroid/os/Bundle;
    const-string v5, "dialogType"

    const/4 v6, 0x7

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5352
    const-string v5, "reserve_end_exit"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5353
    const-string v5, "dialog_msg"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5354
    const-string v5, "reserve_type"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5356
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "signal_alert_retry_exit"

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 5357
    const-string v5, "MtvUiLivePlayer"

    const-string v6, "startReservationProgram :NoSignal popup closed"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5358
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "signal_alert_terminate"

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 5359
    const-string v5, "MtvUiLivePlayer"

    const-string v6, "startReservationProgram :mNoSignalTerminate popup closed"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5360
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "exit_confirmation"

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 5361
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "save_exit_confirmation"

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 5362
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->endFailReservationProgram(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 5328
    .end local v0    # "endBundle":Landroid/os/Bundle;
    .end local v4    # "type":I
    :cond_1
    const-string v5, "MtvUiLivePlayer"

    const-string v6, "CheckIsreservationAndUpdatefailureReason() : not OUT_OF_APP"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5329
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 5336
    :cond_2
    const v5, 0x7f07031a

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 5340
    :cond_3
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByFromMiniMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 5341
    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 5343
    :cond_4
    const v5, 0x7f070317

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2
.end method

.method private LaunchChannelGuideActivity(I)V
    .locals 3
    .param p1, "tab_id"    # I

    .prologue
    .line 6144
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v1, :cond_0

    .line 6145
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6146
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 6149
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6150
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "initialize"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6151
    const-string v1, "tab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6152
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6153
    return-void
.end method

.method private LaunchFilePLayerActivity(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6157
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6158
    .local v0, "Fileintent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6159
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startActivity(Landroid/content/Intent;)V

    .line 6160
    const-string v1, "MtvUiLivePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting File PLayer from Minimode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 6161
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnLock()V

    return-void
.end method

.method static synthetic access$10000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableVolumeEscalating:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableVolumeDecreasing:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    return-object v0
.end method

.method static synthetic access$11600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showLowBatteryPopup()V

    return-void
.end method

.method static synthetic access$11700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->LaunchChannelGuideActivity(I)V

    return-void
.end method

.method static synthetic access$11800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$12100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    return-object v0
.end method

.method static synthetic access$12600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$12900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showStatusNotification:Z

    return v0
.end method

.method static synthetic access$13000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$13100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$13200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$13700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$13800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    return-object v0
.end method

.method static synthetic access$13900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showNotification(Z)V

    return-void
.end method

.method static synthetic access$14000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$14100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRunnableUpdateRecordDuringLock:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$14200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableRemoveMainFrag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$14302(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object p1
.end method

.method static synthetic access$14400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$14500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$14600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateNotification()V

    return-void
.end method

.method static synthetic access$14700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRotateButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$14800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->sleepTimer:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->handleFinish(Z)V

    return-void
.end method

.method static synthetic access$15000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$15100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$15200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getCurrentChannelProgramTitle(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$15400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$15500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$15600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getSignalLevel()I

    move-result v0

    return v0
.end method

.method static synthetic access$15700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$15800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$15900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setScreenRatio(I)V

    return-void
.end method

.method static synthetic access$16000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveWeakSignalDialogue:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$16100()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableReservationEndPopupExpire:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$16200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$16300()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    return-object v0
.end method

.method static synthetic access$16400()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    return-object v0
.end method

.method static synthetic access$16500()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    return-object v0
.end method

.method static synthetic access$16600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->endReservationProgram(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$16700()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    return-object v0
.end method

.method static synthetic access$16800()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    return-object v0
.end method

.method static synthetic access$16900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableresetComingReservationID:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCaptionView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCaptionView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateCaptions()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getNextPreviousChannelNumber(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->invalidateLiveViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$4100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRunnableUpdateCaptureToFrag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/view/Menu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->optionsMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Landroid/view/Menu;)Landroid/view/Menu;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # Landroid/view/Menu;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->optionsMenu:Landroid/view/Menu;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showToast(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndStart()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->cancelRecording()V

    return-void
.end method

.method static synthetic access$5400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showErrorDialog(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->CheckIsreservationAndUpdatefailureReason(I)V

    return-void
.end method

.method static synthetic access$5702(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 139
    sput-object p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mPendingBackendNotification:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->stopRecording()V

    return-void
.end method

.method static synthetic access$5900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->CheckIsReservationPartialOrNone(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I[I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # [I

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnStateChange(I[I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRunnableUpdateRecordComponents:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->handleUnlock()V

    return-void
.end method

.method static synthetic access$7400()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBMLFullView:Z

    return v0
.end method

.method static synthetic access$7500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Z[I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # Z
    .param p2, "x2"    # [I

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setRotateButtonVisibility(Z[I)V

    return-void
.end method

.method static synthetic access$7600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->lockImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->lockImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->blockUiEventsForReservation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showToastforNoOperation(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateSignalInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method private blockUiEventsForReservation()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3168
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3169
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blockUiEventsForReservation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isReservationProgram()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   :::   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3170
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isReservationProgram()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3171
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v2, :cond_3

    .line 3172
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blockUiEventsForReservation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   :::   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3173
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_2

    .line 3182
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 3176
    goto :goto_0

    :cond_3
    move v0, v1

    .line 3179
    goto :goto_0
.end method

.method private cancelRecording()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3140
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 3141
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 3142
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 3145
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3147
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, 0xbb8

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 3148
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3149
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateSignalInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3150
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 3153
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->dismissProgressDialog()V

    .line 3155
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->cancelRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    .line 3156
    const v0, 0x7f0702af

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3157
    return-void
.end method

.method private checkCondition()Z
    .locals 5

    .prologue
    .line 6044
    const/4 v0, 0x0

    .line 6045
    .local v0, "check":Z
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v1

    .line 6046
    .local v1, "orientation":I
    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isPhoneLocked()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 6048
    :goto_0
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCondition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6049
    return v0

    .line 6046
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIsCalling(Z)Z
    .locals 4
    .param p1, "isExit"    # Z

    .prologue
    .line 4499
    const/4 v0, 0x0

    .line 4500
    .local v0, "result":Z
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 4502
    if-eqz p1, :cond_1

    .line 4503
    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 4504
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    .line 4508
    :goto_0
    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    const v2, 0x7f070306

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 4509
    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 4510
    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4511
    const/4 v0, 0x1

    .line 4519
    :goto_1
    const-string v1, "MtvUiLivePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsCalling() + result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 4520
    return v0

    .line 4506
    :cond_0
    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    .line 4514
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 4517
    :cond_2
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    goto :goto_1
.end method

.method private checkIsMassStorageUSBEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4524
    const/4 v0, 0x0

    .line 4525
    .local v0, "result":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4527
    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 4528
    const-string v1, ""

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    .line 4532
    :goto_0
    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    const v2, 0x7f07027f

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 4533
    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 4534
    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4535
    const/4 v0, 0x1

    .line 4542
    :cond_0
    :goto_1
    const-string v1, "MtvUiLivePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsMassStorageUSBEnabled() + result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 4543
    return v0

    .line 4530
    :cond_1
    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    .line 4537
    :cond_2
    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 4538
    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 4539
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    goto :goto_1
.end method

.method private checkIsRelaunched()Z
    .locals 6

    .prologue
    .line 4479
    const/4 v2, 0x0

    .line 4480
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isTaskRoot()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getComingReservationID()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 4481
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4482
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 4483
    .local v1, "intentAction":Ljava/lang/String;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4486
    const/4 v2, 0x1

    .line 4488
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentAction":Ljava/lang/String;
    :cond_0
    const-string v3, "MtvUiLivePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIsRelaunched() + result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 4489
    return v2
.end method

.method private checkIsReservationAndEnd(I)V
    .locals 7
    .param p1, "newStatus"    # I

    .prologue
    const/4 v6, -0x1

    .line 2744
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->shownToastforOperationNA:Z

    .line 2745
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v3, :cond_0

    .line 2747
    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 2749
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v2

    .line 2750
    .local v2, "reserve_id":I
    const-string v3, "MtvUiLivePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIsReservationAndEnd() newstatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  reserve_id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isReservationProgram()Z

    move-result v3

    if-eqz v3, :cond_3

    if-le v2, v6, :cond_3

    .line 2753
    invoke-static {p0, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v1

    .line 2754
    .local v1, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v1, :cond_3

    .line 2755
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 2756
    iget-wide v4, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-static {p0, v4, v5}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->isImmediateReservation(Landroid/content/Context;J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2757
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2758
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "dbId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2759
    const-string v3, "youNeedToShowAlert"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2763
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getComingReservationID()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 2764
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setComingReservationID(I)V

    .line 2766
    :cond_2
    invoke-static {p0, v1, p1}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 2770
    .end local v1    # "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_3
    return-void
.end method

.method private checkIsReservationAndStart()Z
    .locals 12

    .prologue
    .line 2341
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "checkIsReservationAndStart()"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    const/4 v4, 0x0

    .line 2343
    .local v4, "result":Z
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2346
    .local v1, "res_bundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2347
    const-string v7, "MtvUiLivePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " checkIsReservationAndStart() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "dbId"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    :cond_0
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->optionsMenu:Landroid/view/Menu;

    if-eqz v7, :cond_1

    .line 2350
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->optionsMenu:Landroid/view/Menu;

    invoke-interface {v7}, Landroid/view/Menu;->close()V

    .line 2351
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->optionsMenu:Landroid/view/Menu;

    .line 2358
    :cond_1
    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_11

    .line 2359
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 2361
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v7, :cond_10

    .line 2363
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v7, v8, :cond_2

    .line 2365
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "current context is scan/Local.. will wait until scan is cancelled and then start reservation..."

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v4

    .line 2443
    :goto_0
    return v7

    .line 2368
    :cond_2
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v7, v8, :cond_f

    .line 2369
    const-string v7, "dbId"

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2370
    .local v3, "reservation_id":I
    invoke-static {p0, v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v2

    .line 2371
    .local v2, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    const-string v7, "youNeedToShowAlert"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2372
    .local v5, "showAlert":Z
    if-eqz v2, :cond_8

    iget v7, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v7, :cond_8

    iget-wide v8, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_8

    .line 2376
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v7

    if-nez v7, :cond_6

    .line 2378
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    .line 2380
    const v6, 0x7f070287

    .line 2382
    .local v6, "toastMessageId":I
    iget v7, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v7, :cond_5

    .line 2383
    const v6, 0x7f070286

    .line 2388
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v8, 0x130

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2389
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v8, 0x130

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2391
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 2392
    const/4 v7, 0x0

    goto :goto_0

    .line 2384
    :cond_5
    iget v7, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 2385
    const v6, 0x7f070287

    goto :goto_1

    .line 2395
    .end local v6    # "toastMessageId":I
    :cond_6
    if-nez v5, :cond_e

    .line 2398
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "checkIsReservation : this may be a valid reservation,lets check it"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v7, v8, :cond_a

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v7

    const/16 v8, 0x5007

    if-ne v7, v8, :cond_a

    .line 2401
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2402
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->stopRecording()V

    .line 2431
    :cond_7
    :goto_2
    const/4 v4, 0x1

    .end local v2    # "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .end local v3    # "reservation_id":I
    .end local v5    # "showAlert":Z
    :cond_8
    :goto_3
    move v7, v4

    .line 2443
    goto/16 :goto_0

    .line 2404
    .restart local v2    # "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .restart local v3    # "reservation_id":I
    .restart local v5    # "showAlert":Z
    :cond_9
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "Recording Cancelled as the recording time is Less than required!"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->stopRecordTimer()V

    .line 2406
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->cancelRecording()V

    goto :goto_2

    .line 2408
    :cond_a
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_d

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v7, v8, :cond_d

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v7

    const/16 v8, 0x5007

    if-eq v7, v8, :cond_d

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v7

    if-eq v7, v3, :cond_d

    .line 2410
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v8

    invoke-static {v7, v8}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 2411
    .local v0, "onGoingreserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v0, :cond_b

    .line 2412
    iget v7, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_c

    .line 2413
    iget v7, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 2414
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    .line 2419
    :cond_b
    :goto_4
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservationAlertID(I)V

    .line 2420
    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startReservationProgram(Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    goto :goto_2

    .line 2415
    :cond_c
    iget v7, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v7, :cond_b

    .line 2416
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    goto :goto_4

    .line 2422
    .end local v0    # "onGoingreserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_d
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservationAlertID(I)V

    .line 2423
    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startReservationProgram(Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    goto :goto_2

    .line 2427
    :cond_e
    if-eqz v5, :cond_7

    .line 2428
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "checkIsReservation : showing reservation alert to user"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showReservationAlert()V

    goto/16 :goto_2

    .line 2435
    .end local v2    # "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .end local v3    # "reservation_id":I
    .end local v5    # "showAlert":Z
    :cond_f
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "checkIsReservation() : MW not initilized yet!!! "

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2438
    :cond_10
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "checkIsReservation() : MW not initilized yet!!! "

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2442
    :cond_11
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "checkIsReservation() : no current reservation"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private deleteMtvPlayer()V
    .locals 2

    .prologue
    .line 2295
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "inside deleteMtvPlayer..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 2297
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 2299
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    const/16 v1, 0x500f

    if-ne v0, v1, :cond_0

    .line 2301
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "cannot issue delete as already one delete operation is going on..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    :goto_0
    return-void

    .line 2305
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v0, :cond_1

    .line 2306
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->delete(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    goto :goto_0

    .line 2308
    :cond_1
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "mMtvPlayerOneSeg is null "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private endFailReservationProgram(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "endBundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x130

    .line 5367
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "endReservationProgram"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5368
    if-nez p1, :cond_1

    .line 5369
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "endReservationProgram -bundle null"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5395
    :cond_0
    :goto_0
    return-void

    .line 5373
    :cond_1
    const-string v2, "reserve_type"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 5374
    .local v1, "type":I
    const-string v2, "reserve_end_exit"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5376
    .local v0, "exit":Z
    if-nez v1, :cond_2

    .line 5378
    if-eqz v0, :cond_0

    .line 5380
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "endReservationProgram Exiting App after Stopping Record .... "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5381
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5382
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 5387
    :cond_2
    if-eqz v0, :cond_0

    .line 5389
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "endReservationProgram Exiting App.... "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5390
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5391
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private endReservationProgram(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "end"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x130

    .line 2699
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "endReservationProgram"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2700
    if-nez p1, :cond_1

    .line 2701
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "endReservationProgram -bundle null"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    :cond_0
    :goto_0
    return-void

    .line 2705
    :cond_1
    const-string v2, "reserve_type"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2706
    .local v1, "type":I
    const-string v2, "reserve_end_exit"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2708
    .local v0, "exit":Z
    if-nez v1, :cond_2

    .line 2709
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->stopRecording()V

    .line 2712
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByFromMiniMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2715
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "endReservationProgram Exiting App after Stopping Record .... "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2724
    :cond_2
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByFromMiniMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2726
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "endReservationProgram Exiting App.... "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private endReservationProgramAndShowAlert()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 2617
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "endReservationProgramAndShowAlert"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v6, :cond_0

    new-instance v6, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 2619
    :cond_0
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v6

    invoke-static {p0, v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v4

    .line 2620
    .local v4, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    const/4 v2, 0x0

    .line 2621
    .local v2, "isExit":Z
    const/4 v3, 0x0

    .line 2623
    .local v3, "message":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 2624
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "endReservationProgramAndShowAlert() : invalid reservation"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    :cond_1
    :goto_0
    return-void

    .line 2628
    :cond_2
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReserveAlertFrom()I

    move-result v6

    if-nez v6, :cond_6

    .line 2629
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "endReservationProgramAndShowAlert() : OUT_OF_APP"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    const/4 v2, 0x1

    .line 2631
    iget-wide v6, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-static {p0, v6, v7}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->isImmediateReservation(Landroid/content/Context;J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2632
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "endReservationProgramAndShowAlert() : OUT_OF_APP BUT CONTINEOUS"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    const/4 v2, 0x0

    .line 2640
    :cond_3
    :goto_1
    iget v6, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v6, :cond_8

    .line 2642
    if-eqz v2, :cond_7

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByFromMiniMode()Z

    move-result v6

    if-nez v6, :cond_7

    .line 2643
    const v6, 0x7f070319

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2654
    :goto_2
    iget v5, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    .line 2656
    .local v5, "type":I
    iget-wide v6, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-static {p0, v6, v7}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->isImmediateReservation(Landroid/content/Context;J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2657
    iget-wide v6, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-static {p0, v6, v7}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getImmediateReservation(Landroid/content/Context;J)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 2659
    iget-wide v6, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-static {p0, v6, v7}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getImmediateReservation(Landroid/content/Context;J)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v1

    .line 2660
    .local v1, "immediate_reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    iget v6, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-eqz v6, :cond_1

    .line 2665
    .end local v1    # "immediate_reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_4
    iget v6, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_a

    .line 2666
    iget v6, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-ne v6, v8, :cond_5

    .line 2667
    invoke-direct {p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    .line 2678
    :cond_5
    :goto_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2679
    .local v0, "endBundle":Landroid/os/Bundle;
    const-string v6, "dialogType"

    const/4 v7, 0x7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2680
    const-string v6, "reserve_end_exit"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2681
    const-string v6, "dialog_msg"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2682
    const-string v6, "reserve_type"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2684
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isResumed()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2687
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mReservationEndDialog:Landroid/app/DialogFragment;

    .line 2688
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mReservationEndDialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "reserve_end_dialog"

    invoke-virtual {v6, v7, v8}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2689
    sget-object v6, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableReservationEndPopupExpire:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2637
    .end local v0    # "endBundle":Landroid/os/Bundle;
    .end local v5    # "type":I
    :cond_6
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "endReservationProgramAndShowAlert() : not OUT_OF_APP"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2645
    :cond_7
    const v6, 0x7f07031a

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 2649
    :cond_8
    if-eqz v2, :cond_9

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByFromMiniMode()Z

    move-result v6

    if-nez v6, :cond_9

    .line 2650
    const v6, 0x7f070318

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 2652
    :cond_9
    const v6, 0x7f070317

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 2668
    .restart local v5    # "type":I
    :cond_a
    iget v6, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v6, :cond_5

    .line 2669
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    goto :goto_3

    .line 2693
    .restart local v0    # "endBundle":Landroid/os/Bundle;
    :cond_b
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "endReservationProgramAndShowAlert: isResumed() - false"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2694
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->endReservationProgram(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private getCurrentChannelProgramTitle(ZZ)Ljava/lang/String;
    .locals 12
    .param p1, "invalidate"    # Z
    .param p2, "appendCHNumber"    # Z

    .prologue
    const/4 v10, 0x0

    .line 2948
    const-string v7, ""

    .line 2949
    .local v7, "title":Ljava/lang/String;
    const-string v1, ""

    .line 2950
    .local v1, "channelName":Ljava/lang/String;
    const-string v6, ""

    .line 2951
    .local v6, "programName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2952
    .local v0, "channelInfo":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    const/4 v5, 0x0

    .line 2953
    .local v5, "programInfo":[Landroid/broadcast/helper/types/MtvOneSegProgram;
    if-nez p1, :cond_0

    .line 2954
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v0

    .line 2955
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v5

    .line 2958
    :cond_0
    const/4 v2, 0x0

    .line 2959
    .local v2, "currentProgram":Landroid/broadcast/helper/types/MtvOneSegProgram;
    const/4 v4, 0x0

    .line 2960
    .local v4, "isChannelNameset":Z
    if-eqz v0, :cond_2

    .line 2961
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    aget-object v8, v0, v10

    invoke-virtual {v8}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getNumberOfPhysicalIDs()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 2962
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getServiceID()I

    move-result v8

    aget-object v9, v0, v3

    invoke-virtual {v9}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalID()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 2964
    aget-object v8, v0, v10

    invoke-virtual {v8}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v1

    .line 2965
    const/4 v4, 0x1

    .line 2961
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2969
    .end local v3    # "i":I
    :cond_2
    const-string v9, "MtvUiLivePlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "channelInfo  ["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]channelName -["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]  isChannelNameset-"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v8, :cond_3

    .line 2976
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8, p2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestChannelNameForDisplay(Z)Ljava/lang/String;

    move-result-object v1

    .line 2980
    :cond_3
    if-eqz v5, :cond_7

    .line 2982
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getCurrentProgramDetails()Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v2

    .line 2983
    if-eqz v2, :cond_4

    .line 2984
    invoke-virtual {v2}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getProgName()Ljava/lang/String;

    move-result-object v6

    .line 2986
    :cond_4
    if-eqz v6, :cond_5

    const-string v8, "No program name"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2987
    const-string v6, ""

    .line 2993
    :cond_5
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2994
    return-object v7

    .line 2969
    :cond_6
    const-string v8, "channelInfo [null"

    goto :goto_1

    .line 2991
    :cond_7
    const-string v6, ""

    goto :goto_2
.end method

.method private getNextPreviousChannelNumber(Z)I
    .locals 11
    .param p1, "isNext"    # Z

    .prologue
    const/16 v10, 0x34

    const/16 v9, 0xd

    const/4 v8, 0x1

    .line 5688
    const/4 v2, -0x1

    .line 5689
    .local v2, "newPhyChannelNumber":I
    const/4 v3, -0x1

    .line 5690
    .local v3, "newVirtualChannelNum":I
    const/4 v4, 0x0

    .line 5691
    .local v4, "newserviceID":I
    const/4 v1, 0x0

    .line 5692
    .local v1, "newMultiChannelNumber":I
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v6

    .line 5693
    .local v6, "oldVirtualChannelNum":I
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v5

    .line 5696
    .local v5, "oldPhyChannelNum":I
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getCount(Landroid/content/Context;)I

    move-result v7

    if-ge v7, v8, :cond_5

    .line 5697
    const/4 v3, -0x1

    .line 5698
    if-lt v5, v9, :cond_0

    if-le v5, v10, :cond_1

    .line 5699
    :cond_0
    const/16 v2, 0xd

    .line 5737
    :goto_0
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 5738
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 5739
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 5740
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    move v5, v2

    .line 5741
    .end local v5    # "oldPhyChannelNum":I
    :goto_1
    return v5

    .line 5700
    .restart local v5    # "oldPhyChannelNum":I
    :cond_1
    if-ne v5, v9, :cond_2

    if-nez p1, :cond_2

    .line 5701
    const/16 v2, 0x34

    goto :goto_0

    .line 5702
    :cond_2
    if-ne v5, v10, :cond_3

    if-eqz p1, :cond_3

    .line 5703
    const/16 v2, 0xd

    goto :goto_0

    .line 5706
    :cond_3
    if-eqz p1, :cond_4

    .line 5707
    add-int/lit8 v2, v5, 0x1

    goto :goto_0

    .line 5709
    :cond_4
    add-int/lit8 v2, v5, -0x1

    goto :goto_0

    .line 5712
    :cond_5
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getCount(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v8, :cond_6

    .line 5713
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "getNextPreviousChannelNumber : only one channel on Air ,better to handle this before you reach here."

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5717
    :cond_6
    if-lez v6, :cond_8

    .line 5718
    if-eqz p1, :cond_7

    .line 5719
    invoke-static {p0, v6}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getNext(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 5727
    .local v0, "newMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :goto_2
    if-eqz v0, :cond_9

    .line 5728
    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    .line 5729
    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    goto :goto_0

    .line 5721
    .end local v0    # "newMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :cond_7
    invoke-static {p0, v6}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getPrevious(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .restart local v0    # "newMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    goto :goto_2

    .line 5725
    .end local v0    # "newMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :cond_8
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getFirstOnAir(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .restart local v0    # "newMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    goto :goto_2

    .line 5732
    :cond_9
    const/16 v2, 0xd

    .line 5733
    const/4 v3, -0x1

    .line 5734
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNotificationContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2939
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getCurrentChannelProgramTitle(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServiceID()I
    .locals 1

    .prologue
    .line 5626
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 5627
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getCurrentOpenedChannelServiceId()I

    move-result v0

    .line 5628
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSignalLevel()I
    .locals 1

    .prologue
    .line 5608
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 5609
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getSignalLevel()I

    move-result v0

    .line 5610
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleFinish(Z)V
    .locals 8
    .param p1, "isAbnormal"    # Z

    .prologue
    const/16 v7, 0x130

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1799
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "handleFinish() ::"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getRotation(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 1801
    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setRequestedOrientation(I)V

    .line 1806
    :goto_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1807
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1808
    :cond_0
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleFinish() :: isResumed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isResumed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->hideNotification()V

    .line 1811
    const/4 v0, 0x0

    .line 1813
    .local v0, "isAppCloseDone":Z
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_1

    .line 1814
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showExitingAppDialog()V

    .line 1815
    :cond_1
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "inside304"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isScheduledReservationProgram()V

    .line 1817
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1818
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v2, :cond_8

    .line 1820
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 1821
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v2, v3, :cond_6

    .line 1823
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exiting - OneSeg already initialized so deleting OneSeg and waiting till delete callback  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->removeOpenChannelMessages()V

    .line 1826
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->deleteMtvPlayer()V

    .line 1827
    const/4 v0, 0x1

    .line 1850
    :goto_1
    if-eqz v0, :cond_2

    .line 1852
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "handleFinish() :: isAppCloseDone"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->unregisterRecievers()V

    .line 1856
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->releaseAndDeletePartialWakeLock()V

    .line 1857
    invoke-virtual {p0, v5, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->requestSystemKeyEvent(IZ)Z

    .line 1859
    :cond_2
    if-eqz p1, :cond_3

    .line 1861
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Abnormal Exit Happened Stopping RemoteService!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1864
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x8000000

    invoke-static {v2, v6, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1865
    .local v1, "mRemoteServiceStartIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v4, 0x3a98

    invoke-static {v2, v1, v6, v4, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setBroadcastAlarmDelayed(Landroid/content/Context;Landroid/app/PendingIntent;IJ)Z

    .line 1866
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Abnormal Exit Happened Stopping RecorderService!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    .end local v1    # "mRemoteServiceStartIntent":Landroid/app/PendingIntent;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1869
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 1870
    return-void

    .line 1802
    .end local v0    # "isAppCloseDone":Z
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getRotation(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 1803
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1805
    :cond_5
    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1829
    .restart local v0    # "isAppCloseDone":Z
    :cond_6
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    const/16 v3, 0x5001

    if-ne v2, v3, :cond_7

    .line 1831
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Exiting - Create in Progress, so will be finish on Create callback"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1835
    :cond_7
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Got finish request during invalid state dont know what to do...So closing finishing the APP"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->releaseTunerAndFinish()V

    .line 1837
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1842
    :cond_8
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Exiting - Not initilized and also create is not in progress so finish"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->releaseTunerAndFinish()V

    .line 1844
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method private handleUnlock()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4213
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v2

    if-lez v2, :cond_0

    .line 4214
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->sleepTimer:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4215
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4216
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4218
    :cond_0
    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setPhoneLocked(Z)V

    .line 4219
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->unhideAllFragments()V

    .line 4220
    const/16 v2, 0xe2

    new-array v3, v6, [I

    invoke-direct {p0, v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnStateChange(I[I)V

    .line 4221
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnLock()V

    .line 4226
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .local v1, "progInfo":Landroid/app/Fragment;
    if-eqz v1, :cond_1

    .line 4228
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 4229
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 4230
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 4233
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_1
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->requestSystemKeyEvent(IZ)Z

    .line 4234
    const/16 v2, 0xbb

    invoke-virtual {p0, v2, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->requestSystemKeyEvent(IZ)Z

    .line 4235
    return-void
.end method

.method private hideNotification()V
    .locals 2

    .prologue
    .line 2929
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 2930
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2931
    :cond_0
    return-void
.end method

.method private initMtvPlayer()V
    .locals 15

    .prologue
    const v14, 0x7f07021d

    const/16 v13, 0x5002

    const/4 v12, -0x1

    const/16 v11, 0x12d

    const/4 v10, 0x1

    .line 2113
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "initMtvPlayer..."

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 2117
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 2118
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v6

    .line 2123
    .local v6, "validAreaCount":I
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v7, :cond_7

    .line 2126
    const-string v7, "MtvUiLivePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setting AutoPowerOff Time after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v7, v8, v9, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->setAlarm(Landroid/content/Context;JZ)V

    .line 2129
    if-lez v6, :cond_0

    .line 2132
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v14}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2134
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 2136
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v7, :cond_1

    .line 2137
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 2138
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 2140
    :cond_1
    const/4 v0, 0x0

    .line 2142
    .local v0, "bCreateStatus":Z
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2147
    invoke-static {p0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7, v8}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->enableBMLComponent(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 2148
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    .line 2150
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v7, v8, v9, v12}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;I)Z

    move-result v0

    .line 2151
    sget-boolean v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bFisrtDTVLaunch:Z

    if-eqz v7, :cond_2

    if-nez v0, :cond_2

    .line 2153
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->screwupCleanup()V

    .line 2154
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 2155
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v7, v8, v9, v12}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;I)Z

    move-result v0

    .line 2161
    :cond_2
    const/4 v7, 0x0

    sput-boolean v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bFisrtDTVLaunch:Z

    .line 2241
    .end local v0    # "bCreateStatus":Z
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v7, :cond_5

    .line 2242
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v7, v8, :cond_c

    .line 2244
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v11, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2246
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getSignalStatistics()Landroid/broadcast/helper/types/MtvOneSegSignal;

    move-result-object v2

    .line 2247
    .local v2, "mySignalObj":Landroid/broadcast/helper/types/MtvOneSegSignal;
    const/4 v5, 0x0

    .line 2248
    .local v5, "signalValue":I
    if-eqz v2, :cond_4

    .line 2249
    invoke-virtual {v2}, Landroid/broadcast/helper/types/MtvOneSegSignal;->getSignalQuality()I

    move-result v5

    .line 2250
    :cond_4
    if-eqz v5, :cond_5

    .line 2251
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveWeakSignalDialogue:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2269
    .end local v2    # "mySignalObj":Landroid/broadcast/helper/types/MtvOneSegSignal;
    .end local v5    # "signalValue":I
    :cond_5
    :goto_1
    if-lez v6, :cond_f

    .line 2271
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7, v10}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 2273
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->ordinal()I

    move-result v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_6

    .line 2274
    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->registerVideoSurfaceView(Z)V

    .line 2277
    :cond_6
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateCaptions()V

    .line 2278
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2279
    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setBMLLayoutFullView(Z)V

    .line 2290
    :goto_2
    return-void

    .line 2166
    :cond_7
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 2167
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 2168
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v7, v8, :cond_8

    .line 2170
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "current context is scanner... waiting for cancel  scan_complete.."

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v7, v8}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->cancelScanChannels(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    goto/16 :goto_0

    .line 2175
    :cond_8
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LIVETV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-eq v7, v8, :cond_9

    .line 2178
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 2179
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 2180
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 2182
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v7, :cond_3

    .line 2183
    const/4 v1, 0x0

    .line 2184
    .local v1, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v3

    .line 2185
    .local v3, "phyChannelNum":I
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v4

    .line 2187
    .local v4, "serviceId":I
    invoke-virtual {p0, v3, v4, v10}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->prepareUri(IIZ)Landroid/broadcast/helper/MtvURI;

    move-result-object v1

    .line 2191
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v7, v8, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    goto/16 :goto_0

    .line 2196
    .end local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    .end local v3    # "phyChannelNum":I
    .end local v4    # "serviceId":I
    :cond_9
    const-string v7, "MtvUiLivePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "already in live mode . state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v7, v8, :cond_b

    .line 2203
    sput-boolean v10, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isInBGRecording:Z

    .line 2204
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "Background Recording is going on..."

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v7

    if-eq v7, v13, :cond_3

    .line 2207
    const/4 v1, 0x0

    .line 2211
    .restart local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getCurrentOpenedChannel()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getCurrentOpenedChannelServiceId()I

    move-result v8

    invoke-virtual {p0, v7, v8, v10}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->prepareUri(IIZ)Landroid/broadcast/helper/MtvURI;

    move-result-object v1

    .line 2213
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v7, :cond_a

    .line 2215
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v7, :cond_a

    .line 2217
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v7, v8, :cond_a

    .line 2219
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7, v8}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onResume(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 2223
    :cond_a
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v7, v8, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    goto/16 :goto_0

    .line 2226
    .end local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    :cond_b
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v7

    if-ne v7, v13, :cond_3

    .line 2228
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "Background Recording Open ISsued.. Opening Player as well !"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2254
    :cond_c
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v7, v8, :cond_d

    .line 2255
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBmlFullView()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2256
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const v9, 0x7f070268

    invoke-virtual {p0, v9}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2260
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBmlFullView()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2261
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v14}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2282
    :cond_e
    sget v7, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->preferred_orientation:I

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->requestOrientation(I)V

    goto/16 :goto_2

    .line 2288
    :cond_f
    invoke-static {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    goto/16 :goto_2
.end method

.method private initViewControl()V
    .locals 2

    .prologue
    .line 1991
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setContentView(I)V

    .line 1992
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->lockImage:Landroid/widget/ImageView;

    .line 1993
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->lockImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$6;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$6;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1999
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->sleepTimer:Landroid/widget/ImageView;

    .line 2003
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mAnimationlayout:Landroid/widget/RelativeLayout;

    .line 2004
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mAnimationImage:Landroid/widget/ImageView;

    .line 2005
    const/high16 v0, 0x7f040000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->rotatingAnimation:Landroid/view/animation/Animation;

    .line 2006
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mTxtAnimation:Landroid/widget/TextView;

    .line 2009
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    .line 2010
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mHiddenSurfaceView:Landroid/view/SurfaceView;

    .line 2012
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    .line 2013
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCaptionView:Landroid/widget/TextView;

    .line 2014
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCaptionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2017
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mImgViewNoChannel:Landroid/widget/ImageView;

    .line 2018
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mImgViewNoChannel:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2020
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mChannelGestureDetector:Landroid/view/GestureDetector;

    .line 2022
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showStatusNotification:Z

    .line 2024
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRotateButton:Landroid/widget/ImageButton;

    .line 2025
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRotateButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$7;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$7;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2051
    return-void
.end method

.method private invalidateLiveViews()V
    .locals 6

    .prologue
    const/16 v5, 0x65

    const/4 v4, 0x1

    .line 660
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-direct {p0, v4, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getCurrentChannelProgramTitle(ZZ)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 663
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 664
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v4, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getCurrentChannelProgramTitle(ZZ)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private isEmergencyMode(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3562
    invoke-static {p1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private latestChannelValidity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5402
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v0

    if-gez v0, :cond_0

    .line 5403
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "Lost Track of last Channel,may be its first time run , reseting to  Default Channel"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5404
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 5405
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 5406
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 5407
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 5409
    :cond_0
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 2055
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRotationObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 2056
    new-instance v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$8;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$8;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRotationObserver:Landroid/database/ContentObserver;

    .line 2068
    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2069
    .local v0, "mUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2070
    const-string v1, "MtvUiLivePlayer"

    const-string v2, "registerContentObserver - mRotationObserver is registered"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    .end local v0    # "mUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private registerMediaButtonReceiver()V
    .locals 4

    .prologue
    .line 6237
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 6238
    return-void
.end method

.method private releaseMtvPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2315
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_2

    .line 2317
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "inside releaseMtvPlayer"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 2320
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onDestroy()V

    .line 2324
    :cond_0
    invoke-static {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isMiniModeRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2326
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->registerVideoSurfaceView(Z)V

    .line 2328
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->reset()V

    .line 2329
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 2330
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 2332
    :cond_2
    return-void
.end method

.method private removeFragments()V
    .locals 2

    .prologue
    .line 5882
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5883
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 5885
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5886
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 5888
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5889
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 5890
    :cond_2
    return-void
.end method

.method private resetStateOnFreshLaunch()V
    .locals 3

    .prologue
    .line 1126
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 1127
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1128
    return-void
.end method

.method private saveNextPreviousChannelNumberForHover()V
    .locals 6

    .prologue
    .line 5651
    const-string v3, "MtvUiLivePlayer"

    const-string v4, "saveNextPreviousChannelNumberForHover is called....:"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5653
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v3, :cond_0

    .line 5654
    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 5656
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v2

    .line 5658
    .local v2, "oldVirtualChannelNum":I
    const/4 v0, 0x0

    .line 5659
    .local v0, "newMtvChannelNext":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const/4 v1, 0x0

    .line 5661
    .local v1, "newMtvChannelPre":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-lez v2, :cond_3

    .line 5663
    invoke-static {p0, v2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getNext(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 5664
    invoke-static {p0, v2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getPrevious(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v1

    .line 5674
    :goto_0
    if-eqz v0, :cond_1

    .line 5675
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setNextChannelInfo(Ljava/lang/String;)V

    .line 5678
    :cond_1
    if-eqz v1, :cond_2

    .line 5679
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setPreChannelInfo(Ljava/lang/String;)V

    .line 5680
    :cond_2
    return-void

    .line 5668
    :cond_3
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getFirstOnAir(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 5669
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getFirstOnAir(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v1

    goto :goto_0
.end method

.method private saveTVFileThumbnail()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 4548
    const/4 v0, 0x0

    .line 4549
    .local v0, "bmpImage":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 4550
    .local v5, "width":I
    const/4 v3, 0x0

    .line 4551
    .local v3, "height":I
    const/4 v4, 0x0

    .line 4552
    .local v4, "thumbnailName":Ljava/lang/String;
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "saveTVFileThumbnail: start"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4553
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v6, :cond_0

    .line 4555
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 4557
    :cond_0
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v6, :cond_3

    .line 4559
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getCaptFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4560
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getCaptFrameName()Ljava/lang/String;

    move-result-object v4

    .line 4567
    if-eqz v0, :cond_1

    if-nez v4, :cond_4

    .line 4569
    :cond_1
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "saveTVFileThumbnail() : Objects are NULL!!!"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 4595
    :cond_2
    :goto_0
    return-void

    .line 4564
    :cond_3
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "saveTVFileThumbnail() : App Context is NULL!!!"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4574
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 4575
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v3, v6, -0xc

    .line 4578
    if-lez v3, :cond_5

    if-gtz v5, :cond_6

    .line 4580
    :cond_5
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "saveTVFileThumbnail() parameters are wrong to save file.!!!."

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4583
    :cond_6
    invoke-static {v0, v8, v8, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4586
    .local v1, "croppedBmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 4588
    new-instance v2, Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-direct {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;-><init>()V

    .line 4590
    .local v2, "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/samsung/sec/mtv/provider/MtvFile;->setFileFormat(I)V

    .line 4591
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v6}, Lcom/samsung/sec/mtv/provider/MtvFile;->setCreationTime(Ljava/util/Date;)V

    .line 4592
    invoke-virtual {v2, v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->setFilePath(Ljava/lang/String;)V

    .line 4593
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v6

    invoke-static {v6, v1, v2}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->saveFile(ILandroid/graphics/Bitmap;Lcom/samsung/sec/mtv/provider/MtvFile;)V

    goto :goto_0
.end method

.method private setCaptionText()V
    .locals 3

    .prologue
    .line 5529
    const/4 v0, 0x0

    .line 5530
    .local v0, "result":Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_0

    .line 5531
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getCaption()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->getBuffer()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 5532
    :cond_0
    if-eqz v0, :cond_1

    .line 5533
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCaptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5536
    :goto_0
    return-void

    .line 5535
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCaptionView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setImageViewDuringNoChannel(Z)V
    .locals 3
    .param p1, "noChannel"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 5499
    if-eqz p1, :cond_0

    .line 5500
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 5501
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mImgViewNoChannel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5502
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mAnimationImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5507
    :goto_0
    return-void

    .line 5504
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 5505
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mImgViewNoChannel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setLatestChannelsByPChannel(II)V
    .locals 4
    .param p1, "pch"    # I
    .param p2, "serviceID"    # I

    .prologue
    .line 5416
    const/4 v2, -0x1

    .line 5417
    .local v2, "vch":I
    const/4 v1, 0x0

    .line 5418
    .local v1, "multiChannelNo":I
    invoke-static {p0, p1, p2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByPChannel(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 5419
    .local v0, "ch":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v0, :cond_0

    .line 5420
    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    .line 5421
    iget v1, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 5424
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, p1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 5425
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 5426
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, p2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 5427
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 5428
    return-void
.end method

.method private varargs setRotateButtonVisibility(Z[I)V
    .locals 6
    .param p1, "flag"    # Z
    .param p2, "timeout"    # [I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2083
    const/16 v0, 0xbb8

    .line 2084
    .local v0, "timeout_rotateicon":I
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 2085
    aget v0, p2, v3

    .line 2087
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isPhoneLocked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2088
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2089
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2090
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2091
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveRotateButton:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2092
    sget-boolean v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBMLFullView:Z

    if-nez v1, :cond_1

    .line 2093
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setRequestedOrientation(I)V

    .line 2107
    :cond_1
    :goto_0
    return-void

    .line 2095
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBMLFullView:Z

    if-nez v1, :cond_3

    .line 2096
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2097
    :cond_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveRotateButton:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2098
    if-lez v0, :cond_1

    .line 2099
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveRotateButton:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2104
    :cond_4
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2105
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveRotateButton:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setScreenRatio(I)V
    .locals 14
    .param p1, "value"    # I

    .prologue
    const/high16 v13, 0x43b40000    # 360.0f

    .line 5432
    const v7, 0x3fe38e39

    .line 5433
    .local v7, "screenRatio":F
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 5434
    .local v4, "mContext":Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v6

    .line 5438
    .local v6, "orientation":I
    const/4 v9, 0x0

    .local v9, "x":I
    const/4 v10, 0x0

    .local v10, "y":I
    const/4 v8, 0x0

    .local v8, "w":I
    const/4 v2, 0x0

    .line 5440
    .local v2, "h":I
    const/4 v11, 0x1

    if-ne v6, v11, :cond_3

    .line 5441
    const-string v11, "MtvUiLivePlayer"

    const-string v12, "setScreenRatio landscape"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5442
    invoke-static {v13, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v11

    float-to-int v0, v11

    .line 5443
    .local v0, "LCD_HEIGHT":I
    const/high16 v11, 0x44200000    # 640.0f

    invoke-static {v11, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v11

    float-to-int v1, v11

    .line 5451
    .local v1, "LCD_WIDTH":I
    :goto_0
    const-string v11, "MtvUiLivePlayer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setScreenRatio LCD_HEIGHT:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "LCD_WIDTH:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5454
    const v11, 0x3fe38e39

    cmpl-float v11, v7, v11

    if-nez v11, :cond_5

    .line 5455
    if-nez p1, :cond_4

    .line 5456
    const-string v11, "MtvUiLivePlayer"

    const-string v12, "setScreenRatio 16:9 NORMAL"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5458
    move v8, v1

    .line 5459
    div-int/lit8 v5, v1, 0x10

    .line 5460
    .local v5, "multiple_factor":I
    mul-int/lit8 v2, v5, 0x9

    .line 5479
    .end local v5    # "multiple_factor":I
    :goto_1
    sub-int v11, v1, v8

    div-int/lit8 v9, v11, 0x2

    .line 5480
    sub-int v11, v0, v2

    div-int/lit8 v10, v11, 0x2

    .line 5481
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v11

    if-nez v11, :cond_0

    .line 5482
    const-string v11, "MtvUiLivePlayer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setScreenRatio x = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " y = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " w = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " h = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5483
    :cond_0
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v3, v8, v2, v9, v10}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 5485
    .local v3, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v11, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    if-nez v11, :cond_1

    .line 5486
    const v11, 0x7f0a0020

    invoke-virtual {p0, v11}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/SurfaceView;

    iput-object v11, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    .line 5487
    :cond_1
    iget-object v11, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    if-eqz v11, :cond_2

    .line 5488
    iget-object v11, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v11, v3}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5489
    :cond_2
    return-void

    .line 5445
    .end local v0    # "LCD_HEIGHT":I
    .end local v1    # "LCD_WIDTH":I
    .end local v3    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_3
    const-string v11, "MtvUiLivePlayer"

    const-string v12, "setScreenRatio portrait"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5446
    const/high16 v11, 0x434b0000    # 203.0f

    invoke-static {v11, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v11

    float-to-int v0, v11

    .line 5447
    .restart local v0    # "LCD_HEIGHT":I
    invoke-static {v13, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v11

    float-to-int v1, v11

    .restart local v1    # "LCD_WIDTH":I
    goto/16 :goto_0

    .line 5462
    :cond_4
    const-string v11, "MtvUiLivePlayer"

    const-string v12, "setScreenRatio 16:9 ENLARGE "

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5463
    move v8, v1

    .line 5464
    move v2, v0

    goto :goto_1

    .line 5467
    :cond_5
    if-nez p1, :cond_6

    .line 5468
    const-string v11, "MtvUiLivePlayer"

    const-string v12, "setScreenRatio 4:3 NORMAL "

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5469
    move v2, v0

    .line 5470
    div-int/lit8 v5, v1, 0x3

    .line 5471
    .restart local v5    # "multiple_factor":I
    mul-int/lit8 v8, v5, 0x4

    goto/16 :goto_1

    .line 5473
    .end local v5    # "multiple_factor":I
    :cond_6
    const-string v11, "MtvUiLivePlayer"

    const-string v12, "setScreenRatio 4:3 ENLARGE "

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5474
    move v8, v1

    .line 5475
    move v2, v0

    goto/16 :goto_1
.end method

.method private showErrorDialog(I)V
    .locals 3
    .param p1, "stringId"    # I

    .prologue
    .line 344
    invoke-static {p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;->newInstance(I)Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ErrorDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method private showNotification(Z)V
    .locals 10
    .param p1, "showTicker"    # Z

    .prologue
    .line 2802
    const-string v7, "MtvUiLivePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showNotification() called.. showTicker"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->hideNotification()V

    .line 2805
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2873
    :goto_0
    return-void

    .line 2807
    :cond_0
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v7, :cond_1

    .line 2808
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 2812
    :cond_1
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v7, :cond_2

    const/16 v7, 0x5007

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 2815
    const v7, 0x7f070294

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2819
    .local v1, "contentTitle":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2820
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x100000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2821
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2822
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2823
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2826
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2827
    .local v0, "closeIntent":Landroid/content/Intent;
    const-string v7, "closing_from_notification"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2829
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2830
    .local v3, "launchIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2832
    .local v4, "mCloseIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030032

    invoke-direct {v5, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2833
    .local v5, "mRemoteView":Landroid/widget/RemoteViews;
    const v7, 0x7f0a0121

    const v8, 0x7f0200c3

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2834
    const v7, 0x7f0a0123

    invoke-virtual {v5, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2835
    const v7, 0x7f0a0126

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getNotificationContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2836
    const v7, 0x7f0a0129

    invoke-virtual {v5, v7, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2837
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f0200c3

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 2844
    .local v6, "notification":Landroid/app/Notification;
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v7, :cond_5

    .line 2845
    if-eqz p1, :cond_4

    .line 2846
    const/16 v7, 0x5007

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 2853
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f070294

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getNotificationContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2854
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    const v8, 0x7f0200c3

    invoke-virtual {v7, v8, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2817
    .end local v0    # "closeIntent":Landroid/content/Intent;
    .end local v1    # "contentTitle":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "launchIntent":Landroid/app/PendingIntent;
    .end local v4    # "mCloseIntent":Landroid/app/PendingIntent;
    .end local v5    # "mRemoteView":Landroid/widget/RemoteViews;
    .end local v6    # "notification":Landroid/app/Notification;
    :cond_2
    const v7, 0x7f070295

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "contentTitle":Ljava/lang/String;
    goto/16 :goto_1

    .line 2862
    .restart local v0    # "closeIntent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "launchIntent":Landroid/app/PendingIntent;
    .restart local v4    # "mCloseIntent":Landroid/app/PendingIntent;
    .restart local v5    # "mRemoteView":Landroid/widget/RemoteViews;
    .restart local v6    # "notification":Landroid/app/Notification;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f070295

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getNotificationContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2863
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    const v8, 0x7f0200c3

    invoke-virtual {v7, v8, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2867
    :cond_4
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    const v8, 0x7f0200c3

    invoke-virtual {v7, v8, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2871
    :cond_5
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "mNotificationManager is null "

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showReservationAlert()V
    .locals 5

    .prologue
    .line 2773
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isResumed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2775
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Live Player not resumed continuing with recording without showing popup..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    :cond_0
    :goto_0
    return-void

    .line 2778
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2780
    .local v1, "launchBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 2781
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2782
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.sec.mtv"

    const-string v4, "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2783
    const-string v2, "dbId"

    const-string v3, "dbId"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2784
    const-string v2, "popup_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2785
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2786
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Mobile Tv - Reminder -user Alert"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "stringId"    # I

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->gen_toast:Landroid/widget/Toast;

    .line 266
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->gen_toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "Activity not in foreground !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showToastforNoOperation(I)V
    .locals 5
    .param p1, "StringId"    # I

    .prologue
    const/4 v4, 0x1

    .line 3187
    const/4 v1, 0x0

    .line 3188
    .local v1, "topActivityName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->shownToastforOperationNA:Z

    if-nez v2, :cond_1

    .line 3189
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3190
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 3191
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 3193
    :cond_0
    if-eqz v1, :cond_1

    .line 3194
    const-string v2, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 3195
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->gen_toast:Landroid/widget/Toast;

    .line 3196
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->gen_toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3197
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->shownToastforOperationNA:Z

    .line 3206
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_1
    :goto_0
    return-void

    .line 3200
    .restart local v0    # "am":Landroid/app/ActivityManager;
    :cond_2
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3201
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showToast: Activity on top -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startRecording(Lcom/samsung/sec/mtv/provider/MtvReservation;)I
    .locals 24
    .param p1, "reservation"    # Lcom/samsung/sec/mtv/provider/MtvReservation;

    .prologue
    .line 3006
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3007
    new-instance v4, Landroid/content/Intent;

    const-string v11, "com.samsung.sec.mtv.ACTION_MTV_SVIEW_FINISH"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->sendBroadcast(Landroid/content/Intent;)V

    .line 3010
    :cond_0
    const-wide/16 v12, 0x0

    .line 3011
    .local v12, "availMemSize":J
    const/16 v18, 0x0

    .line 3012
    .local v18, "recURI":Ljava/lang/String;
    const/4 v5, -0x1

    .local v5, "recType":I
    const/4 v7, -0x1

    .line 3013
    .local v7, "storeType":I
    const/4 v8, 0x0

    .local v8, "chnlName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3014
    .local v9, "progName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 3016
    .local v15, "channelInfo":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    const/16 v16, 0x0

    .line 3017
    .local v16, "currentProgram":Landroid/broadcast/helper/types/MtvOneSegProgram;
    const/4 v10, 0x0

    .local v10, "mRecordDate":Ljava/util/Date;
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    .line 3018
    .local v17, "currentTime":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 3030
    .local v14, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v11

    if-ne v4, v11, :cond_1

    .line 3032
    const-string v4, "MtvUiLivePlayer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Reached ["

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getFileCount(I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v19, "] recordings in Phone memory"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableInternalMemorySize()J

    move-result-wide v12

    .line 3046
    :goto_0
    const-string v4, "MtvUiLivePlayer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "availMemSize :"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    const-wide/32 v20, 0x204000

    cmp-long v4, v12, v20

    if-gez v4, :cond_3

    .line 3049
    const-string v4, "MtvUiLivePlayer"

    const-string v11, "memory already full.. cannot start recording..."

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    const v4, 0x7f070307

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showErrorDialog(I)V

    .line 3051
    const/4 v4, 0x1

    .line 3102
    :goto_1
    return v4

    .line 3037
    :cond_1
    const/16 v4, 0x63

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getFileCount(I)I

    move-result v11

    if-ne v4, v11, :cond_2

    .line 3039
    const-string v4, "MtvUiLivePlayer"

    const-string v11, "Reached [99] recordings in SD card. Cant proceed further"

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    const v4, 0x7f0702ab

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showErrorDialog(I)V

    .line 3041
    const/4 v4, 0x1

    goto :goto_1

    .line 3043
    :cond_2
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v12

    goto :goto_0

    .line 3054
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastSetRecordingMode()I

    move-result v4

    if-nez v4, :cond_8

    const/4 v5, 0x2

    .line 3056
    :goto_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v11

    if-ne v4, v11, :cond_9

    .line 3057
    const-string v6, "/sdcard/video/MyTvFiles/"

    .line 3058
    .local v6, "memLoc":Ljava/lang/String;
    const/4 v7, 0x1

    .line 3065
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 3066
    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v8

    .line 3071
    :cond_4
    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v4

    const/4 v11, -0x1

    if-ne v4, v11, :cond_a

    .line 3073
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getCurrentProgramDetails()Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v16

    .line 3074
    if-eqz v16, :cond_6

    .line 3075
    invoke-virtual/range {v16 .. v16}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getProgName()Ljava/lang/String;

    move-result-object v9

    .line 3089
    :cond_6
    :goto_4
    if-nez v8, :cond_7

    const-string v8, "dummy"

    .line 3090
    :cond_7
    new-instance v10, Ljava/util/Date;

    .end local v10    # "mRecordDate":Ljava/util/Date;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    const/16 v4, 0xf

    invoke-virtual {v14, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    const/16 v4, 0x10

    invoke-virtual {v14, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 3091
    .restart local v10    # "mRecordDate":Ljava/util/Date;
    new-instance v4, Landroid/broadcast/helper/types/MtvOneSegPlayer;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v11

    invoke-direct/range {v4 .. v11}, Landroid/broadcast/helper/types/MtvOneSegPlayer;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;I)V

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegPlayer;->getRecordURI()Ljava/lang/String;

    move-result-object v18

    .line 3094
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    long-to-int v0, v12

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v4, v11, v0, v1, v2}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->startRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Ljava/lang/String;IZ)Z

    move-result v4

    if-nez v4, :cond_c

    .line 3095
    const-string v4, "MtvUiLivePlayer"

    const-string v11, "startRecording() failed"

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    const v4, 0x7f0702b0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showToast(I)V

    .line 3099
    const/4 v4, -0x1

    goto/16 :goto_1

    .line 3054
    .end local v6    # "memLoc":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 3061
    :cond_9
    const-string v6, "/mnt/extSdCard/video/MyTvFiles/"

    .line 3062
    .restart local v6    # "memLoc":Ljava/lang/String;
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 3077
    :cond_a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    if-eqz v4, :cond_b

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 3078
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    goto :goto_4

    .line 3081
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getCurrentProgramDetails()Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v16

    .line 3082
    if-eqz v16, :cond_6

    .line 3083
    invoke-virtual/range {v16 .. v16}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getProgName()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    .line 3101
    :cond_c
    const-string v4, "MtvUiLivePlayer"

    const-string v11, "startRecording() start"

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method private startReservationProgram(Lcom/samsung/sec/mtv/provider/MtvReservation;)V
    .locals 14
    .param p1, "reservation"    # Lcom/samsung/sec/mtv/provider/MtvReservation;

    .prologue
    const/16 v13, 0x5007

    const/4 v12, 0x6

    const/4 v11, 0x0

    const/16 v10, 0x13e

    const/4 v9, 0x1

    .line 2454
    const-string v6, "MtvUiLivePlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " startReservationProgram() : !!! Starting from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReserveAlertFrom()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Reservation ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v6

    sget-object v7, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v6, v7, :cond_2

    .line 2456
    :cond_0
    const-string v6, "MtvUiLivePlayer"

    const-string v7, " startReservationProgram() : error - MW not initilized yet!!! "

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    :cond_1
    :goto_0
    return-void

    .line 2457
    :cond_2
    if-eqz p1, :cond_3

    iget v6, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-eqz v6, :cond_4

    .line 2458
    :cond_3
    const-string v6, "MtvUiLivePlayer"

    const-string v7, " startReservationProgram() : error - not a valid reservation"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2463
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "signal_alert_retry_exit"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 2464
    const-string v6, "MtvUiLivePlayer"

    const-string v7, " startReservationProgram() : Low Signal POp-up Showing"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "signal_alert_terminate"

    invoke-static {v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2467
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "startReservationProgram :mNoSignalTerminate popup closed"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "exit_confirmation"

    invoke-static {v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2471
    iget v6, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v6, :cond_13

    .line 2472
    const-string v6, "MtvUiLivePlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " startReservationProgram() : !!!TYPE_REC    :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v6

    if-eq v6, v13, :cond_12

    .line 2474
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2475
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "physicalchannelnumber"

    iget v7, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2476
    const-string v6, "serviceid"

    iget v7, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2477
    const-string v6, "liveMode"

    iget v7, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2478
    const-string v6, "virtualchannelnumber"

    iget v7, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2479
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v1

    .line 2481
    .local v1, "currentPCh":I
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v5

    .line 2482
    .local v5, "serviceId":I
    if-lez v1, :cond_6

    iget v6, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    if-ne v1, v6, :cond_7

    iget v6, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-ne v5, v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v6

    iget v7, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-eq v6, v7, :cond_9

    .line 2485
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "signal_alert_retry_exit"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 2486
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "signal_alert_retry_exit"

    invoke-static {v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2487
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "startReservationProgram :(RR):NoSignal popup closed for Channel Change"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    :cond_8
    const-string v6, "MtvUiLivePlayer"

    const-string v7, " startReservationProgram() :(RR):not playing the Reservation Channel  : Issue OPEN for REservation Channel"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2494
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto/16 :goto_0

    .line 2496
    :cond_9
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v6

    sget-object v7, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v6, v7, :cond_b

    .line 2497
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "signal_alert_retry_exit"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 2498
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "signal_alert_retry_exit"

    invoke-static {v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2499
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "startReservationProgram :(RR):NoSignal popup closed : State !PLAYING  : Issue OPEN"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2505
    :cond_a
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "startReservationProgram :(RR):State !PLAYING "

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto/16 :goto_0

    .line 2508
    :cond_b
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v6

    sget-object v7, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v6, v7, :cond_1

    .line 2510
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "signal_alert_retry_exit"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 2511
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "signal_alert_retry_exit"

    invoke-static {v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2512
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "startReservationProgram :(RR): State PLAYING : NoSignal popup closed : Issue OPEN"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2518
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto/16 :goto_0

    .line 2521
    :cond_c
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getCurrentOpenedChannel()I

    move-result v6

    iget v7, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    if-eq v6, v7, :cond_d

    .line 2523
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "startReservationProgram : Not Playing Reservation Channel ! Change to Reservation Channel "

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2526
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2528
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto/16 :goto_0

    .line 2533
    :cond_d
    const-string v6, "MtvUiLivePlayer"

    const-string v7, "startReservationProgram : Playing Reservation Channel ! start Recording !"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    const-string v6, "MtvUiLivePlayer"

    const-string v7, " startReservationProgram() : (RR) : recording : - already playing"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startRecording(Lcom/samsung/sec/mtv/provider/MtvReservation;)I

    move-result v4

    .line 2541
    .local v4, "retVal":I
    if-nez v4, :cond_e

    .line 2543
    const v6, 0x7f070295

    const v7, 0x7f0702a6

    invoke-virtual {p0, v6, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showProgressDialog(II)V

    .line 2545
    :cond_e
    if-ne v4, v9, :cond_f

    .line 2547
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    .line 2548
    const/4 v6, 0x5

    invoke-direct {p0, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->CheckIsreservationAndUpdatefailureReason(I)V

    goto/16 :goto_0

    .line 2549
    :cond_f
    const/4 v6, -0x1

    if-ne v4, v6, :cond_10

    .line 2551
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    .line 2552
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->CheckIsreservationAndUpdatefailureReason(I)V

    goto/16 :goto_0

    .line 2555
    :cond_10
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReserveAlertFrom()I

    move-result v6

    if-nez v6, :cond_11

    .line 2556
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6, v11}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 2558
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 2559
    .local v3, "pm":Landroid/os/PowerManager;
    const v6, 0x10000001

    const-string v7, "MobileTV"

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2562
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2565
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_11
    invoke-static {p0, p1, v12}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 2567
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableresetComingReservationID:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2571
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "currentPCh":I
    .end local v4    # "retVal":I
    .end local v5    # "serviceId":I
    :cond_12
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v6

    sget-object v7, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v6, v7, :cond_1

    .line 2572
    const-string v6, "MtvUiLivePlayer"

    const-string v7, " startReservationProgram() : : recording : - already recording"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->stopRecording()V

    .line 2574
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto/16 :goto_0

    .line 2577
    :cond_13
    iget v6, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-ne v6, v9, :cond_1

    .line 2578
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v6

    if-eq v6, v13, :cond_17

    .line 2579
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v1

    .line 2581
    .restart local v1    # "currentPCh":I
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v5

    .line 2582
    .restart local v5    # "serviceId":I
    if-lez v1, :cond_16

    iget v6, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    if-ne v1, v6, :cond_14

    iget v6, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-ne v5, v6, :cond_14

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v6

    sget-object v7, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v6, v7, :cond_16

    .line 2584
    :cond_14
    const-string v6, "MtvUiLivePlayer"

    const-string v7, " startReservationProgram() : watch : - not playing same channel"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2586
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v6, "physicalchannelnumber"

    iget v7, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2587
    const-string v6, "virtualchannelnumber"

    iget v7, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2588
    const-string v6, "serviceid"

    iget v7, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2589
    iget v6, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    iget v7, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-static {p0, v6, v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findMultiChannelNoByServiceId(Landroid/content/Context;II)I

    move-result v2

    .line 2590
    .local v2, "multiChannelNumber":I
    const-string v6, "multichannelnumber"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2591
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2597
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "multiChannelNumber":I
    :cond_15
    :goto_1
    invoke-static {p0, p1, v12}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    goto/16 :goto_0

    .line 2593
    :cond_16
    if-lez v1, :cond_15

    iget v6, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    if-ne v1, v6, :cond_15

    .line 2594
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBmlFullView()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2595
    invoke-virtual {p0, v11}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setBMLLayoutFullView(Z)V

    goto :goto_1

    .line 2600
    .end local v1    # "currentPCh":I
    .end local v5    # "serviceId":I
    :cond_17
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v6

    sget-object v7, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v6, v7, :cond_1

    .line 2601
    const-string v6, "MtvUiLivePlayer"

    const-string v7, " startReservationProgram() :: watch : - recording going on"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->stopRecording()V

    .line 2603
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto/16 :goto_0
.end method

.method private startVolumeControlBar()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xbb8

    const-wide/16 v2, 0xfa0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 3915
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3916
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3917
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3918
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "onTouchEvent, adding status fragment"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3922
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 3928
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3929
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateSignalInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3938
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3939
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3940
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "onTouchEvent, adding main fragment"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3942
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_7

    .line 3944
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 3959
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3960
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3961
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "onTouchEvent, adding main fragment"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3962
    :cond_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v6, [I

    const v2, 0x7f0a0032

    aput v2, v5, v4

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 3966
    :cond_5
    :goto_2
    return-void

    .line 3932
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 3934
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto :goto_0

    .line 3948
    :cond_7
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    goto :goto_1

    .line 3952
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 3954
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto :goto_1

    .line 3963
    :cond_9
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_5

    .line 3964
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto :goto_2
.end method

.method private stopRecording()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 3108
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v7

    .line 3109
    .local v7, "orientation":I
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "stopRecording in LivePlayer"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    const/4 v6, 0x0

    .line 3112
    .local v6, "isStopRecSuccess":Z
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 3113
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 3114
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->stopRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    move-result v6

    .line 3115
    if-eqz v6, :cond_3

    .line 3117
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "Recording stop invoked successfully !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3118
    iput-boolean v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isStopRecCommandInProcess:Z

    .line 3119
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_3

    .line 3122
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 3124
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 3127
    if-nez v7, :cond_1

    .line 3130
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3131
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateSignalInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3132
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 3134
    :cond_1
    const-string v0, "MtvUiLivePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragments removed normally? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v2

    if-nez v2, :cond_2

    move v4, v8

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3137
    :cond_3
    return-void
.end method

.method private unRegisterMediaButtonReceiver()V
    .locals 4

    .prologue
    .line 6241
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 6242
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 6243
    :cond_0
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRotationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2076
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2077
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRotationObserver:Landroid/database/ContentObserver;

    .line 2078
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "unregisterContentObserver - mRotationObserver is unregistered"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    :cond_0
    return-void
.end method

.method private updateCaptions()V
    .locals 2

    .prologue
    .line 5514
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCaptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v0, :cond_0

    .line 5515
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isCaptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBmlFullView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5517
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCaptionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5518
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setCaptionText()V

    .line 5525
    :cond_0
    :goto_0
    return-void

    .line 5522
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCaptionView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFragmentsOnLock()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x70

    .line 1252
    const-string v3, "MtvUiLivePlayer"

    const-string v4, "inside updateFragmentsOnLock..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const/4 v0, 0x0

    .line 1255
    .local v0, "isRecording":Z
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v3, :cond_3

    .line 1256
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v3

    const/16 v4, 0x5007

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 1260
    :goto_0
    iget v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->orientation:I

    if-nez v3, :cond_7

    .line 1263
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->lockImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 1265
    if-nez v0, :cond_4

    .line 1266
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1269
    :goto_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1299
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1300
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1301
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1256
    goto :goto_0

    .line 1258
    :cond_3
    const-string v3, "MtvUiLivePlayer"

    const-string v4, "updateFragmentsOnLock mMtvAppPlaybackContext is null"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1268
    :cond_4
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_1

    .line 1273
    :cond_5
    if-nez v0, :cond_6

    .line 1274
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v5, v1, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_2

    .line 1276
    :cond_6
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v5, v1, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_2

    .line 1281
    :cond_7
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->lockImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    .line 1283
    if-nez v0, :cond_8

    .line 1284
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1288
    :goto_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1289
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_2

    .line 1286
    :cond_8
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_3

    .line 1293
    :cond_9
    if-eqz v0, :cond_0

    .line 1294
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v5, v1, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_2
.end method

.method private varargs updateFragmentsOnStateChange(I[I)V
    .locals 10
    .param p1, "addRemoveReset"    # I
    .param p2, "timeout"    # [I

    .prologue
    .line 5900
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "updateFragmentsOnStateChange"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5901
    const/16 v8, 0xbb8

    .line 5902
    .local v8, "timeoutFragment":I
    const/4 v6, 0x0

    .line 5903
    .local v6, "isRecording":Z
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v7

    .line 5905
    .local v7, "orientation":I
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 5906
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    const/16 v1, 0x5007

    if-ne v0, v1, :cond_4

    const/4 v6, 0x1

    .line 5908
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .line 5909
    const/4 v0, 0x0

    aget v8, p2, v0

    .line 5911
    :cond_1
    const/16 v0, 0xe1

    if-ne p1, v0, :cond_c

    .line 5912
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "Adding fragments"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5913
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 5915
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 5916
    if-nez v6, :cond_6

    .line 5918
    const/4 v0, 0x1

    if-ne v7, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkCondition()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5919
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 5939
    :cond_2
    :goto_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {p0, v0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setRotateButtonVisibility(Z[I)V

    .line 5940
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5941
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateSignalInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5943
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBmlFullView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5944
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v0

    if-lez v0, :cond_3

    .line 5945
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->sleepTimer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5946
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5947
    if-lez v8, :cond_3

    .line 5948
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6042
    :cond_3
    :goto_2
    return-void

    .line 5906
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 5920
    :cond_5
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkCondition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5921
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    goto :goto_1

    .line 5926
    :cond_6
    const/4 v0, 0x1

    if-ne v7, v0, :cond_8

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5927
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 5931
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x86

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 5932
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x6f

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 5933
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRunnableUpdateRecordComponents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5934
    if-lez v8, :cond_2

    .line 5935
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRunnableUpdateRecordComponents:Ljava/lang/Runnable;

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 5928
    :cond_8
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5929
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    goto :goto_3

    .line 5953
    :cond_9
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_3

    .line 5954
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "removing frgaments"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5955
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 5956
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 5957
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {p0, v0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setRotateButtonVisibility(Z[I)V

    .line 5958
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->sleepTimer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5959
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5961
    const/4 v0, 0x1

    if-ne v7, v0, :cond_b

    if-nez v6, :cond_b

    .line 5962
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 5966
    :cond_a
    :goto_4
    if-eqz v6, :cond_3

    .line 5967
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x86

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_2

    .line 5963
    :cond_b
    const/4 v0, 0x1

    if-ne v7, v0, :cond_a

    if-eqz v6, :cond_a

    .line 5964
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRunnableUpdateRecordComponents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 5973
    :cond_c
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "resetting/adding frgaments"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5974
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBmlFullView()Z

    move-result v0

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBMLFullView:Z

    if-nez v0, :cond_11

    .line 5976
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_10

    .line 5977
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 5986
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5987
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateSignalInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5989
    const/4 v0, 0x1

    if-ne v7, v0, :cond_13

    move v9, v8

    .line 5991
    .local v9, "timeout_frag":I
    :goto_6
    if-eqz v6, :cond_18

    .line 5993
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isStopRecCommandInProcess:Z

    if-nez v0, :cond_15

    .line 5995
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRunnableUpdateRecordComponents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5996
    if-lez v8, :cond_e

    .line 5997
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mRunnableUpdateRecordComponents:Ljava/lang/Runnable;

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5998
    :cond_e
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x87

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 5999
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6000
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 6007
    :goto_7
    const-string v0, "MtvUiLivePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFragmentsOnStateChange() - bIsRecordingFailed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6009
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    if-nez v0, :cond_f

    .line 6010
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6011
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 6030
    :cond_f
    :goto_8
    const/4 v0, 0x1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v8, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setRotateButtonVisibility(Z[I)V

    .line 6032
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBmlFullView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6033
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v0

    if-lez v0, :cond_3

    .line 6034
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->sleepTimer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6035
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6036
    if-lez v8, :cond_3

    .line 6037
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 5979
    .end local v9    # "timeout_frag":I
    :cond_10
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto/16 :goto_5

    .line 5981
    :cond_11
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBMLFullView:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_12

    .line 5982
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    goto/16 :goto_5

    .line 5983
    :cond_12
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBMLFullView:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5984
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto/16 :goto_5

    .line 5989
    :cond_13
    const/4 v9, -0x1

    goto/16 :goto_6

    .line 6002
    .restart local v9    # "timeout_frag":I
    :cond_14
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    goto/16 :goto_7

    .line 6004
    :cond_15
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "Stop Recording is already issued from UI Side . COmmand Complete not yet recieved from backend !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 6014
    :cond_16
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6015
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto/16 :goto_8

    .line 6017
    :cond_17
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    goto/16 :goto_8

    .line 6022
    :cond_18
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkCondition()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6023
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 6027
    :cond_19
    :goto_9
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_8

    .line 6024
    :cond_1a
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkCondition()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6025
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    goto :goto_9
.end method

.method private updateKeyguardPolicy(Z)V
    .locals 6
    .param p1, "dismissKeyguard"    # Z

    .prologue
    const/high16 v5, 0x400000

    const/high16 v4, 0x200000

    const/high16 v3, 0x80000

    .line 1637
    const-string v0, "MtvUiLivePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateKeyguardPolicy    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    if-eqz p1, :cond_0

    .line 1639
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1640
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1641
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1647
    :goto_0
    return-void

    .line 1643
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 1644
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1645
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private updateLiveViews()V
    .locals 6

    .prologue
    const/16 v5, 0x65

    const/4 v4, 0x0

    .line 708
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x134

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 709
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/4 v1, 0x1

    invoke-direct {p0, v4, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getCurrentChannelProgramTitle(ZZ)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-direct {p0, v4, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getCurrentChannelProgramTitle(ZZ)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 717
    :cond_1
    return-void
.end method

.method private updateNotification()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const v11, 0x7f0200c3

    const/4 v10, 0x0

    .line 2876
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2922
    :goto_0
    return-void

    .line 2878
    :cond_0
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "updatenotification"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v7, :cond_1

    .line 2880
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 2884
    :cond_1
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v7, :cond_2

    const/16 v7, 0x5007

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 2887
    const v7, 0x7f070294

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2891
    .local v1, "contentTitle":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2892
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x100000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2893
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2894
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2895
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2896
    invoke-static {p0, v10, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2899
    .local v3, "launchIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2900
    .local v0, "closeIntent":Landroid/content/Intent;
    const-string v7, "closing_from_notification"

    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2902
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v10, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2903
    .local v4, "mCloseIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030032

    invoke-direct {v5, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2904
    .local v5, "mRemoteView":Landroid/widget/RemoteViews;
    const v7, 0x7f0a0121

    invoke-virtual {v5, v7, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2905
    const v7, 0x7f0a0123

    invoke-virtual {v5, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2906
    const v7, 0x7f0a0126

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getNotificationContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2907
    const v7, 0x7f0a0129

    invoke-virtual {v5, v7, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2908
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 2916
    .local v6, "notification":Landroid/app/Notification;
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v7, :cond_3

    .line 2917
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2889
    .end local v0    # "closeIntent":Landroid/content/Intent;
    .end local v1    # "contentTitle":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "launchIntent":Landroid/app/PendingIntent;
    .end local v4    # "mCloseIntent":Landroid/app/PendingIntent;
    .end local v5    # "mRemoteView":Landroid/widget/RemoteViews;
    .end local v6    # "notification":Landroid/app/Notification;
    :cond_2
    const v7, 0x7f070295

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "contentTitle":Ljava/lang/String;
    goto/16 :goto_1

    .line 2920
    .restart local v0    # "closeIntent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "launchIntent":Landroid/app/PendingIntent;
    .restart local v4    # "mCloseIntent":Landroid/app/PendingIntent;
    .restart local v5    # "mRemoteView":Landroid/widget/RemoteViews;
    .restart local v6    # "notification":Landroid/app/Notification;
    :cond_3
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "mNotificationManager is null"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public HomeKeyPresses(Landroid/content/Context;)Z
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1317
    const-string v1, "com.samsung.sec.mtv"

    .line 1318
    .local v1, "classpkgName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1319
    .local v2, "topActivityName":Ljava/lang/String;
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1320
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 1321
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1322
    :cond_0
    if-eqz v2, :cond_2

    .line 1323
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1324
    const-string v3, "MtvUiLivePlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HomeKeyPresses :topActivityName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 1330
    :goto_0
    return v3

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method calculateDelayForStartChannel()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x9c4

    .line 5632
    const-wide/16 v2, 0x0

    .line 5633
    .local v2, "delayStartTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5634
    .local v0, "currentSystemTimeVal":J
    iget-wide v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mPreviousChannelChangeTime:J

    sub-long v4, v0, v6

    .line 5635
    .local v4, "timeDiff":J
    cmp-long v6, v4, v8

    if-lez v6, :cond_0

    .line 5636
    const-wide/16 v2, 0x0

    .line 5641
    :goto_0
    const-string v6, "MtvUiLivePlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DelayForStart:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": prev:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mPreviousChannelChangeTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": current:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mPreviousChannelChangeTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5642
    iput-wide v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mPreviousChannelChangeTime:J

    .line 5643
    return-wide v2

    .line 5639
    :cond_0
    sub-long v2, v8, v4

    goto :goto_0
.end method

.method public dismissProgressDialog()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 289
    :cond_0
    const/16 v0, 0x1a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->requestSystemKeyEvent(IZ)Z

    .line 290
    return-void
.end method

.method public getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;
    .locals 1

    .prologue
    .line 5620
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 5621
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v0

    .line 5622
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentProgramDetails()Landroid/broadcast/helper/types/MtvOneSegProgram;
    .locals 1

    .prologue
    .line 2998
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 2999
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getCurrentProgram()Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v0

    .line 3000
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsRecordingFailed()Z
    .locals 1

    .prologue
    .line 6246
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    return v0
.end method

.method public getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;
    .locals 1

    .prologue
    .line 5614
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 5615
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v0

    .line 5616
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStreamTime()J
    .locals 2

    .prologue
    .line 3160
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 3161
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getTot()J

    move-result-wide v0

    .line 3163
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public isBmlFullView()Z
    .locals 1

    .prologue
    .line 6137
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 6138
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v0

    .line 6139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFilePlayerActivity()Z
    .locals 6

    .prologue
    .line 6419
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 6420
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 6421
    .local v3, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    .line 6422
    .local v2, "isFilePlayerActivity":Z
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6423
    .local v1, "currentService":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.sec.mtv.ui.fileplayer.MtvUiFilePlayer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6424
    const/4 v2, 0x1

    .line 6425
    const-string v4, "TAG"

    const-string v5, "MObileTV is running but it is MtvUiFilePlayer"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6427
    :cond_0
    return v2
.end method

.method protected isScheduledReservationProgram()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 680
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v1, :cond_0

    .line 681
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 684
    :cond_0
    const-string v1, "MtvUiLivePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isScheduledReservationProgram: mMtvPreferences: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMtvPreferences.isReservationProgram(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isReservationProgram()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMtvPreferences.getReservationAlertID(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isReservationProgram()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 687
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 688
    .local v0, "CurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    const-string v1, "MtvUiLivePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isScheduledReservationProgram: CurrentReservation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    if-eqz v0, :cond_1

    .line 691
    const-string v1, "MtvUiLivePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isScheduledReservationProgram: CurrentReservation.mPgmStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CurrentReservation.mPgmType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget v1, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 693
    iget v1, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-ne v1, v4, :cond_1

    .line 694
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    .line 701
    .end local v0    # "CurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_1
    :goto_0
    return-void

    .line 695
    .restart local v0    # "CurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_2
    iget v1, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v1, :cond_1

    .line 696
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6166
    const-string v1, "MtvUiLivePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6168
    if-nez p1, :cond_3

    .line 6169
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 6170
    const-string v1, "bIsChannelChanged"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6171
    sput-boolean v5, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsChannelChngd:Z

    .line 6174
    :cond_0
    const-string v1, "channelinput"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6175
    const-string v1, "MtvUiLivePlayer"

    const-string v2, "onActivityResult for Channel input"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6176
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v3, 0x13c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6178
    :cond_1
    const-string v1, "noAreaSet"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 6179
    .local v0, "noAreaSet":Z
    if-eqz v0, :cond_2

    .line 6181
    invoke-static {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 6182
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x130

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6188
    .end local v0    # "noAreaSet":Z
    :cond_2
    :goto_0
    return-void

    .line 6187
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x6c

    .line 4366
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isInBGRecording:Z

    if-eqz v0, :cond_1

    .line 4368
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "Already Background REcording is  going on ! And Current Player Open is being Processed... Please wait..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 4408
    :cond_0
    :goto_0
    return-void

    .line 4372
    :cond_1
    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-static {v1, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeUnManagedFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;Landroid/app/Activity;)Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 4375
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 4376
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 4377
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_0

    .line 4389
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CHANNELNUM:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4391
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CHANNELNUM:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 4394
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 4395
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_0

    .line 4398
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v0, v1, :cond_0

    .line 4405
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showExitApplicationDialog()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x5007

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 726
    sput-object v9, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitToast:Landroid/widget/Toast;

    .line 727
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "onCreate..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileTV APP VERSION : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->mobileTvAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 731
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 738
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsRelaunched()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 739
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onCreate(Landroid/os/Bundle;)V

    .line 745
    :goto_0
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isHeadsetConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 746
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAudioEffect(I)V

    .line 748
    :cond_0
    if-nez p1, :cond_1

    .line 749
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->resetStateOnFreshLaunch()V

    .line 750
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->orientation:I

    .line 761
    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsCalling(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_4

    .line 763
    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    .line 764
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->releaseTunerAndFinish()V

    .line 982
    :cond_2
    :goto_1
    return-void

    .line 742
    :cond_3
    invoke-super {p0, p1, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onCreate(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 768
    :cond_4
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsMassStorageUSBEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 770
    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    .line 771
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->releaseTunerAndFinish()V

    goto :goto_1

    .line 774
    :cond_5
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsRelaunched()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 776
    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    .line 777
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->finish()V

    goto :goto_1

    .line 780
    :cond_6
    invoke-static {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->updateBatteryInfo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v2

    if-nez v2, :cond_7

    .line 782
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Battery Level is low... Enabling restrictLaunch!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    .line 784
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showLowBatteryPopup()V

    goto :goto_1

    .line 788
    :cond_7
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isLowMemoryToLaunch()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v2

    if-nez v2, :cond_8

    .line 790
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Memory is low to Launch MobileTV... "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    .line 792
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showLowMemoryPopup()V

    goto :goto_1

    .line 813
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->setAppComponents(Landroid/content/Context;)V

    .line 815
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_9

    .line 816
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 818
    :cond_9
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->registerMediaButtonReceiver()V

    .line 821
    if-nez p1, :cond_a

    .line 823
    sput-boolean v5, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bFisrtDTVLaunch:Z

    .line 825
    :cond_a
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 827
    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 829
    if-nez p1, :cond_b

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsLivePlayMiniMode()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByFromMiniMode()Z

    move-result v2

    if-nez v2, :cond_b

    .line 830
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    sget v3, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->SLEEP_TIMER_NONE:I

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAutoPowerOffTime(I)V

    .line 833
    :cond_b
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->latestChannelValidity()V

    .line 834
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->initViewControl()V

    .line 836
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    sput-object v2, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 838
    new-instance v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0a0031

    invoke-direct {v2, v3, v6, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;-><init>(Landroid/app/FragmentManager;II)V

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 840
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v2, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->setEnabled(Z)V

    .line 841
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    .line 842
    if-eqz p1, :cond_e

    .line 844
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v2, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fillFragHandlerData(Landroid/os/Bundle;)V

    .line 845
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->lockImage:Landroid/widget/ImageView;

    const-string v3, "lockVisibility"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 846
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->sleepTimer:Landroid/widget/ImageView;

    const-string v3, "sleeptimer"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 847
    const-string v2, "EPG_INTENT"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mEpgIntent:Landroid/content/Intent;

    .line 853
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    if-ne v2, v8, :cond_c

    .line 854
    const-string v2, "isStopRecCommandInProcess"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isStopRecCommandInProcess:Z

    .line 857
    :cond_c
    const/16 v2, 0xe2

    new-array v3, v6, [I

    invoke-direct {p0, v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnStateChange(I[I)V

    .line 859
    const-string v2, "recordingFailed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    .line 861
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v2, :cond_13

    .line 862
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate - savedInstanceState is not null, bIsRecordingFailed - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentOp - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    if-eq v2, v8, :cond_d

    .line 865
    iput-boolean v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    .line 871
    :cond_d
    :goto_2
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateNotification()V

    .line 874
    :cond_e
    sget-boolean v2, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->EPGAPP_ENABLED:Z

    if-eqz v2, :cond_12

    .line 876
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 878
    .local v1, "epgItent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_DTV_VIEW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 879
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mEpgIntent:Landroid/content/Intent;

    .line 887
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "OnCreate EPG -ACTION_DTV_VIEW received"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v2, "EXTRA_VIEW_CHANNEL_NO"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    .line 889
    const-string v2, "EXTRA_VIEW_SERVICE_ID"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgServiceId:I

    .line 890
    const-string v2, "EXTRA_AREA_FLAG"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgAreaId:I

    .line 891
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate() epgServiceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgServiceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " epgChNo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " epgAreaId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgAreaId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgAreaId:I

    if-lez v2, :cond_15

    .line 893
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Directly opening the physical channel with the area_flag !!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    if-eq v2, v7, :cond_14

    .line 895
    iget v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    iget v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgServiceId:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setLatestChannelsByPChannel(II)V

    .line 955
    :cond_f
    :goto_3
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v2, :cond_10

    .line 957
    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 960
    :cond_10
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsFilePlayMiniMode()Z

    move-result v2

    if-eqz v2, :cond_11

    if-nez p1, :cond_11

    .line 967
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsFilePlayMiniMode(Z)V

    .line 969
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateNotification()V

    .line 976
    :cond_11
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->registerContentObserver()V

    .line 977
    invoke-virtual {p0, v6, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->overridePendingTransition(II)V

    .line 980
    .end local v1    # "epgItent":Landroid/content/Intent;
    :cond_12
    sget-boolean v2, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v2, :cond_2

    .line 981
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_1

    .line 868
    :cond_13
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "mMtvAppPlaybackContext is null"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 899
    .restart local v1    # "epgItent":Landroid/content/Intent;
    :cond_14
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "pch is -1 ! Cross verify the Area Station info ..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 903
    :cond_15
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_16

    .line 905
    const v2, 0x7f070246

    const v3, 0x7f07021b

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->newInstance(II)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "EPGErrorDialogFragment"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    .line 909
    :cond_16
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "epgServiceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgServiceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " epgChNo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgServiceId:I

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findPChannelByServiceId(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 911
    .local v0, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v0, :cond_18

    .line 913
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Actual pch : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] from EPG and pch["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] obtained from mapping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    if-eq v2, v7, :cond_17

    .line 915
    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setLatestChannelsByPChannel(II)V

    goto/16 :goto_3

    .line 919
    :cond_17
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "pch is -1 ! Cross verify the Area Station info ..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 927
    :cond_18
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIntent EPG -ACTION_DTV_VIEW received channel is not found so directly opening the physical channel  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    invoke-static {p0, v2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByPChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 929
    if-eqz v0, :cond_1a

    .line 930
    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    if-eq v2, v7, :cond_19

    .line 931
    iget v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setLatestChannelsByPChannel(II)V

    goto/16 :goto_3

    .line 933
    :cond_19
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "pch is -1 ! Cross verify the Area Station info ..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 941
    :cond_1a
    const v2, 0x7f0702f4

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 942
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v4, 0x130

    invoke-virtual {v3, v4, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/16 v2, 0x130

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1667
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onDestroy()V

    .line 1668
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1669
    sput-boolean v5, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsChannelChngd:Z

    .line 1671
    :cond_0
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "...onDestroy()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1677
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1680
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    if-eqz v0, :cond_2

    .line 1682
    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    .line 1794
    :goto_0
    return-void

    .line 1689
    :cond_2
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->hideNotification()V

    .line 1691
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_3

    .line 1693
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->setEnabled(Z)V

    .line 1695
    :cond_3
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->unRegisterMediaButtonReceiver()V

    .line 1698
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1699
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "onDestroy called: isFinishing..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->reset()V

    .line 1703
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v0, :cond_4

    .line 1704
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 1705
    :cond_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setComingReservationID(I)V

    .line 1709
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_5

    .line 1710
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->reset()V

    .line 1716
    :cond_5
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_6

    .line 1718
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onDestroy()V

    .line 1722
    :cond_6
    invoke-static {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isMiniModeRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsLivePlayMiniMode()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsFilePlayMiniMode()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1724
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLastLivePlayBackDestroyTime(J)V

    .line 1725
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1726
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->delete(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 1730
    :cond_7
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    .line 1731
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->loseFocus()V

    .line 1732
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAvStreaming(Z)V

    .line 1735
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->reset()V

    .line 1738
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 1739
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->removeOpenChannelMessages()V

    .line 1740
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1744
    :cond_8
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->releaseMtvPlayer()V

    .line 1748
    :cond_9
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 1749
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1750
    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    .line 1757
    :cond_a
    sput-object v4, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mPendingBackendNotification:Ljava/lang/Object;

    .line 1758
    invoke-static {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 1761
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_b

    .line 1762
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1763
    :cond_b
    sput-object v4, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1764
    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mChannelGestureDetector:Landroid/view/GestureDetector;

    .line 1766
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->requestSystemKeyEvent(IZ)Z

    .line 1771
    :cond_c
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 1772
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1773
    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    .line 1774
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateSignalInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1775
    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateSignalInfo:Ljava/lang/Runnable;

    .line 1776
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableVolumeDecreasing:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1777
    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableVolumeDecreasing:Ljava/lang/Runnable;

    .line 1778
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableVolumeEscalating:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1779
    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableVolumeEscalating:Ljava/lang/Runnable;

    .line 1783
    :cond_d
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByFromMiniMode(Z)V

    .line 1785
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->unregisterContentObserver()V

    .line 1788
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->unbindDrawables(Landroid/view/View;)V

    .line 1789
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1791
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1792
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1793
    :cond_e
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "...onDestroy() Completed"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onFragEvent(ILjava/lang/Object;)V
    .locals 18
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3230
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFragEvent: event["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3559
    .end local p2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 3237
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    if-ne v2, v3, :cond_2

    const/16 v2, 0x5007

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v8, 0x1

    .line 3240
    .local v8, "bIsRecording":Z
    :goto_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 3551
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->optionsMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    .line 3552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->optionsMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->close()V

    .line 3553
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->optionsMenu:Landroid/view/Menu;

    goto :goto_0

    .line 3237
    .end local v8    # "bIsRecording":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 3246
    .restart local v8    # "bIsRecording":Z
    :sswitch_2
    const-string v3, "MtvUiLivePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MTV_UPDATE_FRAG_CMD_MAIN_MINI_MODE_LAUNCH bIsBuffering: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsBuffering:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isHDMIPlugged: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v4, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->isHDMIPlugged:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mControlAnimationRunnable:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getIsEnable: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mControlAnimationRunnable:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->getIsEnable()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3248
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsBuffering:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mControlAnimationRunnable:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mControlAnimationRunnable:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->getIsEnable()Z

    move-result v2

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->isHDMIPlugged:Z

    if-nez v2, :cond_4

    .line 3249
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startAppinAppMode()V

    goto/16 :goto_0

    .line 3246
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mControlAnimationRunnable: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mControlAnimationRunnable:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 3252
    :cond_4
    const v2, 0x7f07020e

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3260
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v2, :cond_0

    .line 3262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 3263
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setBMLLayoutFullView(Z)V

    goto/16 :goto_0

    .line 3268
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v2, :cond_0

    .line 3270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->openBMLHomePage()V

    goto/16 :goto_0

    .line 3275
    :sswitch_5
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 3277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v4, 0x130

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3282
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v4, 0xd6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3287
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v4, 0xdd

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3290
    :sswitch_8
    const/16 v2, 0xe2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xfa0

    aput v5, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnStateChange(I[I)V

    .line 3291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v2, :cond_0

    .line 3292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 3296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto/16 :goto_0

    .line 3307
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v2, :cond_0

    .line 3308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 3309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 3310
    const/16 v2, 0xe2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xfa0

    aput v5, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnStateChange(I[I)V

    goto/16 :goto_0

    .line 3315
    :sswitch_a
    const/16 v2, 0xe2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xfa0

    aput v5, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnStateChange(I[I)V

    .line 3316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v2, :cond_0

    .line 3328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto/16 :goto_0

    .line 3338
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v2

    if-lez v2, :cond_0

    .line 3339
    const/16 v2, 0xe1

    const/4 v3, 0x0

    new-array v3, v3, [I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnStateChange(I[I)V

    goto/16 :goto_0

    .line 3344
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v3, 0x130

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3349
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v2, :cond_0

    .line 3352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 3353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 3354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 3355
    const/16 v2, 0xe2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xbb8

    aput v5, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnStateChange(I[I)V

    goto/16 :goto_0

    .line 3361
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v4, 0x131

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3364
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v2, :cond_5

    .line 3365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->updateBMLSurfaceView()V

    .line 3366
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateCaptions()V

    goto/16 :goto_0

    .line 3369
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v4, 0x138

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3373
    :sswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->blockUiEventsForReservation()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v8, :cond_7

    .line 3374
    :cond_6
    const v2, 0x7f07029a

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showToastforNoOperation(I)V

    goto/16 :goto_0

    .line 3376
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v4, 0x136

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3380
    :sswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->blockUiEventsForReservation()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v8, :cond_9

    .line 3381
    :cond_8
    const v2, 0x7f07029a

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showToastforNoOperation(I)V

    goto/16 :goto_0

    .line 3383
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v4, 0x137

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3393
    :sswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->blockUiEventsForReservation()Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v8, :cond_b

    .line 3394
    :cond_a
    const v2, 0x7f07029a

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showToastforNoOperation(I)V

    goto/16 :goto_0

    .line 3403
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->LaunchChannelGuideActivity(I)V

    goto/16 :goto_0

    .line 3409
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v2, :cond_0

    .line 3410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CAPTURE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_0

    .line 3415
    :sswitch_15
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "MTV_UPDATE_FRAG_CMD_RECORD_DESTROY... enable the audio mute"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3416
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 3418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v4, 0xbb8

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 3419
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->stopRecording()V

    goto/16 :goto_0

    .line 3421
    :cond_d
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordTimerStarted()Z

    move-result v2

    if-nez v2, :cond_e

    .line 3423
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Recording Cancelled as the recording timer never Started !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3424
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->cancelRecording()V

    goto/16 :goto_0

    .line 3427
    :cond_e
    const v2, 0x7f07027d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3430
    :sswitch_16
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    move-object/from16 v15, p2

    .line 3431
    check-cast v15, Ljava/lang/String;

    .line 3432
    .local v15, "phyOrVirChnlText":Ljava/lang/String;
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel number received= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and length= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3433
    const/4 v11, 0x0

    .line 3434
    .local v11, "mChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const/16 v17, 0x0

    .line 3435
    .local v17, "virtualNumber":I
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 3438
    .local v14, "phyOrVirChnlNum":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_11

    .line 3444
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v2

    if-nez v2, :cond_f

    const/16 v2, 0xd

    if-ge v14, v2, :cond_10

    .line 3450
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByVChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v11

    .line 3472
    :cond_10
    :goto_3
    if-eqz v11, :cond_12

    .line 3474
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found a virtual channel mapping the channel input given...mChannel.mPhysicalNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mChannel.mServiceID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3475
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 3476
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v2, "physicalchannelnumber"

    iget v3, v11, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3477
    const-string v2, "virtualchannelnumber"

    iget v3, v11, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3478
    const-string v2, "serviceid"

    iget v3, v11, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3479
    const-string v2, "multichannelnumber"

    iget v3, v11, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v4, 0x13e

    invoke-virtual {v3, v4, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3453
    .end local v9    # "bundle":Landroid/os/Bundle;
    :cond_11
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_10

    .line 3466
    div-int/lit8 v17, v14, 0xa

    .line 3467
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    mul-int/lit8 v3, v17, 0xa

    rem-int/lit8 v4, v14, 0xa

    add-int/2addr v3, v4

    move/from16 v0, v17

    invoke-static {v2, v0, v3}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findVChannelByMultiChannelNum(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v11

    goto :goto_3

    .line 3484
    :cond_12
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Either this is Engineering binary (trying to open PCH) or Logic screwed up sumwhere (Channel is null) !!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 3485
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 3486
    .restart local v9    # "bundle":Landroid/os/Bundle;
    const-string v2, "physicalchannelnumber"

    invoke-virtual {v9, v2, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3487
    const-string v2, "virtualchannelnumber"

    const/4 v3, -0x1

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3488
    const-string v2, "serviceid"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3489
    const-string v2, "multichannelnumber"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v4, 0x13e

    invoke-virtual {v3, v4, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3494
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v11    # "mChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v14    # "phyOrVirChnlNum":I
    .end local v15    # "phyOrVirChnlText":Ljava/lang/String;
    .end local v17    # "virtualNumber":I
    :sswitch_17
    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->endReservationProgram(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 3497
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v4, 0xbb8

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 3501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateSignalInfo:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3506
    :sswitch_19
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 3507
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->stopRecording()V

    .line 3508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v3, 0x130

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3511
    :sswitch_1a
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 3512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v4, 0x130

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3515
    :sswitch_1b
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "onFragEvent MTV_UPDATE_FRAG_CMD_DIALOGS_SIGNAL_ALERT_RETRY_OK"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 3518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v13

    .line 3519
    .local v13, "phyChannelNum":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v16

    .line 3521
    .local v16, "serviceId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v2, :cond_0

    .line 3525
    const/4 v12, 0x0

    .line 3526
    .local v12, "mOpenUri":Landroid/broadcast/helper/MtvURI;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->prepareUri(IIZ)Landroid/broadcast/helper/MtvURI;

    move-result-object v12

    .line 3528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    invoke-interface {v2, v3, v12}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    goto/16 :goto_0

    .line 3533
    .end local v12    # "mOpenUri":Landroid/broadcast/helper/MtvURI;
    .end local v13    # "phyChannelNum":I
    .end local v16    # "serviceId":I
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_0

    .line 3537
    :sswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showExitApplicationDialogwithAntenna()V

    goto/16 :goto_0

    .line 3541
    :sswitch_1e
    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    move-object/from16 v10, p2

    .line 3543
    check-cast v10, Ljava/lang/Boolean;

    .line 3544
    .local v10, "isReset":Ljava/lang/Boolean;
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3545
    const/16 v2, 0xe2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnStateChange(I[I)V

    goto/16 :goto_0

    .line 3547
    :cond_13
    const/16 v2, 0xe2

    const/4 v3, 0x0

    new-array v3, v3, [I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnStateChange(I[I)V

    goto/16 :goto_0

    .line 3240
    nop

    :sswitch_data_0
    .sparse-switch
        0x88 -> :sswitch_1
        0xc9 -> :sswitch_e
        0xca -> :sswitch_f
        0xcb -> :sswitch_10
        0xd1 -> :sswitch_1e
        0xd3 -> :sswitch_4
        0xd4 -> :sswitch_3
        0xd5 -> :sswitch_5
        0xd6 -> :sswitch_6
        0xd9 -> :sswitch_8
        0xda -> :sswitch_9
        0xdb -> :sswitch_a
        0xdc -> :sswitch_d
        0xdd -> :sswitch_7
        0xde -> :sswitch_1c
        0xdf -> :sswitch_b
        0xe0 -> :sswitch_c
        0xe4 -> :sswitch_16
        0xe5 -> :sswitch_14
        0xe6 -> :sswitch_15
        0xe7 -> :sswitch_18
        0xe8 -> :sswitch_11
        0xe9 -> :sswitch_12
        0xea -> :sswitch_0
        0xeb -> :sswitch_13
        0xec -> :sswitch_2
        0xfe -> :sswitch_17
        0x100 -> :sswitch_1a
        0x101 -> :sswitch_19
        0x102 -> :sswitch_1b
        0x108 -> :sswitch_1d
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v6, 0x18

    const/4 v2, 0x0

    const/16 v5, 0x19

    const/4 v1, 0x1

    .line 4145
    const/4 v0, 0x0

    .line 4146
    .local v0, "bIsDisplayable":Z
    iget-boolean v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    if-eqz v3, :cond_1

    .line 4147
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 4209
    :cond_0
    :goto_0
    return v1

    .line 4148
    :cond_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v3, :cond_0

    .line 4153
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_3

    move v0, v1

    .line 4155
    :goto_1
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4156
    const-string v3, "MtvUiLivePlayer"

    const-string v4, "onKeyDown"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4158
    :cond_2
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v3, :cond_0

    .line 4174
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isPhoneLocked()Z

    move-result v3

    if-ne v3, v1, :cond_4

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_4

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_4

    .line 4179
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Locked Key not supported"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 4153
    goto :goto_1

    .line 4183
    :cond_4
    if-eq p1, v5, :cond_5

    if-ne p1, v6, :cond_9

    .line 4186
    :cond_5
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v4, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CHANNELNUM:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v0, :cond_8

    .line 4187
    :cond_6
    if-ne p1, v5, :cond_7

    .line 4188
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->volumeDown()V

    .line 4198
    :goto_2
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v4, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CHANNELNUM:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 4199
    goto :goto_0

    .line 4190
    :cond_7
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->volumeUp()V

    goto :goto_2

    .line 4193
    :cond_8
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startVolumeControlBar()V

    .line 4194
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_2

    .line 4204
    :cond_9
    const/16 v2, 0x7e

    if-eq p1, v2, :cond_0

    const/16 v2, 0x7f

    if-eq p1, v2, :cond_0

    .line 4208
    const-string v1, "MtvUiLivePlayer"

    const-string v2, "Super called for key"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4209
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v4, 0xa

    const/4 v0, 0x1

    .line 4413
    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    if-eqz v1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 4423
    :cond_0
    :goto_0
    return v0

    .line 4414
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_0

    .line 4415
    const/16 v1, 0x18

    if-ne p1, v1, :cond_2

    .line 4416
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableVolumeEscalating:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4418
    :cond_2
    const/16 v1, 0x19

    if-ne p1, v1, :cond_3

    .line 4419
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableVolumeDecreasing:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4423
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v9, 0x19

    const/16 v8, 0x18

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 4239
    iget-boolean v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    if-eqz v5, :cond_1

    .line 4240
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 4361
    :cond_0
    :goto_0
    return v3

    .line 4241
    :cond_1
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v5, :cond_0

    .line 4243
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_3

    move v0, v3

    .line 4245
    .local v0, "bIsDisplayable":Z
    :goto_1
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4246
    const-string v5, "MtvUiLivePlayer"

    const-string v6, "onKeyUp"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4248
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isPhoneLocked()Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x1a

    if-eq p1, v5, :cond_4

    if-eq p1, v8, :cond_4

    if-eq p1, v9, :cond_4

    .line 4252
    const-string v4, "MtvUiLivePlayer"

    const-string v5, "Locked Key not supported"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "bIsDisplayable":Z
    :cond_3
    move v0, v4

    .line 4243
    goto :goto_1

    .line 4256
    .restart local v0    # "bIsDisplayable":Z
    :cond_4
    const/16 v5, 0x1a

    if-ne p1, v5, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-nez v5, :cond_7

    .line 4259
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->lockImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_6

    .line 4261
    const-string v5, "MtvUiLivePlayer"

    const-string v6, "onKeyUp, adding touch lock fragment"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4262
    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setPhoneLocked(Z)V

    .line 4263
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->sleepTimer:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4264
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->hideAllFragments()V

    .line 4266
    new-array v4, v4, [I

    invoke-direct {p0, v3, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setRotateButtonVisibility(Z[I)V

    .line 4267
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnLock()V

    .line 4272
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .local v2, "progInfo":Landroid/app/Fragment;
    if-eqz v2, :cond_5

    .line 4274
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 4275
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 4276
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 4280
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_5
    const/4 v4, 0x3

    invoke-virtual {p0, v4, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->requestSystemKeyEvent(IZ)Z

    .line 4281
    const/16 v4, 0xbb

    invoke-virtual {p0, v4, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->requestSystemKeyEvent(IZ)Z

    goto/16 :goto_0

    .line 4283
    .end local v2    # "progInfo":Landroid/app/Fragment;
    :cond_6
    const-string v4, "MtvUiLivePlayer"

    const-string v5, "onKeyUp, removing touch lock fragment"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4284
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->handleUnlock()V

    goto/16 :goto_0

    .line 4287
    :cond_7
    if-eq p1, v8, :cond_8

    if-ne p1, v9, :cond_d

    .line 4288
    :cond_8
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v4, :cond_9

    .line 4289
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 4291
    :cond_9
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isPhoneLocked()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4292
    :cond_a
    if-ne p1, v8, :cond_c

    .line 4293
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableVolumeEscalating:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4295
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v5, 0x6a

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v4, v5, v7, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 4308
    :cond_b
    :goto_2
    if-nez v0, :cond_0

    .line 4309
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v5, 0x6c

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v4, v5, v7, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 4310
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v5, 0x6c

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v4, v5, v7, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_0

    .line 4299
    :cond_c
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableVolumeDecreasing:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4301
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v5, 0x6b

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v4, v5, v7, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_2

    .line 4315
    :cond_d
    const/16 v5, 0x52

    if-ne p1, v5, :cond_e

    .line 4317
    const/16 v5, 0xe2

    new-array v6, v3, [I

    const/4 v7, -0x1

    aput v7, v6, v4

    invoke-direct {p0, v5, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnStateChange(I[I)V

    .line 4319
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableMenuKeyPress:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 4360
    :cond_e
    const-string v3, "MtvUiLivePlayer"

    const-string v4, "Super called for key"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4361
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public onMtvAppFinishNotify(Ljava/lang/Object;)V
    .locals 10
    .param p1, "intent"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f07024a

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6334
    const-string v4, "MtvUiLivePlayer"

    const-string v5, "onMtvAppFinishNotify!"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 6335
    check-cast v0, Landroid/content/Intent;

    .line 6336
    .local v0, "actionIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 6339
    .local v1, "bIsReservationHandled":Z
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6340
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v4

    const/16 v5, 0x5007

    if-ne v4, v5, :cond_6

    .line 6343
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6345
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->stopRecording()V

    .line 6346
    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    .line 6360
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 6361
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setIntent(Landroid/content/Intent;)V

    .line 6371
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 6372
    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    .line 6374
    :cond_2
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 6375
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 6376
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 6378
    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 6380
    const-string v4, "MtvUiLivePlayer"

    const-string v5, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 6381
    const-string v4, "MtvUiLivePlayer"

    const-string v5, "looks like something already went wrong in middleware... just finishing liveplayer without doing anything..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 6382
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    .line 6383
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->hideNotification()V

    .line 6406
    :goto_2
    const/4 v2, 0x0

    .line 6407
    .local v2, "isAbnormal":Z
    instance-of v4, p1, Landroid/content/Intent;

    if-eqz v4, :cond_4

    move-object v3, p1

    .line 6409
    check-cast v3, Landroid/content/Intent;

    .line 6410
    .local v3, "notifiedIntent":Landroid/content/Intent;
    const-string v4, "MtvUiLivePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifiedIntent.getAction() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6411
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6412
    const/4 v2, 0x1

    .line 6414
    .end local v3    # "notifiedIntent":Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v6, 0x130

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6415
    return-void

    .line 6350
    .end local v2    # "isAbnormal":Z
    :cond_5
    const-string v4, "MtvUiLivePlayer"

    const-string v5, "Recording Cancelled as the recording time is Less than required!"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6351
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->stopRecordTimer()V

    .line 6352
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->cancelRecording()V

    .line 6353
    const/4 v4, 0x7

    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    .line 6354
    const-string v4, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "closing_from_notification"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6357
    invoke-static {p0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 6364
    :cond_6
    const-string v4, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "closing_from_notification"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6367
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 6385
    :cond_7
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 6387
    const-string v4, "antenna_close"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 6389
    const-string v4, "MtvUiLivePlayer"

    const-string v5, "FINISH_BACKGROUND sent from antenna_close condition: Showing Progress Dialog"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 6390
    iput-object v9, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    .line 6397
    :goto_3
    const-string v4, "MtvUiLivePlayer"

    const-string v5, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 6398
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->hideNotification()V

    goto/16 :goto_2

    .line 6394
    :cond_8
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_3

    .line 6402
    :cond_9
    iput-object v9, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    .line 6403
    const-string v4, "MtvUiLivePlayer"

    const-string v5, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_FOREGROUND"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v7, 0x5007

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6252
    const-string v4, "MtvUiLivePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMtvAppAndroidServiceNotify() :: what - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6253
    sparse-switch p1, :sswitch_data_0

    .line 6326
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V

    .line 6331
    :cond_0
    :goto_0
    return-void

    .line 6256
    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->endReservationProgramAndShowAlert()V

    goto :goto_0

    .line 6259
    :sswitch_1
    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->handleFinish(Z)V

    goto :goto_0

    .line 6262
    :sswitch_2
    sget-object v2, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableReservationEndPopupExpire:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 6265
    :sswitch_3
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableShowNotification:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6268
    :sswitch_4
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 6269
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v3

    const/16 v4, 0x5005

    if-eq v3, v4, :cond_0

    .line 6272
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isFilePlayerActivity()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6273
    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 6274
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setSViewRunning(Z)V

    .line 6275
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6276
    .local v0, "coverIntent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6277
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6283
    .end local v0    # "coverIntent":Landroid/content/Intent;
    :sswitch_5
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 6284
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isHeadsetConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6285
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v4, v3, v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioEffect(IZ)I

    goto :goto_0

    .line 6290
    :sswitch_6
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V

    .line 6291
    const/4 v1, 0x0

    .line 6292
    .local v1, "isRecording":Z
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v4, :cond_2

    .line 6293
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v4

    if-ne v4, v7, :cond_3

    move v1, v2

    .line 6296
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v2

    if-nez v2, :cond_0

    .line 6297
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->dismissProgressDialog()V

    .line 6298
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->stopRecordTimer()V

    .line 6299
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->cancelRecording()V

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 6293
    goto :goto_1

    .line 6305
    .end local v1    # "isRecording":Z
    :sswitch_7
    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showNotification(Z)V

    goto/16 :goto_0

    .line 6309
    :sswitch_8
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 6311
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6313
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->stopRecording()V

    goto/16 :goto_0

    .line 6317
    :cond_4
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Recording Cancelled as the recording time is Less than required!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6318
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->stopRecordTimer()V

    .line 6319
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->cancelRecording()V

    goto/16 :goto_0

    .line 6253
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x6 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0x10 -> :sswitch_3
        0x13 -> :sswitch_4
        0x17 -> :sswitch_7
        0x1c -> :sswitch_8
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x13e

    const/4 v5, -0x1

    .line 1010
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onNewIntent(Landroid/content/Intent;)V

    .line 1011
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "onNewIntent()..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    if-eqz v2, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    sget-boolean v2, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->EPGAPP_ENABLED:Z

    if-eqz v2, :cond_a

    .line 1018
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_DTV_VIEW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1020
    const-string v2, "EXTRA_VIEW_CHANNEL_NO"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    .line 1021
    const-string v2, "EXTRA_VIEW_SERVICE_ID"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgServiceId:I

    .line 1023
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIntent EPG -ACTION_DTV_VIEW received channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string v2, "EXTRA_AREA_FLAG"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgAreaId:I

    .line 1025
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIntent() epgServiceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgServiceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "epgAreaId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgAreaId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgAreaId:I

    if-lez v2, :cond_3

    .line 1028
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Directly opening the physical channel with the area_flag !!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1030
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "physicalchannelnumber"

    iget v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1031
    const-string v2, "virtualchannelnumber"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1032
    const-string v2, "multichannelnumber"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1033
    const-string v2, "serviceid"

    iget v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgServiceId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1034
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1105
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isStartedFromChannelScheduleForRecord:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 1106
    const-string v2, "startedFromChannelScheduleForRecord"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isStartedFromChannelScheduleForRecord:Z

    goto/16 :goto_0

    .line 1037
    :cond_3
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIntent EPG -ACTION_DTV_VIEW received channel: not received area_flag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_4

    .line 1040
    const v2, 0x7f070246

    const v3, 0x7f07021b

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->newInstance(II)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "EPGErrorDialogFragment"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 1045
    :cond_4
    const/4 v1, 0x0

    .line 1049
    .local v1, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgServiceId:I

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findPChannelByServiceId(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v1

    .line 1052
    if-eqz v1, :cond_6

    .line 1054
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Actual pch : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] from EPG and pch["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] obtained from mapping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel.mServiceID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    if-eq v2, v5, :cond_5

    .line 1058
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    iget v3, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setLatestChannelsByPChannel(II)V

    .line 1059
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1060
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "physicalchannelnumber"

    iget v3, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1061
    const-string v2, "virtualchannelnumber"

    iget v3, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1062
    const-string v2, "serviceid"

    iget v3, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1063
    const-string v2, "multichannelnumber"

    iget v3, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1064
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1069
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "pch is -1 ! Cross verify the Area Station info ..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1073
    :cond_6
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIntent EPG -ACTION_DTV_VIEW received channel is not found so directly opening the physical channel  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    invoke-static {p0, v2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByPChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v1

    .line 1075
    if-eqz v1, :cond_8

    .line 1076
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    if-eq v2, v5, :cond_7

    .line 1077
    iget v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->epgChNo:I

    iget v3, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setLatestChannelsByPChannel(II)V

    .line 1078
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1079
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "physicalchannelnumber"

    iget v3, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1080
    const-string v2, "virtualchannelnumber"

    iget v3, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1081
    const-string v2, "serviceid"

    iget v3, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1082
    const-string v2, "multichannelnumber"

    iget v3, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1083
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1086
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_7
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "pch is -1 ! Cross verify the Area Station info ..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1089
    :cond_8
    const v2, 0x7f0702f4

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1098
    .end local v1    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :cond_9
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1101
    :cond_a
    if-eqz p1, :cond_2

    .line 1103
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 3696
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3880
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 3698
    :pswitch_1
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 3700
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x130

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3704
    :pswitch_2
    const-wide/16 v6, 0x0

    .line 3705
    .local v6, "availMemSize":J
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3706
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableInternalMemorySize()J

    move-result-wide v6

    .line 3710
    :goto_1
    const-string v1, "MtvUiLivePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "availMemSize :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    const-wide/32 v2, 0x204000

    cmp-long v1, v6, v2

    if-gez v1, :cond_2

    .line 3713
    const-string v1, "MtvUiLivePlayer"

    const-string v2, "memory already full.. cannot start capture..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3714
    const v1, 0x7f070026

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showErrorDialog(I)V

    move v4, v0

    .line 3715
    goto :goto_0

    .line 3708
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v6

    goto :goto_1

    .line 3718
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->captFrame(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    goto :goto_0

    .line 3722
    .end local v6    # "availMemSize":J
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    .line 3723
    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startRecording(Lcom/samsung/sec/mtv/provider/MtvReservation;)I

    move-result v11

    .line 3724
    .local v11, "retVal":I
    if-nez v11, :cond_3

    .line 3726
    const v0, 0x7f070295

    const v1, 0x7f0702a6

    invoke-virtual {p0, v0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showProgressDialog(II)V

    goto :goto_0

    .line 3730
    :cond_3
    const-string v0, "MtvUiLivePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording failed..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3734
    .end local v11    # "retVal":I
    :pswitch_4
    sget-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->EPGAPP_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3738
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.uievolution.gguide.android"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 3739
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 3743
    .local v10, "intent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 3744
    .local v9, "epgServiceID":I
    const-string v0, "ACTION_EPGAPP_VIEW"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3745
    const-string v0, "EXTRA_SERVICE_ID"

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3746
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "G Guide installed"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3747
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3748
    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3749
    .end local v9    # "epgServiceID":I
    .end local v10    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 3750
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "G Guide not installed"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3756
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 3758
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->removeFragments()V

    .line 3760
    :cond_4
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->LaunchChannelGuideActivity(I)V

    goto/16 :goto_0

    .line 3763
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 3765
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->removeFragments()V

    .line 3767
    :cond_5
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->LaunchChannelGuideActivity(I)V

    goto/16 :goto_0

    .line 3770
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->LaunchChannelGuideActivity(I)V

    .line 3772
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 3773
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 3776
    :pswitch_8
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->LaunchChannelGuideActivity(I)V

    goto/16 :goto_0

    .line 3780
    :pswitch_9
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 3782
    .local v12, "selectionBundle":Landroid/os/Bundle;
    invoke-static {v12}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-result-object v13

    .line 3783
    .local v13, "selectionFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "MtvUiSettingsDialogFrag"

    invoke-virtual {v13, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3831
    .end local v12    # "selectionBundle":Landroid/os/Bundle;
    .end local v13    # "selectionFragment":Landroid/app/DialogFragment;
    :pswitch_a
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v1, :cond_0

    .line 3833
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3835
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setBMLLayoutFullView(Z)V

    .line 3836
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 3837
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3838
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 3839
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3844
    :cond_6
    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setBMLLayoutFullView(Z)V

    goto/16 :goto_0

    .line 3849
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 3851
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->openBMLHomePage()V

    goto/16 :goto_0

    .line 3855
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->transferToBT()V

    goto/16 :goto_0

    .line 3858
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->transferToPhone()V

    goto/16 :goto_0

    .line 3862
    :pswitch_e
    const-string v1, "MtvUiLivePlayer"

    const-string v2, "MENU_RECORD_STOP_RECORDING... enable the auiod mute"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3863
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    .line 3865
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3867
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->stopRecording()V

    goto/16 :goto_0

    .line 3869
    :cond_7
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordTimerStarted()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3871
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "Recording Cancelled as the recording timer never Started !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3872
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->cancelRecording()V

    goto/16 :goto_0

    .line 3875
    :cond_8
    const v1, 0x7f07027d

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3696
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->optionsMenu:Landroid/view/Menu;

    .line 3886
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3887
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1335
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onPause()V

    .line 1336
    sput-boolean v2, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsChannelChngd:Z

    .line 1337
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "onPause..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    if-eqz v0, :cond_1

    .line 1340
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "restrictLaunch mode !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1343
    :cond_1
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->unRegisterMediaButtonReceiver()V

    .line 1345
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_2

    .line 1347
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onPause()V

    .line 1349
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsLivePlayMode(Z)V

    .line 1351
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByFromMiniMode(Z)V

    goto :goto_0
.end method

.method public onPlayerNotification(III)V
    .locals 12
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extra"    # I

    .prologue
    .line 4611
    const-string v7, "MtvUiLivePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPlayerNotification ...:command : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " status : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4614
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-nez v7, :cond_0

    .line 4615
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 4616
    :cond_0
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v7, :cond_1

    .line 4617
    new-instance v7, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 4620
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 5258
    :cond_2
    :goto_0
    :pswitch_0
    :sswitch_0
    return-void

    .line 4622
    :pswitch_1
    const/16 v7, 0x6005

    if-ne p2, v7, :cond_8

    .line 4626
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4627
    :cond_4
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "onPlayerNotification - CMD_CREATE - exiting"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 4628
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v8, 0x130

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 4629
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v9, 0x130

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4632
    :cond_5
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    .line 4635
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v7, :cond_6

    .line 4637
    new-instance v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$13;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$13;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4645
    :cond_6
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioEnable(Z)I

    .line 4647
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableShowNotification:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4650
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v7

    if-nez v7, :cond_7

    .line 4652
    new-instance v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$14;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$14;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4690
    :cond_7
    const/4 v2, 0x0

    .line 4692
    .local v2, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    new-instance v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$15;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$15;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4698
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v4

    .line 4699
    .local v4, "phyChannelNum":I
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v5

    .line 4702
    .local v5, "serviceId":I
    const/4 v7, 0x1

    invoke-virtual {p0, v4, v5, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->prepareUri(IIZ)Landroid/broadcast/helper/MtvURI;

    move-result-object v2

    .line 4704
    new-instance v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$16;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$16;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4725
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableCheckIsReservationAndStart:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4728
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v7, :cond_2

    .line 4729
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "44444444444444444444444..."

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 4730
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v7, v8, v2}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    goto/16 :goto_0

    .line 4732
    .end local v2    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    .end local v4    # "phyChannelNum":I
    .end local v5    # "serviceId":I
    :cond_8
    const/16 v7, 0x6004

    if-ne p2, v7, :cond_2

    .line 4733
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "onPlayerNotification - CMD_CREATE - exiting"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 4742
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v7, v8}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->delete(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    goto/16 :goto_0

    .line 4749
    :pswitch_2
    const-string v7, "MtvUiLivePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPlayerNotification ...:CMD_CLOSE: Status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4750
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 4752
    :pswitch_3
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v7, :cond_2

    .line 4753
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    goto/16 :goto_0

    .line 4761
    :pswitch_4
    const-string v7, "MtvUiLivePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPlayerNotification ...:CMD_OPEN: Status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4763
    packed-switch p2, :pswitch_data_2

    :pswitch_5
    goto/16 :goto_0

    .line 4766
    :pswitch_6
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "onPlayerNotification ...CMD_OPEN:STAT_STARTED"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4769
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isHoverEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4770
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->saveNextPreviousChannelNumberForHover()V

    .line 4772
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v8, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v7, v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4773
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v8, 0xed

    const/4 v9, 0x0

    sget-object v10, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 4776
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBmlFullView()Z

    move-result v7

    if-nez v7, :cond_a

    .line 4777
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v9, 0x12d

    const v10, 0x7f07021d

    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4780
    :cond_a
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableShowNotification:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4784
    :pswitch_7
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "Stopping Recorder Service In case it is Opened !"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4785
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4786
    .local v6, "stopIntent":Landroid/content/Intent;
    const-string v7, "COMMAND_KEY"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4787
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 4789
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mEpgIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 4792
    .end local v6    # "stopIntent":Landroid/content/Intent;
    :pswitch_8
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "onPlayerNotification ...CMD_OPEN:STAT_BUFFERING_BEGIN"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4793
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBmlFullView()Z

    move-result v7

    if-nez v7, :cond_2

    .line 4794
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v9, 0x12d

    const v10, 0x7f07021d

    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 4800
    :pswitch_9
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "onPlayerNotification ...CMD_OPEN:STAT_BUFFERING_PROGRESS"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4803
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBmlFullView()Z

    move-result v7

    if-nez v7, :cond_2

    .line 4804
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v9, 0x12d

    const v10, 0x7f07021d

    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 4810
    :pswitch_a
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "onPlayerNotification ...CMD_OPEN:STAT_BUFFERING_END"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4811
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    const/16 v8, 0x12d

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4812
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v9, 0x12d

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 4817
    :pswitch_b
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "STATUS_FAIL_SIGNAL_ERROR"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4824
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->CheckIsReservationPartialOrNone(I)V

    .line 4858
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v7

    if-ne p3, v7, :cond_2

    .line 4860
    new-instance v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$17;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$17;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4865
    new-instance v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$RunnableShowSignalAlertDialog;

    const/16 v8, 0xaa

    invoke-direct {v7, p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$RunnableShowSignalAlertDialog;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4877
    :pswitch_c
    const-string v7, "MtvUiLivePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPlayerNotification ...:CMD_PLAY Status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4878
    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    .line 4880
    :sswitch_1
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "onPlayerNotification ...CMD_PLAY:STAT_STARTED"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4881
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBmlFullView()Z

    move-result v7

    if-nez v7, :cond_b

    .line 4882
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v9, 0x12d

    const v10, 0x7f070268

    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4885
    :cond_b
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v7, :cond_2

    .line 4887
    new-instance v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$18;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$18;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4898
    :sswitch_2
    sget-boolean v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isInBGRecording:Z

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    sput-boolean v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isInBGRecording:Z

    .line 4904
    :cond_c
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v7, :cond_d

    .line 4905
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 4906
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->updateCurrentAudioEffectAndMode()Z

    .line 4909
    :cond_d
    new-instance v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$19;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$19;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4944
    new-instance v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$20;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$20;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4953
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableCheckIsReservationAndStart:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4958
    :sswitch_3
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "onPlayerNotification ...CMD_PLAY:STAT_BUFFERING_BEGIN"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4959
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBmlFullView()Z

    move-result v7

    if-nez v7, :cond_e

    .line 4960
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v9, 0x12d

    const v10, 0x7f070268

    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4964
    :cond_e
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsBuffering:Z

    goto/16 :goto_0

    .line 4967
    :sswitch_4
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "onPlayerNotification ...CMD_PLAY:STAT_BUFFERING_PROGRESS"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4968
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBmlFullView()Z

    move-result v7

    if-nez v7, :cond_f

    .line 4969
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v9, 0x12d

    const v10, 0x7f070268

    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4973
    :cond_f
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsBuffering:Z

    goto/16 :goto_0

    .line 4977
    :sswitch_5
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "onPlayerNotification ...CMD_PLAY:STAT_BUFFERING_END"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4978
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    const/16 v8, 0x12d

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4979
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v9, 0x12d

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4984
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableRemoveWeakSignalDialogue:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4986
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsBuffering:Z

    goto/16 :goto_0

    .line 4991
    :sswitch_6
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "CMD_PLAY -- STAT_FAILURE -- Something severely screwed -- Let MW guys debug this issue !!"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 4992
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v7

    if-nez v7, :cond_10

    .line 4994
    const-string v7, "\n\n\n       [FullSeg]   F A T A L    E R R O R !\n\n\n FullSeg middleware screwed up\n\n  - Use *#9900# to take log after termination - "

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 4997
    .local v3, "message":Landroid/widget/Toast;
    const/16 v7, 0x77

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 4998
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 5000
    .end local v3    # "message":Landroid/widget/Toast;
    :cond_10
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5004
    :sswitch_7
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "onPlayerNotification ...CMD_PLAY:STAT_UNKNOWN:: Something severely screwed -- Happy Debugging !!!"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 5005
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v7

    if-nez v7, :cond_11

    .line 5007
    const-string v7, "\n\n\n       [OneSeg]   F A T A L    E R R O R !\n\n\n OneSeg middleware crashed, cannot continue MTV \n\n  - Use *#9900# to take log after termination - "

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 5011
    .restart local v3    # "message":Landroid/widget/Toast;
    const/16 v7, 0x77

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 5012
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 5015
    .end local v3    # "message":Landroid/widget/Toast;
    :cond_11
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5022
    :pswitch_d
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "onPlayerNotification ...:CMD_DELETE"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5023
    const/16 v7, 0x6005

    if-ne p2, v7, :cond_2

    .line 5026
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5028
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    new-instance v8, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$21;

    invoke-direct {v8, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$21;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5036
    :pswitch_e
    const-string v7, "MtvUiLivePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPlayerNotification ...:CMD_STATUS_UPDT Status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5037
    sparse-switch p2, :sswitch_data_1

    goto/16 :goto_0

    .line 5040
    :sswitch_8
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "STAT_LOW_SIGNAL received"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5042
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->CheckIsReservationPartialOrNone(I)V

    .line 5045
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v7, v8, :cond_12

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v7

    const/16 v8, 0x5007

    if-ne v7, v8, :cond_12

    .line 5046
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v9, 0x141

    const/16 v10, 0x600c

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5051
    :cond_12
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v7

    if-ne p3, v7, :cond_2

    .line 5052
    new-instance v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$22;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$22;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5057
    new-instance v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$RunnableShowSignalAlertDialog;

    const/16 v8, 0xaa

    invoke-direct {v7, p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$RunnableShowSignalAlertDialog;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5061
    :sswitch_9
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v9, 0x134

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 5066
    :sswitch_a
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5067
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "initialize"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5068
    const-string v7, "tab"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5069
    const-string v7, "is_areachanged"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5070
    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 5079
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_f
    const-string v7, "MtvUiLivePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPlayerNotification ...:CMD_RECORD Status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5080
    sparse-switch p2, :sswitch_data_2

    .line 5200
    const-string v7, "MtvUiLivePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignore the status["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] in REC command."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5086
    :sswitch_b
    sget-object v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    new-instance v8, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$23;

    invoke-direct {v8, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$23;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5100
    new-instance v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$24;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$24;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5125
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    .line 5126
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateNotification()V

    goto/16 :goto_0

    .line 5135
    :sswitch_c
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordTimerStarted()Z

    move-result v7

    if-nez v7, :cond_13

    .line 5137
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "Record Timer never started !"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 5138
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    .line 5140
    :cond_13
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->stopRecordTimer()V

    .line 5141
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isStopRecCommandInProcess:Z

    .line 5143
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->saveTVFileThumbnail()V

    .line 5146
    iget-boolean v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    if-eqz v7, :cond_16

    .line 5147
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    .line 5151
    :goto_1
    iget-boolean v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    if-eqz v7, :cond_14

    .line 5152
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndStart()Z

    .line 5153
    :cond_14
    iget-boolean v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    if-nez v7, :cond_15

    .line 5154
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v9, 0x13b

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5155
    :cond_15
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateNotification()V

    goto/16 :goto_0

    .line 5150
    :cond_16
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndEnd(I)V

    goto :goto_1

    .line 5158
    :sswitch_d
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->dismissProgressDialog()V

    .line 5159
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isStopRecCommandInProcess:Z

    .line 5160
    const-string v7, "MtvUiLivePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got CMD_REC with STAT_FAILURE and extra = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5162
    const/16 v0, 0x141

    .line 5164
    .local v0, "errorInfo":I
    const/16 v7, 0x6013

    if-eq p3, v7, :cond_17

    const/16 v7, 0x6011

    if-ne p3, v7, :cond_18

    .line 5166
    :cond_17
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->stopRecordTimer()V

    .line 5167
    const/16 v0, 0x140

    .line 5168
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    .line 5176
    :goto_2
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/4 v9, -0x1

    invoke-virtual {v8, v0, p3, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5177
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateNotification()V

    goto/16 :goto_0

    .line 5174
    :cond_18
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->saveTVFileThumbnail()V

    goto :goto_2

    .line 5181
    .end local v0    # "errorInfo":I
    :sswitch_e
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->dismissProgressDialog()V

    .line 5182
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->startRecordTimer()V

    goto/16 :goto_0

    .line 5186
    :sswitch_f
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->CheckIsReservationPartialOrNone(I)V

    .line 5188
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v7, v8, :cond_19

    .line 5190
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v9, 0x141

    const/16 v10, 0x600c

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5196
    :goto_3
    new-instance v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$RunnableShowSignalAlertDialog;

    const/16 v8, 0xaa

    invoke-direct {v7, p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$RunnableShowSignalAlertDialog;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5194
    :cond_19
    const-string v7, "MtvUiLivePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong State ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] to process Low Signal Event!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5206
    :pswitch_10
    packed-switch p2, :pswitch_data_3

    :pswitch_11
    goto/16 :goto_0

    .line 5218
    :pswitch_12
    const v7, 0x7f070211

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 5213
    :pswitch_13
    const-string v7, "MtvUiLivePlayer"

    const-string v8, "onPlayerNotification: Capture received!!!"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5214
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v9, 0x13a

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 5227
    :pswitch_14
    sparse-switch p2, :sswitch_data_3

    goto/16 :goto_0

    .line 5233
    :sswitch_10
    new-instance v7, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$25;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$25;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4620
    :pswitch_data_0
    .packed-switch 0x5001
        :pswitch_1
        :pswitch_4
        :pswitch_e
        :pswitch_c
        :pswitch_0
        :pswitch_14
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_d
    .end packed-switch

    .line 4750
    :pswitch_data_1
    .packed-switch 0x6005
        :pswitch_3
    .end packed-switch

    .line 4763
    :pswitch_data_2
    .packed-switch 0x6001
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_b
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 4878
    :sswitch_data_0
    .sparse-switch
        0x6001 -> :sswitch_1
        0x6004 -> :sswitch_6
        0x6005 -> :sswitch_2
        0x6006 -> :sswitch_3
        0x6007 -> :sswitch_4
        0x6008 -> :sswitch_5
        0x6011 -> :sswitch_7
    .end sparse-switch

    .line 5037
    :sswitch_data_1
    .sparse-switch
        0x600c -> :sswitch_8
        0x600d -> :sswitch_9
        0x601a -> :sswitch_a
    .end sparse-switch

    .line 5080
    :sswitch_data_2
    .sparse-switch
        0x6001 -> :sswitch_b
        0x6002 -> :sswitch_0
        0x6004 -> :sswitch_d
        0x6005 -> :sswitch_c
        0x600c -> :sswitch_f
        0x6014 -> :sswitch_e
    .end sparse-switch

    .line 5206
    :pswitch_data_3
    .packed-switch 0x6001
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 5227
    :sswitch_data_3
    .sparse-switch
        0x6001 -> :sswitch_0
        0x6005 -> :sswitch_10
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v9, 0x7f0200b9

    const v8, 0x7f0200b6

    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3571
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_0

    .line 3572
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->invalidateOptionsMenu()V

    .line 3687
    :goto_0
    return v3

    .line 3576
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 3577
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3579
    const-string v4, "MtvUiLivePlayer"

    const-string v5, "onPrepareOptionsMenu :Exit Happening... cannot prepare options menu"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3580
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->invalidateOptionsMenu()V

    goto :goto_0

    .line 3584
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3586
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->invalidateOptionsMenu()V

    goto :goto_0

    .line 3589
    :cond_2
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CHANNELNUM:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3591
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->invalidateOptionsMenu()V

    goto :goto_0

    .line 3596
    :cond_3
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v5, :cond_7

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v6

    if-ne v5, v6, :cond_7

    const/16 v5, 0x5000

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v6

    if-ne v5, v6, :cond_7

    move v1, v3

    .line 3599
    .local v1, "bIsStatePlaying":Z
    :goto_1
    const/4 v0, 0x1

    .line 3601
    .local v0, "bIsDisplayable":Z
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->optionsMenu:Landroid/view/Menu;

    .line 3603
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isPhoneLocked()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3605
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3606
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 3608
    :cond_4
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v5

    const/16 v6, 0x5007

    if-ne v5, v6, :cond_8

    .line 3610
    const/4 v2, 0x0

    .line 3611
    .local v2, "menuItem":Landroid/view/MenuItem;
    const/16 v3, 0x10

    const v5, 0x7f0702ed

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f0200b7

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 3612
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3614
    :cond_5
    const v3, 0x7f0702dc

    invoke-interface {p1, v4, v7, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3687
    .end local v2    # "menuItem":Landroid/view/MenuItem;
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    goto/16 :goto_0

    .end local v0    # "bIsDisplayable":Z
    .end local v1    # "bIsStatePlaying":Z
    :cond_7
    move v1, v4

    .line 3596
    goto :goto_1

    .line 3629
    .restart local v0    # "bIsDisplayable":Z
    .restart local v1    # "bIsStatePlaying":Z
    :cond_8
    if-eqz v0, :cond_6

    .line 3630
    const v5, 0x7f070248

    invoke-interface {p1, v4, v4, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200bc

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3632
    const/4 v5, 0x2

    const v6, 0x7f0702ad

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200bd

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3634
    const v5, 0x7f070210

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200bb

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3636
    const/4 v5, 0x3

    const v6, 0x7f070264

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200b3

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_a

    move v5, v3

    :goto_3
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3638
    const/4 v5, 0x4

    const v6, 0x7f070300

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200ba

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->blockUiEventsForReservation()Z

    move-result v6

    if-nez v6, :cond_b

    :goto_4
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3640
    const v3, 0x7f0702dc

    invoke-interface {p1, v4, v7, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3664
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isHeadsetConnected()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3665
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isBTConnected()Z

    move-result v3

    if-nez v3, :cond_c

    .line 3666
    const/16 v3, 0xb

    const v5, 0x7f0701d9

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3676
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_6

    .line 3677
    const/16 v3, 0x9

    const v5, 0x7f07025a

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f0200ac

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3680
    const/16 v3, 0xa

    const v5, 0x7f0701f1

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200b8

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_a
    move v5, v4

    .line 3636
    goto :goto_3

    :cond_b
    move v3, v4

    .line 3638
    goto :goto_4

    .line 3670
    :cond_c
    const/16 v3, 0xc

    const v5, 0x7f0702f8

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5
.end method

.method public onProgramAttributeReset(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 5604
    return-void
.end method

.method public onProgramAttributeUpdated(I)V
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 5550
    const-string v0, "MtvUiLivePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgramAttributeUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5551
    sparse-switch p1, :sswitch_data_0

    .line 5599
    :goto_0
    return-void

    .line 5582
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5586
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x13d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5588
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runnableShowNotification:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5589
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5592
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->RunnableUpdateSignalInfo:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5551
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 11

    .prologue
    .line 1398
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onResume()V

    .line 1399
    const-string v8, "MtvUiLivePlayer"

    const-string v9, "onResume..."

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    new-instance v8, Landroid/content/Intent;

    const-string v9, "intent.stop.app-in-app"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "stopFromDtv"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->sendBroadcast(Landroid/content/Intent;)V

    .line 1402
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "ACTION_EPGAPP_VIEW"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1403
    const/4 v8, 0x0

    sput-boolean v8, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->EPGAPP_ENABLED:Z

    .line 1406
    :goto_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1408
    const-string v8, "MtvUiLivePlayer"

    const-string v9, "isExiting..."

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v8, :cond_0

    .line 1410
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v9, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1412
    :cond_0
    const/4 v3, 0x0

    .line 1413
    .local v3, "isRecording":Z
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v8, :cond_1

    .line 1414
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v8

    const/16 v9, 0x5007

    if-ne v8, v9, :cond_4

    const/4 v3, 0x1

    .line 1416
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 1418
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1420
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->stopRecording()V

    .line 1430
    :cond_2
    :goto_2
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->handleFinish(Z)V

    .line 1634
    .end local v3    # "isRecording":Z
    :goto_3
    return-void

    .line 1405
    :cond_3
    const/4 v8, 0x1

    sput-boolean v8, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->EPGAPP_ENABLED:Z

    goto :goto_0

    .line 1414
    .restart local v3    # "isRecording":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 1424
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->dismissProgressDialog()V

    .line 1425
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->stopRecordTimer()V

    .line 1426
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->cancelRecording()V

    goto :goto_2

    .line 1434
    .end local v3    # "isRecording":Z
    :cond_6
    sget v8, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->type:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_7

    .line 1436
    sget-object v8, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mtvUiPopUpActivity:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    .line 1439
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    if-eqz v8, :cond_9

    .line 1441
    :cond_8
    const-string v8, "MtvUiLivePlayer"

    const-string v9, "restrictLaunch mode !"

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1446
    :cond_9
    invoke-static {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v8

    sget v9, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->preferred_orientation:I

    if-eq v8, v9, :cond_a

    .line 1447
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x100000

    and-int/2addr v8, v9

    if-nez v8, :cond_a

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "startFilePlayer"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1448
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->LaunchChannelGuideActivity(I)V

    .line 1449
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->LaunchFilePLayerActivity(Landroid/content/Intent;)V

    .line 1455
    :cond_a
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->setEnabled(Z)V

    .line 1459
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1461
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v8, :cond_b

    .line 1463
    new-instance v8, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 1466
    :cond_b
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsLivePlayMode(Z)V

    .line 1470
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsFilePlayMiniMode()Z

    move-result v8

    if-nez v8, :cond_c

    .line 1472
    new-instance v1, Landroid/content/ComponentName;

    const-class v8, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-direct {v1, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1473
    .local v1, "cn":Landroid/content/ComponentName;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->stopService(Landroid/content/Intent;)Z

    .line 1477
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_c
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsFilePlayMiniMode()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1479
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->finish()V

    goto/16 :goto_3

    .line 1485
    :cond_d
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLaunchAntennaAlert()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 1486
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1487
    .local v2, "intent":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.samsung.sec.mtv"

    const-string v10, "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1488
    const-string v8, "popup_type"

    const/4 v9, 0x3

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1489
    const/high16 v8, 0x10000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1490
    const-string v8, "MtvUiLivePlayer"

    const-string v9, "Mobile Tv Lanuch antenna"

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startActivity(Landroid/content/Intent;)V

    .line 1492
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 1495
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v0

    .line 1496
    .local v0, "areaCount":I
    const-string v8, "MtvUiLivePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onResume...areaCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    if-lez v0, :cond_f

    .line 1500
    const-string v8, "MtvUiLivePlayer"

    const-string v9, "updateFragmentsOnStateChange called"

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    const/16 v8, 0xe2

    const/4 v9, 0x0

    new-array v9, v9, [I

    invoke-direct {p0, v8, v9}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnStateChange(I[I)V

    .line 1502
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateFragmentsOnLock()V

    .line 1506
    :cond_f
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v9, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CAPTURE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1508
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v9, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CAPTURE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1511
    :cond_10
    if-nez v0, :cond_22

    .line 1512
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setImageViewDuringNoChannel(Z)V

    .line 1516
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x100000

    and-int/2addr v8, v9

    if-nez v8, :cond_23

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "startFilePlayer"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 1517
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "startFilePlayer"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1521
    :goto_5
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateLiveViews()V

    .line 1522
    sget-object v8, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mPendingBackendNotification:Ljava/lang/Object;

    if-eqz v8, :cond_12

    .line 1524
    sget-object v8, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mPendingBackendNotification:Ljava/lang/Object;

    instance-of v8, v8, Landroid/os/Message;

    if-eqz v8, :cond_24

    .line 1525
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    sget-object v8, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mPendingBackendNotification:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1531
    :cond_11
    :goto_6
    const/4 v8, 0x0

    sput-object v8, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mPendingBackendNotification:Ljava/lang/Object;

    .line 1534
    :cond_12
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v8, :cond_13

    .line 1536
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v8, :cond_13

    .line 1538
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v8

    sget-object v9, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v8, v9, :cond_13

    .line 1540
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onResume(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 1545
    :cond_13
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 1546
    .local v4, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bKeyGuardlock:Z

    .line 1548
    const-string v8, "MtvUiLivePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mKeyguardManager "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bKeyGuardlock:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v8, :cond_14

    .line 1551
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 1552
    :cond_14
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndStart()Z

    .line 1559
    const/4 v6, 0x0

    .line 1560
    .local v6, "mreservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getComingReservationID()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_25

    .line 1561
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getComingReservationID()I

    move-result v8

    invoke-static {p0, v8}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v6

    .line 1565
    :cond_15
    :goto_7
    if-eqz v6, :cond_16

    iget v8, v6, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_17

    iget v8, v6, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-eqz v8, :cond_17

    :cond_16
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "isFromAutoantenna"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "isFromAutoantenna"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 1566
    :cond_17
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateKeyguardPolicy(Z)V

    .line 1570
    :cond_18
    const/4 v8, 0x0

    sput-boolean v8, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showStatusNotification:Z

    .line 1573
    const-string v8, "MtvUiLivePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onResume: isScreenOn: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isScreenOn(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "isKeyguardLocked :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isScreenOn(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 1576
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 1579
    :cond_19
    iget-boolean v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bKeyGuardlock:Z

    if-nez v8, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->hasWindowFocus()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 1580
    const/16 v8, 0x1a

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->requestSystemKeyEvent(IZ)Z

    .line 1582
    :cond_1a
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v8, :cond_1b

    .line 1583
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAvStreaming(Z)V

    .line 1586
    :cond_1b
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    if-nez v8, :cond_1c

    .line 1587
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 1588
    :cond_1c
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->registerMediaButtonReceiver()V

    .line 1593
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsLivePlayMiniMode()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 1595
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByReminderAlert()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1597
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservAlertFrom(I)V

    .line 1598
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->checkIsReservationAndStart()Z

    .line 1600
    :cond_1d
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByFromMiniMode(Z)V

    .line 1601
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsLivePlayMiniMode(Z)V

    .line 1604
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateNotification()V

    .line 1607
    :cond_1e
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v8, :cond_1f

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v8

    const/16 v9, 0x5007

    if-ne v8, v9, :cond_1f

    .line 1609
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    .line 1610
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v8

    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getRecordTime()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->continueRecordTimer(I)V

    .line 1612
    :cond_1f
    iget-boolean v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isStartedFromChannelScheduleForRecord:Z

    if-eqz v8, :cond_20

    .line 1613
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startRecording(Lcom/samsung/sec/mtv/provider/MtvReservation;)I

    move-result v7

    .line 1614
    .local v7, "retVal":I
    if-nez v7, :cond_26

    .line 1616
    const v8, 0x7f070295

    const v9, 0x7f0702a6

    invoke-virtual {p0, v8, v9}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showProgressDialog(II)V

    .line 1622
    :goto_8
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isStartedFromChannelScheduleForRecord:Z

    .line 1630
    .end local v7    # "retVal":I
    :cond_20
    sget-boolean v8, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsChannelChngd:Z

    if-eqz v8, :cond_21

    .line 1631
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setBMLLayoutFullView(Z)V

    .line 1632
    :cond_21
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->overridePendingTransition(II)V

    goto/16 :goto_3

    .line 1514
    .end local v4    # "mKeyguardManager":Landroid/app/KeyguardManager;
    .end local v6    # "mreservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_22
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setImageViewDuringNoChannel(Z)V

    goto/16 :goto_4

    .line 1519
    :cond_23
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->initMtvPlayer()V

    goto/16 :goto_5

    .line 1526
    :cond_24
    sget-object v8, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mPendingBackendNotification:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Runnable;

    if-eqz v8, :cond_11

    .line 1528
    sget-object v5, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mPendingBackendNotification:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Runnable;

    .line 1529
    .local v5, "mRunnable":Ljava/lang/Runnable;
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_6

    .line 1562
    .end local v5    # "mRunnable":Ljava/lang/Runnable;
    .restart local v4    # "mKeyguardManager":Landroid/app/KeyguardManager;
    .restart local v6    # "mreservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_25
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_15

    .line 1563
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v8

    invoke-static {p0, v8}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v6

    goto/16 :goto_7

    .line 1620
    .restart local v7    # "retVal":I
    :cond_26
    const-string v8, "MtvUiLivePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isStartedFromChannelScheduleForRecord startRecording failed..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1651
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    if-nez v0, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->setEnabled(Z)V

    .line 1654
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->putFragHandlerData(Landroid/os/Bundle;)V

    .line 1655
    const-string v0, "lockVisibility"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->lockImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1656
    const-string v0, "recordingFailed"

    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bIsRecordingFailed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1657
    const-string v0, "sleeptimer"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->sleepTimer:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1659
    const-string v0, "isStopRecCommandInProcess"

    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isStopRecCommandInProcess:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1660
    const-string v0, "EPG_INTENT"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mEpgIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1662
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1663
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1111
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onStart()V

    .line 1112
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "onStart..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    if-eqz v0, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onStart(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    goto :goto_0
.end method

.method public onStateChanged(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V
    .locals 0
    .param p1, "oldState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .param p2, "newState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .prologue
    .line 4604
    return-void
.end method

.method protected onStop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1358
    const-string v1, "MtvUiLivePlayer"

    const-string v2, "onStop..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    if-eqz v1, :cond_0

    .line 1361
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onStop()V

    .line 1386
    :goto_0
    return-void

    .line 1364
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isScreenOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1366
    sget-boolean v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showStatusNotification:Z

    if-ne v1, v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->HomeKeyPresses(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1367
    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showNotification(Z)V

    .line 1372
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v1, :cond_2

    .line 1374
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onStop()V

    .line 1376
    :cond_2
    const/4 v0, 0x0

    .line 1377
    .local v0, "mreservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getComingReservationID()I

    move-result v1

    if-eq v1, v4, :cond_8

    .line 1378
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getComingReservationID()I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 1382
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    iget v1, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-eq v1, v3, :cond_5

    iget v1, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isFromAutoantenna"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isFromAutoantenna"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1383
    :cond_5
    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->updateKeyguardPolicy(Z)V

    .line 1384
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->dismissProgressDialog()V

    .line 1385
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onStop()V

    goto :goto_0

    .line 1369
    .end local v0    # "mreservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_7
    const-string v1, "MtvUiLivePlayer"

    const-string v2, "showStatusNotification is false"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1379
    .restart local v0    # "mreservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_8
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 1380
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3896
    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->restrictLaunch:Z

    if-eqz v2, :cond_1

    .line 3904
    :cond_0
    :goto_0
    return v0

    .line 3898
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 3899
    goto :goto_0

    .line 3901
    :cond_2
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mChannelGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 3904
    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 6192
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onTrimMemory(I)V

    .line 6193
    const-string v0, "MtvUiLivePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory LEVEL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6194
    const/16 v0, 0x14

    if-lt p1, v0, :cond_2

    .line 6195
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->optionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 6196
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->closeOptionsMenu()V

    .line 6197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->optionsMenu:Landroid/view/Menu;

    .line 6200
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_1

    .line 6201
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->resetBMLTvView()V

    .line 6204
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_3

    .line 6205
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 6206
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 6207
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 6213
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v0, :cond_2

    .line 6214
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->closeBluetoothProxy()V

    .line 6217
    :cond_2
    return-void

    .line 6210
    :cond_3
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "null fraghandler, can\'t remove fragments "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 1390
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showStatusNotification:Z

    .line 1392
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onUserLeaveHint()V

    .line 1393
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x6c

    const/16 v1, 0x1a

    .line 1305
    if-eqz p1, :cond_1

    .line 1306
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->requestSystemKeyEvent(IZ)Z

    .line 1308
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1310
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->requestSystemKeyEvent(IZ)Z

    goto :goto_0
.end method

.method protected registerVideoSurfaceView(Z)V
    .locals 2
    .param p1, "isRegister"    # Z

    .prologue
    .line 6119
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_0

    .line 6121
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->enable()V

    .line 6122
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v0

    .line 6123
    .local v0, "mVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    if-eqz v0, :cond_0

    .line 6124
    if-eqz p1, :cond_1

    .line 6126
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegVideoControl;->registerSurface(Landroid/view/SurfaceView;)Z

    .line 6134
    .end local v0    # "mVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :cond_0
    :goto_0
    return-void

    .line 6130
    .restart local v0    # "mVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegVideoControl;->unregisterSurface(Landroid/view/SurfaceView;)V

    goto :goto_0
.end method

.method public releaseTunerAndFinish()V
    .locals 2

    .prologue
    .line 1875
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "releaseTunerAndFinish() :: "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isConflictHandlerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1878
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->closeService()V

    .line 1879
    invoke-static {}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->reset()V

    .line 1881
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->releaseReservationWakeLock()V

    .line 1883
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->finish()V

    .line 1884
    return-void
.end method

.method public setBMLLayoutFullView(Z)V
    .locals 8
    .param p1, "isFull"    # Z

    .prologue
    const/16 v7, 0xee

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6057
    const v1, 0x7f0a0026

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6058
    .local v0, "dummyView":Landroid/view/View;
    const-string v1, "MtvUiLivePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBMLLayoutFullView : isFull - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 6059
    if-nez v0, :cond_0

    .line 6060
    sget v1, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->preferred_orientation:I

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->requestOrientation(I)V

    .line 6063
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v1, :cond_2

    .line 6065
    if-eqz p1, :cond_3

    .line 6071
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCaptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6072
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6073
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v1, v5}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBMLFullView(Z)V

    .line 6074
    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setRequestedOrientation(I)V

    .line 6075
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 6076
    invoke-static {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 6078
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 6079
    new-array v1, v4, [I

    invoke-direct {p0, v4, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setRotateButtonVisibility(Z[I)V

    .line 6080
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v1, v5}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setKeepScreenOn(Z)V

    .line 6082
    sput-boolean v5, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBMLFullView:Z

    .line 6084
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6085
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v7, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 6112
    :cond_2
    :goto_0
    return-void

    .line 6090
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6091
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v1, v4}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBMLFullView(Z)V

    .line 6092
    sget v1, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->preferred_orientation:I

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->requestOrientation(I)V

    .line 6094
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 6095
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v1, v4}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setKeepScreenOn(Z)V

    .line 6097
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isCaptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6099
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCaptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6100
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setCaptionText()V

    .line 6102
    :cond_4
    sput-boolean v4, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isBMLFullView:Z

    .line 6104
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6105
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v7, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_0
.end method

.method public showExitApplicationDialog()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1932
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1933
    .local v0, "dlgInfoBundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    const/16 v2, 0x5007

    if-ne v1, v2, :cond_3

    .line 1935
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->access$7200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1937
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "save_exit_confirmation"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1939
    const-string v1, "dialogType"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1940
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitAppDialog:Landroid/app/DialogFragment;

    .line 1941
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitAppDialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "save_exit_confirmation"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1964
    :cond_0
    :goto_0
    return-void

    .line 1946
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMinRecTime:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    .line 1947
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMinRecTime:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 1948
    :cond_2
    const v1, 0x7f07027d

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMinRecTime:Landroid/widget/Toast;

    .line 1949
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMinRecTime:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1951
    const-string v1, "MtvUiLivePlayer"

    const-string v2, "Cant exit unless min time recorded"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1956
    :cond_3
    const-string v1, "MtvUiLivePlayer"

    const-string v2, "Not Recording... Showing normal exit dialog..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "exit_confirmation"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1959
    const-string v1, "dialogType"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1960
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitAppDialog:Landroid/app/DialogFragment;

    .line 1961
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitAppDialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "exit_confirmation"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showExitApplicationDialogwithAntenna()V
    .locals 4

    .prologue
    .line 1971
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1972
    .local v0, "dlgInfoBundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1974
    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->onFragEvent(ILjava/lang/Object;)V

    .line 1981
    :goto_0
    return-void

    .line 1977
    :cond_0
    const-string v1, "dialogType"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1978
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitAppDialog:Landroid/app/DialogFragment;

    .line 1979
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitAppDialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "save_exit_confirmation_antenna"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showExitingAppDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1892
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    .line 1893
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070249

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1894
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f07024a

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1895
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1896
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1897
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1898
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mExitProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1899
    return-void
.end method

.method public showProgressDialog(II)V
    .locals 4
    .param p1, "titleResId"    # I
    .param p2, "messageId"    # I

    .prologue
    const/4 v3, 0x1

    .line 276
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "SettingsPopUpDialogFragment"

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 278
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 279
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->bKeyGuardlock:Z

    if-nez v0, :cond_0

    .line 280
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->requestSystemKeyEvent(IZ)Z

    .line 281
    :cond_0
    return-void
.end method

.method public showSignalAlertDialog(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1907
    const-string v1, "MtvUiLivePlayer"

    const-string v2, "showSignalAlertDialog..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1911
    sget-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "signal_alert_retry_exit"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1913
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1914
    .local v0, "dlgInfoBundle":Landroid/os/Bundle;
    const-string v1, "dialogType"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1915
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNoSignalAlertDialog:Landroid/app/DialogFragment;

    .line 1916
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mNoSignalAlertDialog:Landroid/app/DialogFragment;

    sget-object v2, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "signal_alert_retry_exit"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1918
    .end local v0    # "dlgInfoBundle":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mLiveUiMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x133

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1925
    :goto_0
    return-void

    .line 1922
    :cond_1
    const-string v1, "MtvUiLivePlayer"

    const-string v2, "Cannot Show SignalAlertDialog after onSaveInstance... Adding to Pending Notifiction !"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    new-instance v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$RunnableShowSignalAlertDialog;

    const/16 v2, 0xaa

    invoke-direct {v1, p0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$RunnableShowSignalAlertDialog;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    sput-object v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mPendingBackendNotification:Ljava/lang/Object;

    goto :goto_0
.end method

.method public startAppinAppMode()V
    .locals 7

    .prologue
    const/16 v6, 0x3c

    .line 6223
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v2, :cond_0

    .line 6224
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v3, 0xe4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 6225
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsLivePlayMiniMode(Z)V

    .line 6226
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6227
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 6228
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "MtvUiLivePlayer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6229
    const-string v2, "window.pos.x"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6230
    const-string v2, "window.pos.y"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6231
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6232
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->resetBMLTvView()V

    .line 6233
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->finish()V

    .line 6234
    return-void
.end method
