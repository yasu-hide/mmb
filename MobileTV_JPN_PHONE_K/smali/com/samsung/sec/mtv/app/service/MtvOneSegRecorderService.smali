.class public Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;
.super Landroid/app/Service;
.source "MtvOneSegRecorderService.java"

# interfaces
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
.implements Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$BGRecordingNotificationRunnable;
    }
.end annotation


# static fields
.field public static final CMD_MTV_RECORDER_SERVICE_START:I = 0x1

.field public static final CMD_MTV_RECORDER_SERVICE_STOP:I = 0x2

.field public static final COMMAND_KEY:Ljava/lang/String; = "COMMAND_KEY"

.field private static final RECORDING_INSUFF_MEM:I = 0x1

.field private static final RECORDING_INSUFF_PHONE_MEM:I = 0x2

.field private static final RECORDING_START_FAILURE:I = -0x1

.field private static final RECORDING_START_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MtvOneSegRecorderService"


# instance fields
.field private isBGExitInvoked:Z

.field private isStopSelfCalled:Z

.field private mBGRecordHandler:Landroid/os/Handler;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mCurrentOpenedChannel:I

.field private mCurrentOpenedService:I

.field private mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

.field private mLowSignalRecStopReason:Z

.field private mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

.field private mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOpenChannelRunnable:Ljava/lang/Runnable;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRecLocation:I

.field private mReserveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private upcomingReservationId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 86
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 88
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 89
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mPowerManager:Landroid/os/PowerManager;

    .line 90
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    iput-boolean v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->isStopSelfCalled:Z

    .line 93
    iput-boolean v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->isBGExitInvoked:Z

    .line 94
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mBGRecordHandler:Landroid/os/Handler;

    .line 96
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mReserveList:Ljava/util/ArrayList;

    .line 97
    iput v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedChannel:I

    .line 98
    iput v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedService:I

    .line 100
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 101
    iput v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->upcomingReservationId:I

    .line 102
    iput-boolean v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mLowSignalRecStopReason:Z

    .line 103
    iput v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mRecLocation:I

    .line 676
    new-instance v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$8;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$8;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mOpenChannelRunnable:Ljava/lang/Runnable;

    .line 1069
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleStartReservation()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleOpenChannel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->showNotification(Z)V

    return-void
.end method

.method private cancelNotification()V
    .locals 2

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private cancelRecording()V
    .locals 2

    .prologue
    .line 779
    const-string v0, "MtvOneSegRecorderService"

    const-string v1, "cancelRecording():: "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mRecLocation:I

    .line 781
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 782
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->cancelRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    .line 783
    return-void
.end method

.method private closeOneSegPlayer()Z
    .locals 3

    .prologue
    .line 1209
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "closeOneSegPlayer():: "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const/4 v0, 0x0

    .line 1211
    .local v0, "isClosed":Z
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1212
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_0

    .line 1214
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->ordinal()I

    move-result v1

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1216
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v1, v2}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->delete(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 1217
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "closeOneSegPlayer():: Successfully called delete..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :cond_0
    :goto_0
    return v0

    .line 1219
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    const/16 v2, 0x500f

    if-ne v1, v2, :cond_2

    .line 1221
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "closeOneSegPlayer():: Already delete going on..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1225
    :cond_2
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "closeOneSegPlayer():: Backend Not Initialized..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->stopSelf()V

    goto :goto_0
.end method

.method private handleFinishReservation(IZ)V
    .locals 7
    .param p1, "newStatus"    # I
    .param p2, "isRecordingCancelled"    # Z

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 983
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v1, :cond_2

    .line 985
    const-string v1, "MtvOneSegRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFinishResevation():: newStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " curStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    if-eqz p2, :cond_4

    .line 988
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "Recording Cancelled as the recording time is Less than required!"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->stopRecordTimer()V

    .line 990
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->cancelRecording()V

    .line 991
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0702af

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1000
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1039
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "No Change in Status..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_1
    :goto_0
    const-string v1, "MtvOneSegRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status During Finish Reservation..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->updateReservationStatus(I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 1045
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 1049
    :cond_2
    iget v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->upcomingReservationId:I

    if-ne v1, v6, :cond_6

    .line 1051
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "No upcoming reservations... deleting backend and Stopping BGRecorder Service..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->closeOneSegPlayer()Z

    .line 1067
    :cond_3
    :goto_1
    return-void

    .line 993
    :cond_4
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    const/16 v2, 0x5007

    if-ne v1, v2, :cond_0

    .line 995
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "Recording is going on... Invoke stopRecord and wait for RECORD_COMPLETE callback..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->stopRecording()V

    goto :goto_1

    .line 1004
    :sswitch_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v1, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-ne v1, v5, :cond_1

    .line 1006
    const/16 p1, 0x8

    goto :goto_0

    .line 1012
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v1, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1014
    const/16 p1, 0x9

    goto :goto_0

    .line 1020
    :sswitch_2
    iget-boolean v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mLowSignalRecStopReason:Z

    if-eqz v1, :cond_5

    .line 1022
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v1, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-ne v1, v5, :cond_5

    .line 1024
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "Updating Status as Partially Recorded, since Rec stopped by low signal!"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const/16 p1, 0x8

    .line 1028
    :cond_5
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mLowSignalRecStopReason:Z

    goto/16 :goto_0

    .line 1032
    :sswitch_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v1, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 1034
    const/16 p1, 0xc

    goto/16 :goto_0

    .line 1056
    :cond_6
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "There is a back-to-back reservation waiting.. Starting that now.."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->upcomingReservationId:I

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 1058
    .local v0, "mUpcomingReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v0, :cond_3

    iget-wide v2, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 1061
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 1062
    iput v6, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->upcomingReservationId:I

    .line 1063
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "Starting Next Reservation..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleStartReservation()V

    goto/16 :goto_1

    .line 1000
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method private handleOpenChannel()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 616
    const/4 v5, 0x0

    .line 617
    .local v5, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v10}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v6

    .line 618
    .local v6, "preferencePChannel":I
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v10}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v7

    .line 619
    .local v7, "preferencePChannelServiceId":I
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v1, v10, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    .line 620
    .local v1, "currentReservationPChannel":I
    :goto_0
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v2, v10, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    .line 622
    .local v2, "currentServiceId":I
    :goto_1
    const/4 v4, 0x0

    .line 623
    .local v4, "isOpenSuccess":Z
    const-string v10, "MtvOneSegRecorderService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "openChannel():: latestP Channel"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v10, "MtvOneSegRecorderService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "openChannel():: latestP Channel ServiceId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v10, "MtvOneSegRecorderService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "openChannel():: current reservation P Channel"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v10, "MtvOneSegRecorderService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "openChannel():: current opened channel"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedChannel:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v10, "MtvOneSegRecorderService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "openChannel():: current opened Service"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedService:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 629
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v10, :cond_4

    .line 631
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v10, :cond_4

    .line 633
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v10}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    .line 634
    .local v0, "currentCommand":I
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v10}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    .line 635
    .local v3, "currentState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->ordinal()I

    move-result v10

    sget-object v11, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->ordinal()I

    move-result v11

    if-lt v10, v11, :cond_2

    iget v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedChannel:I

    iget-object v11, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v11, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    if-ne v10, v11, :cond_2

    iget v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedService:I

    iget-object v11, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v11, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-ne v10, v11, :cond_2

    .line 637
    const-string v8, "MtvOneSegRecorderService"

    const-string v10, "openChannel():: Already Current Reservation\'s Channel Opened"

    invoke-static {v8, v10}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 673
    .end local v0    # "currentCommand":I
    .end local v3    # "currentState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    :goto_2
    return v8

    .end local v1    # "currentReservationPChannel":I
    .end local v2    # "currentServiceId":I
    .end local v4    # "isOpenSuccess":Z
    :cond_0
    move v1, v8

    .line 619
    goto/16 :goto_0

    .line 620
    .restart local v1    # "currentReservationPChannel":I
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 640
    .restart local v0    # "currentCommand":I
    .restart local v2    # "currentServiceId":I
    .restart local v3    # "currentState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .restart local v4    # "isOpenSuccess":Z
    :cond_2
    const/16 v10, 0x5002

    if-ne v0, v10, :cond_3

    iget v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedChannel:I

    iget-object v11, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v11, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    if-ne v10, v11, :cond_3

    iget v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedService:I

    iget-object v11, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v11, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-ne v10, v11, :cond_3

    .line 642
    const-string v8, "MtvOneSegRecorderService"

    const-string v10, "openChannel():: Current Reservation\'s Open command already issued..."

    invoke-static {v8, v10}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 643
    goto :goto_2

    .line 645
    :cond_3
    iget v9, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedChannel:I

    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v10, v10, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    if-ne v9, v10, :cond_4

    iget v9, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedService:I

    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v10, v10, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-ne v9, v10, :cond_4

    .line 647
    const-string v9, "MtvOneSegRecorderService"

    const-string v10, "openChannel():: Already open issued... But command not yet taken up by AppPlayerOneSeg Thread..."

    invoke-static {v9, v10}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v9, "MtvOneSegRecorderService"

    const-string v10, "openChannel():: Previous undispatched open commands would have been removed... Allowing to be issued again.. "

    invoke-static {v9, v10}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .end local v0    # "currentCommand":I
    .end local v3    # "currentState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    :cond_4
    const-string v9, "MtvOneSegRecorderService"

    const-string v10, "openChannel():: Current Reservation\'s Open Command not issued yet... opening now..."

    invoke-static {v9, v10}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    if-eq v1, v8, :cond_5

    .line 656
    new-instance v5, Landroid/broadcast/helper/MtvURI;

    .end local v5    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    const/4 v8, 0x6

    invoke-direct {v5, v8, v1, v2}, Landroid/broadcast/helper/MtvURI;-><init>(III)V

    .line 658
    .restart local v5    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v9, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v8, v9, v5}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    move-result v4

    .line 661
    :cond_5
    if-eqz v4, :cond_6

    .line 663
    iput v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedChannel:I

    .line 664
    iput v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedService:I

    .line 665
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 667
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 668
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v9, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v9, v9, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 669
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v10, v10, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    iget-object v11, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v11, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-static {v9, v10, v11}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findMultiChannelNoByServiceId(Landroid/content/Context;II)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    :cond_6
    move v8, v4

    .line 673
    goto/16 :goto_2
.end method

.method private handleStartReservation()V
    .locals 9

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 882
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "handleStartReservation()::"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v2, v3, :cond_7

    .line 886
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v2, :cond_0

    .line 888
    const-string v2, "MtvOneSegRecorderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartReservation():: mCurrentOpenedChannel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedChannel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mCurrentReservation.mPch  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v4, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurrentOpenedService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedService:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mCurrentReservation.mPgmServiceID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v4, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    sparse-switch v2, :sswitch_data_0

    .line 963
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "handleStartReservation():: Current Reservation is not in a valid state... This cannot happen !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 894
    :sswitch_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedChannel:I

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedService:I

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-ne v2, v3, :cond_4

    .line 897
    const/4 v0, -0x1

    .line 898
    .local v0, "recordStartStatus":I
    invoke-direct {p0, v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->startRecording(Z)I

    move-result v0

    .line 899
    if-ne v0, v8, :cond_1

    .line 901
    const/4 v2, 0x5

    invoke-direct {p0, v2, v6}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto :goto_0

    .line 903
    :cond_1
    if-ne v0, v5, :cond_2

    .line 905
    invoke-direct {p0, v7, v6}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto :goto_0

    .line 907
    :cond_2
    if-ne v0, v7, :cond_3

    .line 909
    const/16 v2, 0xc

    invoke-direct {p0, v2, v6}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto :goto_0

    .line 913
    :cond_3
    const-string v2, "MtvOneSegRecorderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartReservation():: recordStartStatus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 919
    .end local v0    # "recordStartStatus":I
    :cond_4
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "handleStartReservation():: Current Reservation start might be going on... safely issueing openChannel again..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 921
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 922
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->openChannel()Z

    .line 923
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "handleStartReservation():: Channel not yet locked... Waiting for it..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 929
    :sswitch_1
    iget v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->upcomingReservationId:I

    if-eq v2, v5, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->upcomingReservationId:I

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v1

    .line 932
    .local v1, "upComingReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v1, :cond_0

    .line 934
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget-wide v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    iget-wide v4, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 936
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "handleStartReservation():: upcomingReservation is a back to back Reservation..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    const/16 v3, 0x5007

    if-ne v2, v3, :cond_5

    .line 941
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "handleStartReservation():: invoked finish of current Reservation..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-direct {p0, v8, v6}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto/16 :goto_0

    .line 946
    :cond_5
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "handleStartReservation():: current Reservation in invalid state when upcoming Reservation triggered..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-direct {p0, v7, v6}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto/16 :goto_0

    .line 955
    :cond_6
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "handleStartReservation():: current Reservation is not valid as , upcoming reservation start time and current reservation end time does not match..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-direct {p0, v7, v6}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto/16 :goto_0

    .line 971
    .end local v1    # "upComingReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_7
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "handleStartReservation():: Backend Not Yet Initialized..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 889
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private initMtvPlayer()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 508
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 509
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 510
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v1

    .line 513
    .local v1, "validAreaCount":I
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 515
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "initMtvPlayer():: No valid playback context... obtaining live context and performing create of backend..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 529
    const/4 v0, 0x0

    .line 537
    .local v0, "isCreateInvokeSuccess":Z
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;I)Z

    move-result v0

    .line 540
    if-nez v0, :cond_0

    .line 542
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "initMtvPlayer():: invoking screwupCleanup..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->screwupCleanup()V

    .line 551
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;I)Z

    move-result v0

    .line 555
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 597
    .end local v0    # "isCreateInvokeSuccess":Z
    :cond_1
    :goto_0
    return-void

    .line 560
    :cond_2
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v2, :cond_3

    .line 562
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "initMtvPlayer():: Valid playback context exists !!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_3

    .line 565
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    const/16 v3, 0x5001

    if-ne v2, v3, :cond_4

    .line 567
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "BAckend Create Going on... Wait for it to complete.."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_3
    :goto_1
    if-nez v1, :cond_1

    .line 591
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "initMtvPlayer()::  No Area is Set... Directly Updating to FAIL"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->updateReservationStatus(I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    goto :goto_0

    .line 571
    :cond_4
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "Create did not happen for some reason... issuing create again..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 584
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;I)Z

    goto :goto_1
.end method

.method private openChannel()Z
    .locals 3

    .prologue
    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, "isPosted":Z
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mBGRecordHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mOpenChannelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 609
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mBGRecordHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mOpenChannelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 610
    return v0
.end method

.method private resetContextManager()V
    .locals 1

    .prologue
    .line 1235
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->reset()V

    .line 1240
    return-void
.end method

.method private saveTVFileThumbnail()V
    .locals 5

    .prologue
    .line 1191
    const-string v3, "MtvOneSegRecorderService"

    const-string v4, "saveTVFileThumbnail() ::"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1193
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getCaptFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1194
    .local v0, "bmpImage":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getCaptFrameName()Ljava/lang/String;

    move-result-object v2

    .line 1196
    .local v2, "thumbnailName":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 1198
    const-string v3, "MtvOneSegRecorderService"

    const-string v4, "saveTVFileThumbnail() :: saving Thumbnail...."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    new-instance v1, Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-direct {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;-><init>()V

    .line 1200
    .local v1, "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/sec/mtv/provider/MtvFile;->setFileFormat(I)V

    .line 1201
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Lcom/samsung/sec/mtv/provider/MtvFile;->setCreationTime(Ljava/util/Date;)V

    .line 1202
    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->setFilePath(Ljava/lang/String;)V

    .line 1203
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v3

    invoke-static {v3, v0, v1}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->saveFile(ILandroid/graphics/Bitmap;Lcom/samsung/sec/mtv/provider/MtvFile;)V

    .line 1205
    .end local v1    # "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_1
    return-void
.end method

.method private showNotification(Z)V
    .locals 14
    .param p1, "isOnGoing"    # Z

    .prologue
    .line 1092
    const-string v10, "MtvOneSegRecorderService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showNotification called , isOnGoing ? :: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1094
    .local v1, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 1095
    .local v3, "launchIntent":Landroid/app/PendingIntent;
    const/4 v4, 0x0

    .line 1096
    .local v4, "mCloseIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 1097
    .local v6, "mNotification":Landroid/app/Notification;
    const/4 v9, 0x0

    .line 1098
    .local v9, "mTickerText":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1100
    .local v8, "mRemoteView":Landroid/widget/RemoteViews;
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->cancelNotification()V

    .line 1101
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1102
    .local v7, "mNotificationBuilder":Landroid/app/Notification$Builder;
    const v10, 0x7f0200c3

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1103
    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1105
    if-eqz p1, :cond_1

    .line 1107
    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    const/high16 v10, 0x100000

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1110
    new-instance v10, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1111
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v1, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1112
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_CLOSE_FROM_NOTIFICATION"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1114
    new-instance v8, Landroid/widget/RemoteViews;

    .end local v8    # "mRemoteView":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f030032

    invoke-direct {v8, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1115
    .restart local v8    # "mRemoteView":Landroid/widget/RemoteViews;
    const v10, 0x7f0a0121

    const v11, 0x7f0200c3

    invoke-virtual {v8, v10, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1116
    const v10, 0x7f0a0123

    const v11, 0x7f070295

    invoke-virtual {p0, v11}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1117
    const v10, 0x7f0a0126

    const v11, 0x7f0701f2

    invoke-virtual {p0, v11}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1118
    const v10, 0x7f0a0129

    invoke-virtual {v8, v10, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1120
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 1121
    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1122
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1123
    const v10, 0x7f070295

    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1124
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1125
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 1164
    :goto_0
    iput-object v9, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1165
    if-eqz p1, :cond_5

    .line 1167
    const v10, 0x7f0200c3

    invoke-virtual {p0, v10, v6}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->startForeground(ILandroid/app/Notification;)V

    .line 1180
    :cond_0
    :goto_1
    return-void

    .line 1129
    :cond_1
    const-string v10, "ACTION_DTV_RESERVATION_LIST"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    const/high16 v10, 0x10000000

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1132
    new-instance v10, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1133
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p0, v10, v1, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1134
    const v10, 0x7f0701f3

    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1135
    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1136
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1137
    const v10, 0x7f0701f3

    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1139
    new-instance v5, Landroid/app/Notification$InboxStyle;

    invoke-direct {v5, v7}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1140
    .local v5, "mInboxStyle":Landroid/app/Notification$InboxStyle;
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1142
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mReserveList:Ljava/util/ArrayList;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mReserveList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 1144
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mReserveList:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1146
    const/4 v2, 0x0

    .line 1147
    .local v2, "isSummaryNeeded":Z
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_2
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mReserveList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_2

    .line 1149
    const-string v10, "MtvOneSegRecorderService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showNotification() :: program_list index ::"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const/4 v10, 0x3

    if-ne v0, v10, :cond_4

    .line 1152
    const/4 v2, 0x1

    .line 1157
    :cond_2
    if-eqz v2, :cond_3

    .line 1159
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mReserveList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "more"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1162
    .end local v0    # "index":I
    .end local v2    # "isSummaryNeeded":Z
    :cond_3
    invoke-virtual {v5}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v6

    goto/16 :goto_0

    .line 1155
    .restart local v0    # "index":I
    .restart local v2    # "isSummaryNeeded":Z
    :cond_4
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mReserveList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v5, v10}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1171
    .end local v0    # "index":I
    .end local v2    # "isSummaryNeeded":Z
    .end local v5    # "mInboxStyle":Landroid/app/Notification$InboxStyle;
    :cond_5
    const-string v10, "MtvOneSegRecorderService"

    const-string v11, "Reservation Not Ongoing ! Remove foreground notification !"

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->stopForeground(Z)V

    .line 1174
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v10, :cond_0

    .line 1176
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mNotificationManager:Landroid/app/NotificationManager;

    const v11, 0x7f0200c3

    invoke-virtual {v10, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1177
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mNotificationManager:Landroid/app/NotificationManager;

    const v11, 0x7f0200c3

    invoke-virtual {v10, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1
.end method

.method private startRecording(Z)I
    .locals 24
    .param p1, "isReservationRecording"    # Z

    .prologue
    .line 686
    const-string v4, "MtvOneSegRecorderService"

    const-string v11, "startRecording():: "

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-wide/16 v12, 0x0

    .line 688
    .local v12, "availMemSize":J
    const/16 v18, 0x0

    .line 689
    .local v18, "recURI":Ljava/lang/String;
    const/4 v5, -0x1

    .local v5, "recType":I
    const/4 v7, -0x1

    .line 690
    .local v7, "storeType":I
    const/4 v8, 0x0

    .local v8, "chnlName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 691
    .local v9, "progName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 692
    .local v15, "channelInfo":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    const/16 v16, 0x0

    .line 693
    .local v16, "currentProgram":Landroid/broadcast/helper/types/MtvOneSegProgram;
    const/4 v10, 0x0

    .local v10, "mRecordDate":Ljava/util/Date;
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    .line 694
    .local v17, "currentTime":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 696
    .local v14, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v11

    if-ne v4, v11, :cond_0

    .line 697
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableInternalMemorySize()J

    move-result-wide v12

    .line 701
    :goto_0
    const-string v4, "MtvOneSegRecorderService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "startRecording():: availMemSize :"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-wide/32 v20, 0x204000

    cmp-long v4, v12, v20

    if-gez v4, :cond_1

    .line 704
    const-string v4, "MtvOneSegRecorderService"

    const-string v11, "memory already full.. cannot start recording..."

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/4 v4, 0x1

    .line 763
    :goto_1
    return v4

    .line 699
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v12

    goto :goto_0

    .line 708
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isLowMemoryToLaunch()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 710
    const-string v4, "MtvOneSegRecorderService"

    const-string v11, "Phone memory is almost full (Insufficient to Launch Mobile TV) .Hence cannot start recording..."

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const/4 v4, 0x2

    goto :goto_1

    .line 715
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastSetRecordingMode()I

    move-result v4

    if-nez v4, :cond_8

    const/4 v5, 0x2

    .line 716
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mRecLocation:I

    .line 717
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mRecLocation:I

    if-ne v4, v11, :cond_9

    .line 719
    const-string v6, "/sdcard/video/MyTvFiles/"

    .line 720
    .local v6, "memLoc":Ljava/lang/String;
    const/4 v7, 0x1

    .line 729
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 730
    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v8

    .line 733
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getCurrentProgram()Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v16

    .line 734
    if-eqz v16, :cond_4

    .line 735
    invoke-virtual/range {v16 .. v16}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getProgName()Ljava/lang/String;

    move-result-object v9

    .line 738
    :cond_4
    if-eqz p1, :cond_a

    .line 740
    new-instance v10, Ljava/util/Date;

    .end local v10    # "mRecordDate":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget-wide v0, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    move-wide/from16 v20, v0

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

    .line 748
    .restart local v10    # "mRecordDate":Ljava/util/Date;
    :goto_4
    if-nez v8, :cond_5

    const-string v8, "No Station Name"

    .line 749
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget-object v4, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget-object v4, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget-object v9, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    .line 752
    :cond_6
    if-nez v9, :cond_7

    const-string v9, "No Program Name"

    .line 753
    :cond_7
    new-instance v4, Landroid/broadcast/helper/types/MtvOneSegPlayer;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v11, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-direct/range {v4 .. v11}, Landroid/broadcast/helper/types/MtvOneSegPlayer;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;I)V

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegPlayer;->getRecordURI()Ljava/lang/String;

    move-result-object v18

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    long-to-int v0, v12

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v4, v11, v0, v1, v2}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->startRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Ljava/lang/String;IZ)Z

    move-result v4

    if-nez v4, :cond_b

    .line 756
    const-string v4, "MtvOneSegRecorderService"

    const-string v11, "startRecording() failed"

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v11, 0x7f0702b0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v4, v11, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 758
    const/4 v4, -0x1

    goto/16 :goto_1

    .line 715
    .end local v6    # "memLoc":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 724
    :cond_9
    const-string v6, "/mnt/extSdCard/video/MyTvFiles/"

    .line 725
    .restart local v6    # "memLoc":Ljava/lang/String;
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 744
    :cond_a
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

    .restart local v10    # "mRecordDate":Ljava/util/Date;
    goto/16 :goto_4

    .line 762
    :cond_b
    const-string v4, "MtvOneSegRecorderService"

    const-string v11, "startRecording() start"

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method private stopRecording()V
    .locals 2

    .prologue
    .line 769
    const-string v0, "MtvOneSegRecorderService"

    const-string v1, "stopRecording():: "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mRecLocation:I

    .line 772
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 773
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->stopRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    .line 775
    return-void
.end method

.method private updateReservationInfo(Landroid/content/Intent;)V
    .locals 7
    .param p1, "startIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 826
    const/4 v1, -0x1

    .line 827
    .local v1, "reservationId":I
    const/4 v0, 0x0

    .line 829
    .local v0, "mReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    const-string v2, "dbId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 831
    const-string v2, "dbId"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 832
    const-string v2, "MtvOneSegRecorderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReservationInfo():: reservation RESERVATION_START DB ID ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    if-ne v1, v6, :cond_1

    .line 835
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "updateReservationInfo():: reservation Id is not Valid ! "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 839
    if-nez v0, :cond_2

    .line 841
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "updateReservationInfo():: Reservation is not Valid ! Ignoring the Reservation Start trigger !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_2
    iget-wide v2, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 846
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 848
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "updateReservationInfo():: previous reservation still going on..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iput v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->upcomingReservationId:I

    goto :goto_0

    .line 853
    :cond_3
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "updateReservationInfo():: no current reservation... update the triggered reservation as current"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iput v6, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->upcomingReservationId:I

    .line 855
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    goto :goto_0

    .line 861
    :cond_4
    const-string v2, "reminderDbId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 863
    const-string v2, "reminderDbId"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 864
    const-string v2, "MtvOneSegRecorderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReservationInfo():: RESERVATION_REMINDER triggered..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 866
    if-eqz v0, :cond_5

    iget-wide v2, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 868
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "updateReservationInfo():: reservation exists and reservation start time is valid!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iput v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->upcomingReservationId:I

    .line 871
    :cond_5
    const-string v2, "MtvOneSegRecorderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReservationInfo():: upcomingReservationId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->upcomingReservationId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateReservationStatus(I)Lcom/samsung/sec/mtv/provider/MtvReservation;
    .locals 7
    .param p1, "newStatus"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x6

    .line 787
    const-string v2, "MtvOneSegRecorderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReservationStatus():: newStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget-wide v4, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const/4 v3, 0x0

    new-array v3, v3, [Z

    invoke-static {v2, v4, v5, v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 792
    .local v0, "mCurrentReserveInfoInDB":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v0, :cond_2

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-ne v2, v6, :cond_2

    .line 794
    :cond_0
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "current Reservation either not started or ongoing.. can update the status..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    invoke-static {v2, v3, p1}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 796
    if-ne p1, v6, :cond_1

    .line 798
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 806
    :cond_1
    :goto_0
    return-object v1

    .line 805
    :cond_2
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "Reservation already ended... and already has valid end STATUS..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 109
    const-string v0, "MtvOneSegRecorderService"

    const-string v1, "onCreate..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "MtvOneSegRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobileTV APP VERSION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->mobileTvAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 112
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->registerBaseListener(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V

    .line 113
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mReserveList:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mPowerManager:Landroid/os/PowerManager;

    .line 116
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "MobileTV_BGRecorder"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 117
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 118
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    .line 120
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->setAppComponents(Landroid/content/Context;)V

    .line 124
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 178
    const-string v0, "MtvOneSegRecorderService"

    const-string v1, "OnDestroy Called..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->unregisterListener(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V

    .line 182
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->isStopSelfCalled:Z

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    .line 185
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 186
    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->unregisterRecievers()V

    .line 187
    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->showNotification(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isConflictHandlerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->closeService()V

    .line 192
    invoke-static {}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->reset()V

    .line 194
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->releaseReservationWakeLock()V

    .line 200
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->stopForeground(Z)V

    .line 201
    iput v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedChannel:I

    .line 202
    iput v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentOpenedService:I

    .line 203
    iput-boolean v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->isBGExitInvoked:Z

    .line 204
    iput v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mRecLocation:I

    .line 206
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 207
    return-void

    .line 198
    :cond_2
    const-string v0, "MtvOneSegRecorderService"

    const-string v1, "Not Stopping Itself ; probably Application invoked destruction of recorderService "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "MtvOneSegRecorderService"

    const-string v1, "onLowMemory..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 171
    return-void
.end method

.method public onMtvAppFinishNotify(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "stringAction":Ljava/lang/String;
    instance-of v1, p1, Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 488
    check-cast p1, Landroid/content/Intent;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 490
    :cond_0
    const-string v1, "MtvOneSegRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMtvAppFinishNotify() :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    if-eqz v0, :cond_2

    .line 493
    const-string v1, "com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.nttdocomo.mmb.android.mmbsv.intent.INTENT_TUNER_RELEASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 495
    :cond_1
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "Background Recording closed as a result of Tmm Request !"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->upcomingReservationId:I

    .line 497
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    .line 500
    :cond_2
    return-void
.end method

.method public onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V
    .locals 10
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x6

    const/4 v2, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 394
    const-string v3, "MtvOneSegRecorderService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMtvAppLiveBroadcastNotify():: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-nez v3, :cond_1

    .line 397
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "No Current Reservation available!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    .line 401
    .local v1, "mCurrentState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    :goto_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    .line 402
    .local v0, "mCurrentCommand":I
    :goto_2
    const-string v3, "MtvOneSegRecorderService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current PlaybackState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 468
    :sswitch_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-ne v2, v9, :cond_0

    iget v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mRecLocation:I

    if-nez v2, :cond_0

    .line 470
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v1, v2, :cond_0

    const/16 v2, 0x5007

    if-ne v0, v2, :cond_0

    .line 472
    const/4 v2, 0x7

    invoke-direct {p0, v2, v7}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto :goto_0

    .line 400
    .end local v0    # "mCurrentCommand":I
    .end local v1    # "mCurrentState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    :cond_2
    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    goto :goto_1

    .restart local v1    # "mCurrentState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    :cond_3
    move v0, v2

    .line 401
    goto :goto_2

    .line 407
    .restart local v0    # "mCurrentCommand":I
    :sswitch_1
    const-string v3, "MtvOneSegRecorderService"

    const-string v4, "MTVAPP_ANDROID_SERVICE_RESERVATION_END..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-ne v3, v9, :cond_4

    .line 410
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v1, v2, :cond_0

    const/16 v2, 0x5007

    if-ne v0, v2, :cond_0

    .line 412
    invoke-direct {p0, v7, v6}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto :goto_0

    .line 415
    :cond_4
    iget v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->upcomingReservationId:I

    if-ne v3, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v2, :cond_5

    .line 417
    invoke-direct {p0, v8, v6}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto :goto_0

    .line 421
    :cond_5
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "MTVAPP_ANDROID_SERVICE_RESERVATION_END Not a valid state for reservation... "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, v8, v6}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto/16 :goto_0

    .line 429
    :sswitch_2
    const-string v3, "MtvOneSegRecorderService"

    const-string v4, "MTVAPP_ANDROID_SERVICE_RESERVATION_CLOSE_FROM_NOTIFICATION..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-boolean v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->isBGExitInvoked:Z

    if-eqz v3, :cond_6

    .line 432
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "Already Invoked BGExit ! Not invoking now..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 436
    :cond_6
    iput-boolean v7, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->isBGExitInvoked:Z

    .line 438
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-ne v3, v9, :cond_8

    .line 440
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v1, v2, :cond_0

    const/16 v2, 0x5007

    if-ne v0, v2, :cond_0

    .line 442
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 444
    invoke-direct {p0, v7, v6}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    .line 445
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0702c5

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 450
    :cond_7
    const/4 v2, 0x7

    invoke-direct {p0, v2, v7}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto/16 :goto_0

    .line 455
    :cond_8
    iget v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->upcomingReservationId:I

    if-ne v3, v2, :cond_9

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mCurrentReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v2, :cond_9

    .line 457
    invoke-direct {p0, v8, v6}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto/16 :goto_0

    .line 461
    :cond_9
    const-string v2, "MtvOneSegRecorderService"

    const-string v3, "MTVAPP_ANDROID_SERVICE_RESERVATION_END Not a valid state for reservation..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, v8, v6}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto/16 :goto_0

    .line 403
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0x16 -> :sswitch_2
        0x1c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPlayerNotification(III)V
    .locals 9
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extra"    # I

    .prologue
    const/16 v8, 0x6011

    const/16 v7, 0x6004

    const/16 v6, 0x6005

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 220
    const-string v1, "MtvOneSegRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayerNotification ...:command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sparse-switch p1, :sswitch_data_0

    .line 387
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 226
    :sswitch_1
    const-string v1, "MtvOneSegRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMtvAppPlayerOneSeg.CMD_CREATE status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-ne p2, v6, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->openChannel()Z

    goto :goto_0

    .line 231
    :cond_1
    if-ne p2, v7, :cond_0

    .line 233
    const/4 v1, 0x2

    invoke-direct {p0, v1, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto :goto_0

    .line 240
    :sswitch_2
    const-string v1, "MtvOneSegRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMtvAppPlayerOneSeg.CMD_OPEN status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/16 v1, 0x6001

    if-ne p2, v1, :cond_2

    .line 243
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "Open Command being processed..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_2
    if-ne p2, v7, :cond_3

    .line 247
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "openChannel failed..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x4

    invoke-direct {p0, v1, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleFinishReservation(IZ)V

    goto :goto_0

    .line 250
    :cond_3
    if-ne p2, v6, :cond_4

    .line 252
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mBGRecordHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$BGRecordingNotificationRunnable;

    invoke-direct {v2, v4, p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$BGRecordingNotificationRunnable;-><init>(ZLcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mBGRecordHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$1;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$1;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 257
    :cond_4
    const/16 v1, 0x6019

    if-eq p2, v1, :cond_5

    const/16 v1, 0x6018

    if-ne p2, v1, :cond_0

    .line 259
    :cond_5
    const/16 v1, 0x6018

    if-ne p2, v1, :cond_8

    .line 261
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getCurrentProgramName()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "progName":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 263
    :cond_6
    const v1, 0x7f07028a

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_7
    const-string v1, "MtvOneSegRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recording progName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mReserveList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 267
    .end local v0    # "progName":Ljava/lang/String;
    :cond_8
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->showNotification(Z)V

    goto/16 :goto_0

    .line 274
    :sswitch_3
    if-ne p2, v8, :cond_0

    .line 276
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "Abnormal death Happened ! "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mBGRecordHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$2;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$2;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 288
    :sswitch_4
    const-string v1, "MtvOneSegRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMtvAppPlayerOneSeg.CMD_RECORD status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sparse-switch p2, :sswitch_data_1

    goto/16 :goto_0

    .line 293
    :sswitch_5
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "Current Reservation Recording Started...!"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mBGRecordHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$BGRecordingNotificationRunnable;

    invoke-direct {v2, v4, p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$BGRecordingNotificationRunnable;-><init>(ZLcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->updateReservationStatus(I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    goto/16 :goto_0

    .line 300
    :sswitch_6
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->stopRecordTimer()V

    .line 301
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->saveTVFileThumbnail()V

    .line 302
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mBGRecordHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$3;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$3;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 312
    :sswitch_7
    const-string v1, "MtvOneSegRecorderService"

    const-string v2, "IMtvAppPlayerOneSeg.CMD_RECORD status  IMtvAppPlayerOneSeg.STAT_FAILURE"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->stopRecordTimer()V

    .line 314
    const/16 v1, 0x6013

    if-eq p3, v1, :cond_9

    if-ne p3, v8, :cond_a

    .line 316
    :cond_9
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mBGRecordHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$4;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$4;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 322
    :cond_a
    const/16 v1, 0x6012

    if-ne p3, v1, :cond_b

    .line 324
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mBGRecordHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$5;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$5;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 332
    :cond_b
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mBGRecordHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$6;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$6;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 343
    :sswitch_8
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->startRecordTimer()V

    goto/16 :goto_0

    .line 349
    :sswitch_9
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mLowSignalRecStopReason:Z

    .line 350
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mBGRecordHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$7;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$7;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 367
    :sswitch_a
    const-string v1, "MtvOneSegRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMtvAppPlayerOneSeg.CMD_DELETE status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    if-ne p2, v6, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->resetContextManager()V

    .line 371
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->isStopSelfCalled:Z

    .line 372
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->stopSelf()V

    goto/16 :goto_0

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x5001 -> :sswitch_1
        0x5002 -> :sswitch_2
        0x5004 -> :sswitch_3
        0x5007 -> :sswitch_4
        0x5008 -> :sswitch_0
        0x500f -> :sswitch_a
    .end sparse-switch

    .line 289
    :sswitch_data_1
    .sparse-switch
        0x6001 -> :sswitch_5
        0x6004 -> :sswitch_7
        0x6005 -> :sswitch_6
        0x600c -> :sswitch_9
        0x6014 -> :sswitch_8
    .end sparse-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 130
    const-string v0, "MtvOneSegRecorderService"

    const-string v1, "onStartCommand..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 132
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 135
    const-string v0, "COMMAND_KEY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "COMMAND_KEY"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 141
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->updateReservationInfo(Landroid/content/Intent;)V

    .line 142
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->initMtvPlayer()V

    .line 146
    const-string v0, "dbId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->handleStartReservation()V

    .line 155
    :cond_0
    :goto_0
    return v3

    .line 149
    :cond_1
    const-string v0, "COMMAND_KEY"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onStateChanged(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V
    .locals 0
    .param p1, "oldState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .param p2, "newState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .prologue
    .line 215
    return-void
.end method
