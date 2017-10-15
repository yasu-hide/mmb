.class public Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
.source "MtvUiSViewCover.java"

# interfaces
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;
.implements Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$sViewCoverSurfaceOnTouchListener;,
        Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;
    }
.end annotation


# static fields
.field private static final DELAY_TIMER_FOR_START_CHANNEL:J = 0x9c4L

.field public static final FLING_MAJOR_MOVE:I = 0x64

.field private static final RECORDING_INSUFF_MEM:I = 0x1

.field private static final RECORDING_START_FAILURE:I = -0x1

.field private static final RECORDING_START_SUCCESS:I = 0x0

.field private static RunnableReservationEndPopupExpire:Ljava/lang/Runnable; = null

.field private static final TAG:Ljava/lang/String; = "MtvUiSViewCover"

.field private static final TIMEOUT_INTERVAL_VALUE:I = 0xbb8

.field private static mPendingBackendNotification:Ljava/lang/Object;


# instance fields
.field private RunnableCheckIsReservationAndStart:Ljava/lang/Runnable;

.field private RunnableNextPreviousChannel:Ljava/lang/Runnable;

.field private RunnableresetComingReservationID:Ljava/lang/Runnable;

.field private bIsRecordingFailed:Z

.field private coverSurfaceView:Landroid/view/SurfaceView;

.field private dummySurface:Landroid/widget/ImageView;

.field private generalToast:Landroid/widget/Toast;

.field private isDirectLaunch:Z

.field private isLocalPlayback:Z

.field private isStartedFromMiniMode:Z

.field private isStopRecCommandInProcess:Z

.field private lp:Landroid/view/WindowManager$LayoutParams;

.field private mChannelNameButton:Landroid/widget/Button;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

.field private mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

.field private mPgmVlmlayout:Landroid/widget/LinearLayout;

.field private mPlayPauseButton:Landroid/widget/ImageButton;

.field private mPreviousChannelChangeTime:J

.field private mProgramNameTextView:Landroid/widget/TextView;

.field private mReservationEndDialog:Landroid/app/DialogFragment;

.field private mSViewUiMsgHandler:Landroid/os/Handler;

.field private mVolumeButton:Landroid/widget/ImageButton;

.field private runnableVolumeDecreasing:Ljava/lang/Runnable;

.field private runnableVolumeEscalating:Ljava/lang/Runnable;

.field private selectedFileIndex:I

.field private shownToastforOperationNA:Z

.field private volumeLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mPendingBackendNotification:Ljava/lang/Object;

    .line 2028
    new-instance v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$14;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$14;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->RunnableReservationEndPopupExpire:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;-><init>()V

    .line 116
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 117
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 119
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGestureDetector:Landroid/view/GestureDetector;

    .line 127
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 129
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isDirectLaunch:Z

    .line 130
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isLocalPlayback:Z

    .line 131
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->bIsRecordingFailed:Z

    .line 132
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isStopRecCommandInProcess:Z

    .line 139
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mReservationEndDialog:Landroid/app/DialogFragment;

    .line 140
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->shownToastforOperationNA:Z

    .line 143
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isStartedFromMiniMode:Z

    .line 597
    new-instance v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$4;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$4;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->volumeLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 782
    new-instance v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$7;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$7;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->runnableVolumeEscalating:Ljava/lang/Runnable;

    .line 792
    new-instance v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$8;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$8;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->runnableVolumeDecreasing:Ljava/lang/Runnable;

    .line 1027
    new-instance v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$11;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$11;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->RunnableNextPreviousChannel:Ljava/lang/Runnable;

    .line 1056
    new-instance v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    .line 2020
    new-instance v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$13;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$13;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->RunnableresetComingReservationID:Ljava/lang/Runnable;

    .line 2075
    new-instance v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$15;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$15;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->RunnableCheckIsReservationAndStart:Ljava/lang/Runnable;

    return-void
.end method

.method private CheckIsReservationPartialOrNone(I)V
    .locals 7
    .param p1, "statusID"    # I

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 1892
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v2, :cond_0

    .line 1893
    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 1895
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v0

    .line 1896
    .local v0, "CurrReserveId":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1897
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v1

    .line 1898
    .local v1, "mOnGoingReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v1, :cond_1

    .line 1899
    packed-switch p1, :pswitch_data_0

    .line 1929
    const-string v2, "MtvUiSViewCover"

    const-string v3, "No Above"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    .end local v1    # "mOnGoingReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_1
    :goto_0
    return-void

    .line 1902
    .restart local v1    # "mOnGoingReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :pswitch_0
    const-string v2, "MtvUiSViewCover"

    const-string v3, "CheckIsReservationPartialOrNone    :STATUS_FAIL_SIGNAL_ERROR"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-ne v2, v6, :cond_3

    .line 1904
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-ne v2, v4, :cond_2

    .line 1905
    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->CheckIsreservationAndUpdatefailureReason(I)V

    goto :goto_0

    .line 1907
    :cond_2
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->CheckIsreservationAndUpdatefailureReason(I)V

    goto :goto_0

    .line 1909
    :cond_3
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v2, :cond_1

    .line 1910
    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->CheckIsreservationAndUpdatefailureReason(I)V

    goto :goto_0

    .line 1916
    :pswitch_1
    const-string v2, "MtvUiSViewCover"

    const-string v3, "CheckIsReservationPartialOrNone    :STATUS_FAIL_MEMORY_ERROR"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-ne v2, v6, :cond_5

    .line 1918
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-ne v2, v4, :cond_4

    .line 1919
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->CheckIsreservationAndUpdatefailureReason(I)V

    goto :goto_0

    .line 1921
    :cond_4
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->CheckIsreservationAndUpdatefailureReason(I)V

    goto :goto_0

    .line 1923
    :cond_5
    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v2, :cond_1

    .line 1924
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->CheckIsreservationAndUpdatefailureReason(I)V

    goto :goto_0

    .line 1899
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

    .line 1938
    const-string v5, "MtvUiSViewCover"

    const-string v6, "CheckIsreservationAndUpdatefailureReason"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v5

    invoke-static {p0, v5}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v3

    .line 1940
    .local v3, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    const/4 v1, 0x0

    .line 1941
    .local v1, "isExit":Z
    const/4 v2, 0x0

    .line 1943
    .local v2, "message":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1944
    const-string v5, "MtvUiSViewCover"

    const-string v6, "CheckIsreservationAndUpdatefailureReason() : invalid reservation"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    :goto_0
    return-void

    .line 1948
    :cond_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReserveAlertFrom()I

    move-result v5

    if-nez v5, :cond_1

    .line 1949
    const-string v5, "MtvUiSViewCover"

    const-string v6, "CheckIsreservationAndUpdatefailureReason() : OUT_OF_APP"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    const/4 v1, 0x1

    .line 1956
    :goto_1
    iget v5, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v5, :cond_3

    .line 1958
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByFromMiniMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1959
    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1970
    :goto_2
    iget v4, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    .line 1971
    .local v4, "type":I
    const-string v5, "MtvUiSViewCover"

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

    .line 1972
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->checkIsReservationAndEnd(I)V

    .line 1974
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1975
    .local v0, "endBundle":Landroid/os/Bundle;
    const-string v5, "dialogType"

    const/4 v6, 0x7

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1976
    const-string v5, "reserve_end_exit"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1977
    const-string v5, "dialog_msg"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    const-string v5, "reserve_type"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1980
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "signal_alert_retry_exit"

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1981
    const-string v5, "MtvUiSViewCover"

    const-string v6, "startReservationProgram :NoSignal popup closed"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "signal_alert_terminate"

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1983
    const-string v5, "MtvUiSViewCover"

    const-string v6, "startReservationProgram :mNoSignalTerminate popup closed"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "exit_confirmation"

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1985
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "save_exit_confirmation"

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1986
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->endFailReservationProgram(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1953
    .end local v0    # "endBundle":Landroid/os/Bundle;
    .end local v4    # "type":I
    :cond_1
    const-string v5, "MtvUiSViewCover"

    const-string v6, "CheckIsreservationAndUpdatefailureReason() : not OUT_OF_APP"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1961
    :cond_2
    const v5, 0x7f07031a

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1965
    :cond_3
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByFromMiniMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1966
    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 1968
    :cond_4
    const v5, 0x7f070317

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->dummySurface:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->updatePlayBackButton()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->runnableVolumeDecreasing:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->changePlayBackMode()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isStopRecCommandInProcess:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->stopRecording()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->showProgramName()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isLocalPlayback:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mProgramNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mPgmVlmlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getNextPreviousChannelNumber(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->RunnableNextPreviousChannel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->calculateDelayForStartChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->updateMainControlBar()V

    return-void
.end method

.method static synthetic access$3300(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;
    .param p1, "x1"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->showToast(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->checkIsReservationAndStart()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->setVolumeTextandButton()V

    return-void
.end method

.method static synthetic access$4000(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->cancelRecording()V

    return-void
.end method

.method static synthetic access$4100(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;
    .param p1, "x1"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->setLatestChannelsByPChannel(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$4600()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;Lcom/samsung/sec/mtv/provider/MtvReservation;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/provider/MtvReservation;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->startReservationProgram(Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->RunnableresetComingReservationID:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$5000()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->RunnableReservationEndPopupExpire:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5200()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    return-object v0
.end method

.method static synthetic access$5300()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    return-object v0
.end method

.method static synthetic access$5400()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->endReservationProgram(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$5600()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    return-object v0
.end method

.method static synthetic access$5702(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 104
    sput-object p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mPendingBackendNotification:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5800()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->runnableVolumeEscalating:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private calculateDelayForStartChannel()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x9c4

    .line 1040
    const-wide/16 v2, 0x0

    .line 1041
    .local v2, "delayStartTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1042
    .local v0, "currentSystemTimeVal":J
    iget-wide v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mPreviousChannelChangeTime:J

    sub-long v4, v0, v6

    .line 1043
    .local v4, "timeDiff":J
    cmp-long v6, v4, v8

    if-lez v6, :cond_0

    .line 1044
    const-wide/16 v2, 0x0

    .line 1051
    :goto_0
    const-string v6, "MtvUiSViewCover"

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

    iget-wide v8, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mPreviousChannelChangeTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": current:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mPreviousChannelChangeTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iput-wide v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mPreviousChannelChangeTime:J

    .line 1053
    return-wide v2

    .line 1046
    :cond_0
    sub-long v2, v8, v4

    goto :goto_0
.end method

.method private cancelRecording()V
    .locals 2

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-nez v0, :cond_0

    .line 1382
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->cancelRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    .line 1384
    return-void
.end method

.method private changePlayBackMode()V
    .locals 2

    .prologue
    .line 1330
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->resume(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    .line 1334
    :goto_0
    return-void

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->pause(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    goto :goto_0
.end method

.method private checkIsReservationAndEnd(I)V
    .locals 7
    .param p1, "newStatus"    # I

    .prologue
    const/4 v6, -0x1

    .line 1741
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->shownToastforOperationNA:Z

    .line 1742
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v3, :cond_0

    .line 1744
    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 1746
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v2

    .line 1747
    .local v2, "reserve_id":I
    const-string v3, "MtvUiSViewCover"

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

    .line 1748
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isReservationProgram()Z

    move-result v3

    if-eqz v3, :cond_3

    if-le v2, v6, :cond_3

    .line 1750
    invoke-static {p0, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v1

    .line 1751
    .local v1, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v1, :cond_3

    .line 1752
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 1753
    iget-wide v4, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-static {p0, v4, v5}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->isImmediateReservation(Landroid/content/Context;J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1754
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1755
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "dbId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1756
    const-string v3, "youNeedToShowAlert"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1760
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getComingReservationID()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 1761
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setComingReservationID(I)V

    .line 1763
    :cond_2
    invoke-static {p0, v1, p1}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 1767
    .end local v1    # "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_3
    return-void
.end method

.method private checkIsReservationAndStart()Z
    .locals 12

    .prologue
    .line 1392
    const-string v7, "MtvUiSViewCover"

    const-string v8, "checkIsReservationAndStart()"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const/4 v4, 0x0

    .line 1394
    .local v4, "result":Z
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1397
    .local v1, "res_bundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1398
    const-string v7, "MtvUiSViewCover"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " checkIsReservationAndStart() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "dbId"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    :cond_0
    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_f

    .line 1405
    const-string v7, "MtvUiSViewCover"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkIsReservationAndStart()   res_bundle:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isFinishing::  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isFinishing()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1408
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v7, v8, :cond_2

    .line 1410
    :cond_1
    const-string v7, "MtvUiSViewCover"

    const-string v8, "current context is scan/Local.. will wait until scan is cancelled and then start reservation..."

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v4

    .line 1479
    :goto_0
    return v7

    .line 1413
    :cond_2
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v7, v8, :cond_e

    .line 1414
    const-string v7, "dbId"

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1415
    .local v3, "reservation_id":I
    invoke-static {p0, v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v2

    .line 1416
    .local v2, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    const-string v7, "youNeedToShowAlert"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1417
    .local v5, "showAlert":Z
    if-eqz v2, :cond_8

    iget v7, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v7, :cond_8

    iget-wide v8, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_8

    .line 1421
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v7

    if-nez v7, :cond_6

    .line 1423
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->checkIsReservationAndEnd(I)V

    .line 1425
    const v6, 0x7f070287

    .line 1427
    .local v6, "toastMessageId":I
    iget v7, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v7, :cond_5

    .line 1428
    const v6, 0x7f070286

    .line 1433
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/16 v8, 0x1c9

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1434
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/16 v8, 0x1c9

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1436
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x7d0

    invoke-static {v7, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1437
    const/4 v7, 0x0

    goto :goto_0

    .line 1429
    :cond_5
    iget v7, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 1430
    const v6, 0x7f070287

    goto :goto_1

    .line 1440
    .end local v6    # "toastMessageId":I
    :cond_6
    if-nez v5, :cond_d

    .line 1443
    const-string v7, "MtvUiSViewCover"

    const-string v8, "checkIsReservation : this may be a valid reservation,lets check it"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v7, v8, :cond_9

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v7

    const/16 v8, 0x5007

    if-ne v7, v8, :cond_9

    .line 1446
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->stopRecording()V

    .line 1470
    :cond_7
    :goto_2
    const/4 v4, 0x1

    .end local v2    # "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .end local v3    # "reservation_id":I
    .end local v5    # "showAlert":Z
    :cond_8
    :goto_3
    move v7, v4

    .line 1479
    goto/16 :goto_0

    .line 1447
    .restart local v2    # "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .restart local v3    # "reservation_id":I
    .restart local v5    # "showAlert":Z
    :cond_9
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v7, v8, :cond_c

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v7

    const/16 v8, 0x5007

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v7

    if-eq v7, v3, :cond_c

    .line 1449
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v8

    invoke-static {v7, v8}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 1450
    .local v0, "onGoingreserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v0, :cond_a

    .line 1451
    iget v7, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_b

    .line 1452
    iget v7, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 1453
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->checkIsReservationAndEnd(I)V

    .line 1458
    :cond_a
    :goto_4
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservationAlertID(I)V

    .line 1459
    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->startReservationProgram(Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    goto :goto_2

    .line 1454
    :cond_b
    iget v7, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v7, :cond_a

    .line 1455
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->checkIsReservationAndEnd(I)V

    goto :goto_4

    .line 1461
    .end local v0    # "onGoingreserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_c
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservationAlertID(I)V

    .line 1462
    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->startReservationProgram(Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    goto :goto_2

    .line 1466
    :cond_d
    if-eqz v5, :cond_7

    .line 1467
    const-string v7, "MtvUiSViewCover"

    const-string v8, "checkIsReservation : showing reservation alert to user"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->showReservationAlert()V

    goto :goto_2

    .line 1474
    .end local v2    # "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .end local v3    # "reservation_id":I
    .end local v5    # "showAlert":Z
    :cond_e
    const-string v7, "MtvUiSViewCover"

    const-string v8, "checkIsReservation() : MW not initilized yet!!! "

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1478
    :cond_f
    const-string v7, "MtvUiSViewCover"

    const-string v8, "checkIsReservation() : no current reservation"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private endFailReservationProgram(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "endBundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x1c9

    .line 1991
    const-string v2, "MtvUiSViewCover"

    const-string v3, "endReservationProgram"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    if-nez p1, :cond_1

    .line 1993
    const-string v2, "MtvUiSViewCover"

    const-string v3, "endReservationProgram -bundle null"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    :cond_0
    :goto_0
    return-void

    .line 1997
    :cond_1
    const-string v2, "reserve_type"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1998
    .local v1, "type":I
    const-string v2, "reserve_end_exit"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2000
    .local v0, "exit":Z
    if-nez v1, :cond_2

    .line 2002
    if-eqz v0, :cond_0

    .line 2004
    const-string v2, "MtvUiSViewCover"

    const-string v3, "endReservationProgram Exiting App after Stopping Record .... "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2006
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2011
    :cond_2
    if-eqz v0, :cond_0

    .line 2013
    const-string v2, "MtvUiSViewCover"

    const-string v3, "endReservationProgram Exiting App.... "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2015
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private endReservationProgram(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "end"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x1c9

    .line 1696
    const-string v2, "MtvUiSViewCover"

    const-string v3, "endReservationProgram"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    if-nez p1, :cond_1

    .line 1698
    const-string v2, "MtvUiSViewCover"

    const-string v3, "endReservationProgram -bundle null"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    :cond_0
    :goto_0
    return-void

    .line 1702
    :cond_1
    const-string v2, "reserve_type"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1703
    .local v1, "type":I
    const-string v2, "reserve_end_exit"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1705
    .local v0, "exit":Z
    if-nez v1, :cond_2

    .line 1706
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->stopRecording()V

    .line 1709
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByFromMiniMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1712
    const-string v2, "MtvUiSViewCover"

    const-string v3, "endReservationProgram Exiting App after Stopping Record .... "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1721
    :cond_2
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByFromMiniMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1723
    const-string v2, "MtvUiSViewCover"

    const-string v3, "endReservationProgram Exiting App.... "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private endReservationProgramAndShowAlert()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 1619
    const-string v5, "MtvUiSViewCover"

    const-string v6, "endReservationProgramAndShowAlert"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v5, :cond_0

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 1621
    :cond_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v5

    invoke-static {p0, v5}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v3

    .line 1622
    .local v3, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    const/4 v1, 0x0

    .line 1623
    .local v1, "isExit":Z
    const/4 v2, 0x0

    .line 1625
    .local v2, "message":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1626
    const-string v5, "MtvUiSViewCover"

    const-string v6, "endReservationProgramAndShowAlert() : invalid reservation"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    :cond_1
    :goto_0
    return-void

    .line 1630
    :cond_2
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReserveAlertFrom()I

    move-result v5

    if-nez v5, :cond_5

    .line 1631
    const-string v5, "MtvUiSViewCover"

    const-string v6, "endReservationProgramAndShowAlert() : OUT_OF_APP"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    const/4 v1, 0x1

    .line 1633
    iget-wide v6, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-static {p0, v6, v7}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->isImmediateReservation(Landroid/content/Context;J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1634
    const-string v5, "MtvUiSViewCover"

    const-string v6, "endReservationProgramAndShowAlert() : OUT_OF_APP BUT CONTINEOUS"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    const/4 v1, 0x0

    .line 1642
    :cond_3
    :goto_1
    iget v5, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v5, :cond_7

    .line 1644
    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByFromMiniMode()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1645
    const v5, 0x7f070319

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1656
    :goto_2
    iget v4, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    .line 1658
    .local v4, "type":I
    iget-wide v6, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-static {p0, v6, v7}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->isImmediateReservation(Landroid/content/Context;J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1662
    iget v5, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_9

    .line 1663
    iget v5, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-ne v5, v8, :cond_4

    .line 1664
    invoke-direct {p0, v8}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->checkIsReservationAndEnd(I)V

    .line 1675
    :cond_4
    :goto_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1676
    .local v0, "endBundle":Landroid/os/Bundle;
    const-string v5, "dialogType"

    const/4 v6, 0x7

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1677
    const-string v5, "reserve_end_exit"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1678
    const-string v5, "dialog_msg"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    const-string v5, "reserve_type"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1684
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mReservationEndDialog:Landroid/app/DialogFragment;

    .line 1685
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mReservationEndDialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "reserve_end_dialog"

    invoke-virtual {v5, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1686
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    sget-object v6, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->RunnableReservationEndPopupExpire:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1639
    .end local v0    # "endBundle":Landroid/os/Bundle;
    .end local v4    # "type":I
    :cond_5
    const-string v5, "MtvUiSViewCover"

    const-string v6, "endReservationProgramAndShowAlert() : not OUT_OF_APP"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    const/4 v1, 0x0

    goto :goto_1

    .line 1647
    :cond_6
    const v5, 0x7f07031a

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1651
    :cond_7
    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByFromMiniMode()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1652
    const v5, 0x7f070318

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1654
    :cond_8
    const v5, 0x7f070317

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1665
    .restart local v4    # "type":I
    :cond_9
    iget v5, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v5, :cond_4

    .line 1666
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->checkIsReservationAndEnd(I)V

    goto :goto_3
.end method

.method private getCurrentProgramName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1277
    const-string v2, ""

    .line 1278
    .local v2, "programName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1279
    .local v1, "programInfo":[Landroid/broadcast/helper/types/MtvOneSegProgram;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v1

    .line 1281
    if-eqz v1, :cond_1

    .line 1282
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getCurrentProgramDetails([Landroid/broadcast/helper/types/MtvOneSegProgram;)Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v0

    .line 1283
    .local v0, "currentProgram":Landroid/broadcast/helper/types/MtvOneSegProgram;
    if-eqz v0, :cond_0

    .line 1284
    invoke-virtual {v0}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getProgName()Ljava/lang/String;

    move-result-object v2

    .line 1288
    .end local v0    # "currentProgram":Landroid/broadcast/helper/types/MtvOneSegProgram;
    :cond_0
    :goto_0
    return-object v2

    .line 1286
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method private getNextPreviousChannelNumber(Z)I
    .locals 9
    .param p1, "isNext"    # Z

    .prologue
    const/16 v8, 0x34

    const/16 v7, 0xd

    const/4 v6, 0x1

    .line 1164
    const/4 v1, -0x1

    .line 1165
    .local v1, "newPhyChannelNumber":I
    const/4 v2, -0x1

    .line 1166
    .local v2, "newVirtualChannelNum":I
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v4

    .line 1167
    .local v4, "oldVirtualChannelNum":I
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v3

    .line 1170
    .local v3, "oldPhyChannelNum":I
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getCount(Landroid/content/Context;)I

    move-result v5

    if-ge v5, v6, :cond_5

    .line 1171
    const/4 v2, -0x1

    .line 1172
    if-lt v3, v7, :cond_0

    if-le v3, v8, :cond_1

    .line 1176
    :cond_0
    const/16 v1, 0xd

    .line 1208
    :goto_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 1209
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 1210
    return v1

    .line 1177
    :cond_1
    if-ne v3, v7, :cond_2

    if-nez p1, :cond_2

    .line 1178
    const/16 v1, 0x34

    goto :goto_0

    .line 1179
    :cond_2
    if-ne v3, v8, :cond_3

    if-eqz p1, :cond_3

    .line 1180
    const/16 v1, 0xd

    goto :goto_0

    .line 1182
    :cond_3
    if-eqz p1, :cond_4

    .line 1183
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 1185
    :cond_4
    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    .line 1187
    :cond_5
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getCount(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 1188
    const-string v5, "MtvUiSViewCover"

    const-string v6, "getNextPreviousChannelNumber : only one channel on Air ,better to handle this before you reach here."

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const/16 v1, 0xd

    .line 1190
    const/4 v2, -0x1

    goto :goto_0

    .line 1192
    :cond_6
    if-lez v4, :cond_8

    .line 1193
    if-eqz p1, :cond_7

    .line 1194
    invoke-static {p0, v4}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getNext(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 1200
    .local v0, "newMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :goto_1
    if-eqz v0, :cond_9

    .line 1201
    iget v1, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    .line 1202
    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    goto :goto_0

    .line 1196
    .end local v0    # "newMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :cond_7
    invoke-static {p0, v4}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getPrevious(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .restart local v0    # "newMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    goto :goto_1

    .line 1198
    .end local v0    # "newMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :cond_8
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getFirstOnAir(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .restart local v0    # "newMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    goto :goto_1

    .line 1204
    :cond_9
    const/16 v1, 0xd

    .line 1205
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private initMtvPlayer()V
    .locals 13

    .prologue
    const v12, 0x7f07021d

    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/16 v8, 0x12d

    .line 186
    const-string v5, "MtvUiSViewCover"

    const-string v6, "initMtvPlayer..."

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 188
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 189
    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 190
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setSViewRunning(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 193
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v5, v6, :cond_4

    .line 194
    iput-boolean v9, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isLocalPlayback:Z

    .line 195
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 196
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 197
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    .line 198
    .local v2, "pbState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const-string v5, "MtvUiSViewCover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pbState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v2, v5, :cond_0

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v5, :cond_3

    .line 200
    :cond_0
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->dummySurface:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    .end local v2    # "pbState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    :cond_2
    :goto_1
    invoke-virtual {p0, v9}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->registerVideoSurfaceView(Z)V

    .line 289
    invoke-direct {p0, v9}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->suppressCoverUI(Z)V

    .line 290
    const/4 v5, 0x3

    invoke-virtual {p0, v5, v9}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->requestSystemKeyEvent(IZ)Z

    .line 291
    :goto_2
    return-void

    .line 201
    .restart local v2    # "pbState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    :cond_3
    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v5, :cond_1

    .line 202
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const v7, 0x7f070268

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 207
    .end local v2    # "pbState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v4

    .line 208
    .local v4, "validAreaCount":I
    if-lez v4, :cond_a

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v5, :cond_a

    .line 209
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v5, v6, :cond_8

    .line 210
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v5, :cond_b

    .line 227
    if-lez v4, :cond_6

    .line 229
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v12}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    :cond_6
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 233
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v5, :cond_7

    .line 234
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 235
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 237
    :cond_7
    const/4 v0, 0x0

    .line 239
    .local v0, "bCreateStatus":Z
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 240
    invoke-static {p0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->enableBMLComponent(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 241
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    .line 244
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v5, v6, v7, v10}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;I)Z

    move-result v0

    .line 249
    if-nez v0, :cond_2

    .line 250
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->screwupCleanup()V

    .line 251
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 252
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v5, v6, v7, v10}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;I)Z

    goto/16 :goto_1

    .line 211
    .end local v0    # "bCreateStatus":Z
    :cond_8
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v5, v6, :cond_9

    .line 212
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const v7, 0x7f070268

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 215
    :cond_9
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v12}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 218
    :cond_a
    if-nez v4, :cond_5

    .line 219
    const-string v5, "MtvUiSViewCover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate area not set exiting... validAreaCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->finish()V

    goto/16 :goto_2

    .line 260
    :cond_b
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 261
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 262
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LIVETV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-eq v5, v6, :cond_c

    .line 263
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 265
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v5, :cond_2

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v3

    .line 268
    .local v3, "phyChannelNum":I
    new-instance v1, Landroid/broadcast/helper/MtvURI;

    .end local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    const/4 v5, 0x2

    invoke-direct {v1, v5, v3}, Landroid/broadcast/helper/MtvURI;-><init>(II)V

    .line 270
    .restart local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v5, v6, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    goto/16 :goto_1

    .line 274
    .end local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    .end local v3    # "phyChannelNum":I
    :cond_c
    const-string v5, "MtvUiSViewCover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "already in live mode . state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_e

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v5

    const/16 v6, 0x5000

    if-eq v5, v6, :cond_d

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v5

    const/16 v6, 0x5007

    if-ne v5, v6, :cond_e

    .line 278
    :cond_d
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->dummySurface:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    :cond_e
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v5, v6, :cond_2

    .line 280
    const-string v5, "MtvUiSViewCover"

    const-string v6, "Background Recording is going on..."

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->finish()V

    goto/16 :goto_2
.end method

.method private initViewControl()V
    .locals 4

    .prologue
    .line 572
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->setContentView(I)V

    .line 573
    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->coverSurfaceView:Landroid/view/SurfaceView;

    .line 574
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->coverSurfaceView:Landroid/view/SurfaceView;

    new-instance v1, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$sViewCoverSurfaceOnTouchListener;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$sViewCoverSurfaceOnTouchListener;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 575
    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->dummySurface:Landroid/widget/ImageView;

    .line 576
    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mProgramNameTextView:Landroid/widget/TextView;

    .line 577
    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mPgmVlmlayout:Landroid/widget/LinearLayout;

    .line 578
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    .line 580
    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mVolumeButton:Landroid/widget/ImageButton;

    .line 582
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mVolumeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->volumeLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 583
    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mChannelNameButton:Landroid/widget/Button;

    .line 584
    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mPlayPauseButton:Landroid/widget/ImageButton;

    .line 586
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mAnimationlayout:Landroid/widget/RelativeLayout;

    .line 587
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mAnimationImage:Landroid/widget/ImageView;

    .line 588
    const/high16 v0, 0x7f040000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->rotatingAnimation:Landroid/view/animation/Animation;

    .line 589
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mTxtAnimation:Landroid/widget/TextView;

    .line 590
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGestureDetector:Landroid/view/GestureDetector;

    .line 591
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->setWindowParameters()V

    .line 592
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0a0031

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;-><init>(Landroid/app/FragmentManager;II)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 593
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    .line 594
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->setEnabled(Z)V

    .line 595
    return-void
.end method

.method private isPaused()Z
    .locals 2

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveTVFileThumbnail()V
    .locals 5

    .prologue
    .line 1350
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1351
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getCaptFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1352
    .local v0, "bmpImage":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getCaptFrameName()Ljava/lang/String;

    move-result-object v2

    .line 1354
    .local v2, "thumbnailName":Ljava/lang/String;
    const-string v3, "MtvUiSViewCover"

    const-string v4, "saveTVFileThumbnail"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 1356
    new-instance v1, Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-direct {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;-><init>()V

    .line 1358
    .local v1, "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/sec/mtv/provider/MtvFile;->setFileFormat(I)V

    .line 1359
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Lcom/samsung/sec/mtv/provider/MtvFile;->setCreationTime(Ljava/util/Date;)V

    .line 1360
    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->setFilePath(Ljava/lang/String;)V

    .line 1361
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v3

    invoke-static {v3, v0, v1}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->saveFile(ILandroid/graphics/Bitmap;Lcom/samsung/sec/mtv/provider/MtvFile;)V

    .line 1363
    .end local v1    # "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_1
    return-void
.end method

.method private setLatestChannelsByPChannel(I)V
    .locals 3
    .param p1, "pch"    # I

    .prologue
    .line 1790
    const/4 v1, -0x1

    .line 1791
    .local v1, "vch":I
    invoke-static {p0, p1}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByPChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 1792
    .local v0, "ch":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v0, :cond_0

    .line 1793
    iget v1, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    .line 1794
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2, p1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 1795
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 1796
    return-void
.end method

.method private setVolumeTextandButton()V
    .locals 4

    .prologue
    .line 609
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getVolumeLevel()I

    move-result v0

    .line 610
    .local v0, "volumeLevel":I
    if-nez v0, :cond_0

    .line 611
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 623
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setWindowParameters()V
    .locals 6

    .prologue
    .line 691
    const-string v3, "MtvUiSViewCover"

    const-string v4, "setWindowParameters"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 693
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x30

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 695
    const/high16 v3, 0x43640000    # 228.0f

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v3

    float-to-int v1, v3

    .line 696
    .local v1, "surfaceHeight":I
    const/high16 v3, 0x439f0000    # 318.0f

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v3

    float-to-int v2, v3

    .line 697
    .local v2, "surfaceWidth":I
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 698
    const-string v3, "MtvUiSViewCover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lp.width, lp.height :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->lp:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->lp:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 700
    .local v0, "lp1":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->coverSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    return-void
.end method

.method private showErrorDialog(I)V
    .locals 3
    .param p1, "stringId"    # I

    .prologue
    .line 2065
    invoke-static {p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;->newInstance(I)Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ErrorDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2066
    return-void
.end method

.method private showProgramName()V
    .locals 5

    .prologue
    const/16 v4, 0x1c5

    .line 863
    const-string v0, "MtvUiSViewCover"

    const-string v1, "showProgramName"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mProgramNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getCurrentProgramName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mPgmVlmlayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 866
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 867
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 868
    return-void
.end method

.method private showReservationAlert()V
    .locals 5

    .prologue
    .line 1769
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isResumed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1771
    const-string v2, "MtvUiSViewCover"

    const-string v3, "Live Player not resumed continuing with recording without showing popup..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1774
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1776
    .local v1, "launchBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1777
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1778
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.sec.mtv"

    const-string v4, "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1779
    const-string v2, "dbId"

    const-string v3, "dbId"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1780
    const-string v2, "popup_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1781
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1782
    const-string v2, "MtvUiSViewCover"

    const-string v3, "Mobile Tv - Reminder -user Alert"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 4
    .param p1, "stringId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1319
    const-string v0, "MtvUiSViewCover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showToast, String = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->generalToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1321
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->generalToast:Landroid/widget/Toast;

    .line 1322
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->generalToast:Landroid/widget/Toast;

    const/16 v1, 0x30

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 1326
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->generalToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1327
    return-void

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->generalToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private startRecording(Lcom/samsung/sec/mtv/provider/MtvReservation;)I
    .locals 24
    .param p1, "reservation"    # Lcom/samsung/sec/mtv/provider/MtvReservation;

    .prologue
    .line 1803
    const-wide/16 v12, 0x0

    .line 1804
    .local v12, "availMemSize":J
    const/16 v19, 0x0

    .line 1805
    .local v19, "recURI":Ljava/lang/String;
    const/4 v5, -0x1

    .local v5, "recType":I
    const/4 v7, -0x1

    .line 1806
    .local v7, "storeType":I
    const/4 v8, 0x0

    .local v8, "chnlName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1807
    .local v9, "progName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1808
    .local v15, "channelInfo":Landroid/broadcast/helper/types/MtvOneSegChannel;
    const/16 v18, 0x0

    .line 1809
    .local v18, "programInfo":[Landroid/broadcast/helper/types/MtvOneSegProgram;
    const/16 v16, 0x0

    .line 1810
    .local v16, "currentProgram":Landroid/broadcast/helper/types/MtvOneSegProgram;
    const/4 v10, 0x0

    .local v10, "mRecordDate":Ljava/util/Date;
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    .line 1811
    .local v17, "currentTime":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 1823
    .local v14, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v11

    if-ne v4, v11, :cond_0

    .line 1824
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableInternalMemorySize()J

    move-result-wide v12

    .line 1828
    :goto_0
    const-string v4, "MtvUiSViewCover"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "availMemSize :"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const-wide/32 v20, 0x204000

    cmp-long v4, v12, v20

    if-gez v4, :cond_1

    .line 1831
    const-string v4, "MtvUiSViewCover"

    const-string v11, "memory already full.. cannot start recording..."

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    const v4, 0x7f070307

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->showErrorDialog(I)V

    .line 1833
    const/4 v4, 0x1

    .line 1888
    :goto_1
    return v4

    .line 1826
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v12

    goto :goto_0

    .line 1836
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastSetRecordingMode()I

    move-result v4

    if-nez v4, :cond_6

    const/4 v5, 0x2

    .line 1838
    :goto_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v11

    if-ne v4, v11, :cond_7

    .line 1839
    const-string v6, "/sdcard/video/MyTvFiles/"

    .line 1840
    .local v6, "memLoc":Ljava/lang/String;
    const/4 v7, 0x1

    .line 1847
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getChannel()Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 1848
    invoke-virtual {v15}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v8

    .line 1853
    :cond_2
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v4

    const/4 v11, -0x1

    if-ne v4, v11, :cond_8

    .line 1854
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 1855
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getCurrentProgramDetails([Landroid/broadcast/helper/types/MtvOneSegProgram;)Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v16

    .line 1856
    if-eqz v16, :cond_4

    .line 1857
    invoke-virtual/range {v16 .. v16}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getProgName()Ljava/lang/String;

    move-result-object v9

    .line 1875
    :cond_4
    :goto_4
    if-nez v8, :cond_5

    const-string v8, "dummy"

    .line 1876
    :cond_5
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

    .line 1877
    .restart local v10    # "mRecordDate":Ljava/util/Date;
    new-instance v4, Landroid/broadcast/helper/types/MtvOneSegPlayer;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v11

    invoke-direct/range {v4 .. v11}, Landroid/broadcast/helper/types/MtvOneSegPlayer;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;I)V

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegPlayer;->getRecordURI()Ljava/lang/String;

    move-result-object v19

    .line 1880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    long-to-int v0, v12

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v4, v11, v0, v1, v2}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->startRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Ljava/lang/String;IZ)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1881
    const-string v4, "MtvUiSViewCover"

    const-string v11, "startRecording() failed"

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    const v4, 0x7f0702b0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->showToast(I)V

    .line 1885
    const/4 v4, -0x1

    goto/16 :goto_1

    .line 1836
    .end local v6    # "memLoc":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 1843
    :cond_7
    const-string v6, "/mnt/extSdCard/video/MyTvFiles/"

    .line 1844
    .restart local v6    # "memLoc":Ljava/lang/String;
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1861
    :cond_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    if-eqz v4, :cond_9

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1862
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    goto :goto_4

    .line 1864
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 1865
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getCurrentProgramDetails([Landroid/broadcast/helper/types/MtvOneSegProgram;)Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v16

    .line 1866
    if-eqz v16, :cond_4

    .line 1867
    invoke-virtual/range {v16 .. v16}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getProgName()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    .line 1887
    :cond_a
    const-string v4, "MtvUiSViewCover"

    const-string v11, "startRecording() start"

    invoke-static {v4, v11}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method private startReservationProgram(Lcom/samsung/sec/mtv/provider/MtvReservation;)V
    .locals 10
    .param p1, "reservation"    # Lcom/samsung/sec/mtv/provider/MtvReservation;

    .prologue
    const/16 v9, 0x5007

    const/4 v8, 0x6

    const/16 v7, 0x1ca

    const/4 v6, 0x1

    .line 1488
    const-string v3, "MtvUiSViewCover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " startReservationProgram() : !!! Starting from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReserveAlertFrom()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Reservation ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v3, v4, :cond_2

    .line 1490
    :cond_0
    const-string v3, "MtvUiSViewCover"

    const-string v4, " startReservationProgram() : error - MW not initilized yet!!! "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    :cond_1
    :goto_0
    return-void

    .line 1491
    :cond_2
    if-eqz p1, :cond_3

    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-eqz v3, :cond_4

    .line 1492
    :cond_3
    const-string v3, "MtvUiSViewCover"

    const-string v4, " startReservationProgram() : error - not a valid reservation"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1497
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "signal_alert_retry_exit"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1498
    const-string v3, "MtvUiSViewCover"

    const-string v4, " startReservationProgram() : Low Signal POp-up Showing"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "signal_alert_terminate"

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1501
    const-string v3, "MtvUiSViewCover"

    const-string v4, "startReservationProgram :mNoSignalTerminate popup closed"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "exit_confirmation"

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1505
    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v3, :cond_11

    .line 1506
    const-string v3, "MtvUiSViewCover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " startReservationProgram() : !!!TYPE_REC    :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v3

    if-eq v3, v9, :cond_10

    .line 1508
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v0

    .line 1509
    .local v0, "currentPCh":I
    if-lez v0, :cond_7

    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    if-eq v0, v3, :cond_7

    .line 1511
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "signal_alert_retry_exit"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1512
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "signal_alert_retry_exit"

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1513
    const-string v3, "MtvUiSViewCover"

    const-string v4, "startReservationProgram :(RR):NoSignal popup closed for Channel Change"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    :cond_6
    const-string v3, "MtvUiSViewCover"

    const-string v4, " startReservationProgram() :(RR):not playing the Reservation Channel  : Issue OPEN for REservation Channel"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget v5, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1517
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto/16 :goto_0

    .line 1519
    :cond_7
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v3, v4, :cond_9

    .line 1520
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "signal_alert_retry_exit"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1521
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "signal_alert_retry_exit"

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1522
    const-string v3, "MtvUiSViewCover"

    const-string v4, "startReservationProgram :(RR):NoSignal popup closed : State !PLAYING  : Issue OPEN"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget v5, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1525
    :cond_8
    const-string v3, "MtvUiSViewCover"

    const-string v4, "startReservationProgram :(RR):State !PLAYING "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto/16 :goto_0

    .line 1528
    :cond_9
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v3, v4, :cond_1

    .line 1530
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "signal_alert_retry_exit"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1531
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "signal_alert_retry_exit"

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1532
    const-string v3, "MtvUiSViewCover"

    const-string v4, "startReservationProgram :(RR): State PLAYING : NoSignal popup closed : Issue OPEN"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget v5, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1534
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto/16 :goto_0

    .line 1537
    :cond_a
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getCurrentOpenedChannel()I

    move-result v3

    iget v4, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    if-eq v3, v4, :cond_b

    .line 1539
    const-string v3, "MtvUiSViewCover"

    const-string v4, "startReservationProgram : Not Playing Reservation Channel ! Change to Reservation Channel "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget v5, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1541
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto/16 :goto_0

    .line 1546
    :cond_b
    const-string v3, "MtvUiSViewCover"

    const-string v4, "startReservationProgram : Playing Reservation Channel ! start Recording !"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    const-string v3, "MtvUiSViewCover"

    const-string v4, " startReservationProgram() : (RR) : recording : - already playing"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->startRecording(Lcom/samsung/sec/mtv/provider/MtvReservation;)I

    move-result v2

    .line 1553
    .local v2, "retVal":I
    if-nez v2, :cond_c

    .line 1556
    const v3, 0x7f070295

    const v4, 0x7f0702a6

    invoke-static {p0, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->showProgressDialog(Landroid/content/Context;II)V

    .line 1558
    :cond_c
    if-ne v2, v6, :cond_d

    .line 1560
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    .line 1561
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->CheckIsreservationAndUpdatefailureReason(I)V

    goto/16 :goto_0

    .line 1562
    :cond_d
    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    .line 1564
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    .line 1565
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->CheckIsreservationAndUpdatefailureReason(I)V

    goto/16 :goto_0

    .line 1568
    :cond_e
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReserveAlertFrom()I

    move-result v3

    if-nez v3, :cond_f

    .line 1569
    const-string v3, "MtvUiSViewCover"

    const-string v4, " startReservationProgram() : (RR) : recording : - already playing SRIKANTH WAKELOCK"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mVideoSurfaceView:Landroid/view/SurfaceView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 1572
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1573
    .local v1, "pm":Landroid/os/PowerManager;
    const v3, 0x10000001

    const-string v4, "MobileTV"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1576
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1579
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_f
    invoke-static {p0, p1, v8}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 1581
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->RunnableresetComingReservationID:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1585
    .end local v0    # "currentPCh":I
    .end local v2    # "retVal":I
    :cond_10
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v3, v4, :cond_1

    .line 1586
    const-string v3, "MtvUiSViewCover"

    const-string v4, " startReservationProgram() : : recording : - already recording"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->stopRecording()V

    .line 1588
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto/16 :goto_0

    .line 1591
    :cond_11
    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-ne v3, v6, :cond_1

    .line 1592
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v3

    if-eq v3, v9, :cond_14

    .line 1593
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v0

    .line 1594
    .restart local v0    # "currentPCh":I
    if-lez v0, :cond_13

    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    if-ne v0, v3, :cond_12

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v3, v4, :cond_13

    .line 1596
    :cond_12
    const-string v3, "MtvUiSViewCover"

    const-string v4, " startReservationProgram() : watch : - not playing same channel"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget v5, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1599
    :cond_13
    invoke-static {p0, p1, v8}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    goto/16 :goto_0

    .line 1602
    .end local v0    # "currentPCh":I
    :cond_14
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v3, v4, :cond_1

    .line 1603
    const-string v3, "MtvUiSViewCover"

    const-string v4, " startReservationProgram() :: watch : - recording going on"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->stopRecording()V

    .line 1605
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto/16 :goto_0
.end method

.method private stopRecording()V
    .locals 3

    .prologue
    .line 1366
    const-string v1, "MtvUiSViewCover"

    const-string v2, "stopRecording in SViewCover"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const/4 v0, 0x0

    .line 1368
    .local v0, "isStopRecSuccess":Z
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1369
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-nez v1, :cond_0

    .line 1370
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 1371
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v1, v2}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->stopRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    move-result v0

    .line 1372
    if-eqz v0, :cond_1

    .line 1374
    const-string v1, "MtvUiSViewCover"

    const-string v2, "Recording stop invoked successfully !"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isStopRecCommandInProcess:Z

    .line 1378
    :cond_1
    return-void
.end method

.method private suppressCoverUI(Z)V
    .locals 4
    .param p1, "mSuppress"    # Z

    .prologue
    .line 882
    const-string v1, "MtvUiSViewCover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending broadcast s cover state change, mSuppress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 884
    .local v0, "mCChangeCoverStateIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 886
    const-string v1, "sender"

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->sendBroadcast(Landroid/content/Intent;)V

    .line 888
    return-void
.end method

.method private updateMainControlBar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 830
    const-string v2, "MtvUiSViewCover"

    const-string v3, "updateMainControlBar"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isLocalPlayback:Z

    if-eqz v2, :cond_0

    .line 832
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->updatePlayBackButton()V

    .line 833
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mChannelNameButton:Landroid/widget/Button;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 834
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 835
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mPlayPauseButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$9;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$9;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    :goto_0
    return-void

    .line 841
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    const/16 v3, 0x5007

    if-ne v2, v3, :cond_1

    .line 842
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mChannelNameButton:Landroid/widget/Button;

    const v3, 0x7f0702ed

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 843
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mChannelNameButton:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$10;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$10;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 851
    :cond_1
    const-string v1, ""

    .line 852
    .local v1, "mChannelName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestChannelNumberForDisplay()I

    move-result v0

    .line 853
    .local v0, "displayChNum":I
    if-gez v0, :cond_2

    .line 854
    const-string v1, ""

    .line 857
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestChannelNameForDisplay(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 858
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mChannelNameButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 856
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private updatePlayBackButton()V
    .locals 2

    .prologue
    .line 1337
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mPlayPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1341
    :goto_0
    return-void

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mPlayPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020097

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public closeOneseg(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 667
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 668
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->loseFocus()V

    .line 669
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$5;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$5;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 676
    return-void
.end method

.method public getChannel()Landroid/broadcast/helper/types/MtvOneSegChannel;
    .locals 2

    .prologue
    .line 2068
    const/4 v0, 0x0

    .line 2069
    .local v0, "channels":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_0

    .line 2070
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v0

    .line 2071
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 2073
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentProgramDetails([Landroid/broadcast/helper/types/MtvOneSegProgram;)Landroid/broadcast/helper/types/MtvOneSegProgram;
    .locals 10
    .param p1, "programInfo"    # [Landroid/broadcast/helper/types/MtvOneSegProgram;

    .prologue
    .line 1292
    const/4 v1, 0x0

    .line 1293
    .local v1, "currentProg":Landroid/broadcast/helper/types/MtvOneSegProgram;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getStreamTime()J

    move-result-wide v2

    .line 1295
    .local v2, "currentTime":J
    move-object v0, p1

    .local v0, "arr$":[Landroid/broadcast/helper/types/MtvOneSegProgram;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 1296
    .local v6, "prog":Landroid/broadcast/helper/types/MtvOneSegProgram;
    if-eqz v6, :cond_1

    .line 1297
    invoke-virtual {v6}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getStartTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-lez v7, :cond_1

    invoke-virtual {v6}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-gez v7, :cond_1

    .line 1298
    move-object v1, v6

    .line 1302
    .end local v6    # "prog":Landroid/broadcast/helper/types/MtvOneSegProgram;
    :cond_0
    return-object v1

    .line 1295
    .restart local v6    # "prog":Landroid/broadcast/helper/types/MtvOneSegProgram;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v0

    .line 1315
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStreamTime()J
    .locals 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getTot()J

    move-result-wide v0

    .line 1309
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 804
    const-string v0, "MtvUiSViewCover"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const-string v1, "MtvUiSViewCover"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "directLaunch"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isDirectLaunch:Z

    .line 151
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isStartedFromMiniMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isStartedFromMiniMode:Z

    .line 152
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "selectedFileIndex"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->selectedFileIndex:I

    .line 153
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAllowedBy3LMPolicy()Z

    move-result v0

    .line 154
    .local v0, "mIsAllowed3LMPolicy":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->is3LMEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "MtvUiSViewCover"

    const-string v2, "DTV disabled by 3LM"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->finish()V

    .line 169
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->initViewControl()V

    .line 161
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->initMtvPlayer()V

    .line 162
    sget-boolean v1, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 821
    const-string v0, "MtvUiSViewCover"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setSViewRunning(Z)V

    .line 823
    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->suppressCoverUI(Z)V

    .line 824
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->requestSystemKeyEvent(IZ)Z

    .line 825
    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 826
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onDestroy()V

    .line 827
    return-void
.end method

.method public onFragEvent(ILjava/lang/Object;)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1233
    const-string v2, "MtvUiSViewCover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFragEvent event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1267
    .end local p2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1236
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1238
    :sswitch_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto :goto_0

    .line 1242
    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->setVolumeTextandButton()V

    goto :goto_0

    .line 1246
    :sswitch_2
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto :goto_0

    .line 1249
    :sswitch_3
    const-string v2, "MtvUiSViewCover"

    const-string v3, "onFragEvent MTV_UPDATE_FRAG_CMD_DIALOGS_SIGNAL_ALERT_RETRY_OK"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1252
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v1

    .line 1253
    .local v1, "phyChannelNum":I
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v2, :cond_0

    .line 1254
    new-instance v0, Landroid/broadcast/helper/MtvURI;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/broadcast/helper/MtvURI;-><init>(II)V

    .line 1255
    .local v0, "mNewURI":Landroid/broadcast/helper/MtvURI;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    goto :goto_0

    .line 1260
    .end local v0    # "mNewURI":Landroid/broadcast/helper/MtvURI;
    .end local v1    # "phyChannelNum":I
    :sswitch_4
    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->endReservationProgram(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1236
    :sswitch_data_0
    .sparse-switch
        0xd9 -> :sswitch_0
        0xda -> :sswitch_1
        0xdb -> :sswitch_2
        0xfe -> :sswitch_4
        0x102 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 726
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v0, :cond_0

    move v0, v6

    .line 743
    :goto_0
    return v0

    .line 729
    :cond_0
    const-string v0, "MtvUiSViewCover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown keyCode: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-nez v0, :cond_1

    move v0, v6

    .line 732
    goto :goto_0

    .line 733
    :cond_1
    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-ne p1, v0, :cond_4

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 735
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v6, [I

    const v7, 0x7f0a0042

    aput v7, v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 737
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 738
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v0, v6

    .line 739
    goto :goto_0

    .line 742
    :cond_4
    const-string v0, "MtvUiSViewCover"

    const-string v1, "Super called for key"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v4, 0xa

    const/4 v0, 0x1

    .line 771
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v1, :cond_0

    .line 779
    :goto_0
    return v0

    .line 772
    :cond_0
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 773
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->runnableVolumeEscalating:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 775
    :cond_1
    const/16 v1, 0x19

    if-ne p1, v1, :cond_2

    .line 776
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->runnableVolumeDecreasing:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 779
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x18

    const/4 v1, 0x1

    .line 747
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-nez v2, :cond_1

    .line 767
    :cond_0
    :goto_0
    return v1

    .line 752
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_3

    move v0, v1

    .line 753
    .local v0, "bIsDisplayable":Z
    :goto_1
    const-string v2, "MtvUiSViewCover"

    const-string v3, "onKeyUp"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    if-eq p1, v4, :cond_2

    const/16 v2, 0x19

    if-ne p1, v2, :cond_5

    .line 755
    :cond_2
    if-eqz v0, :cond_0

    .line 756
    if-ne p1, v4, :cond_4

    .line 757
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->runnableVolumeEscalating:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 758
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v3, 0x6a

    sget-object v4, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3, v5, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_0

    .line 752
    .end local v0    # "bIsDisplayable":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 760
    .restart local v0    # "bIsDisplayable":Z
    :cond_4
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->runnableVolumeDecreasing:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 761
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v3, 0x6b

    sget-object v4, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3, v5, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_0

    .line 766
    :cond_5
    const-string v1, "MtvUiSViewCover"

    const-string v2, "Super called for key"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/high16 v7, 0x4000000

    const/16 v6, 0x7d0

    .line 892
    const-string v3, "MtvUiSViewCover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMtvAppAndroidServiceNotify() :: what - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 952
    :goto_0
    return-void

    .line 895
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 949
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V

    goto :goto_0

    .line 897
    :pswitch_1
    iget-boolean v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isDirectLaunch:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isLocalPlayback:Z

    if-nez v3, :cond_2

    .line 898
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 899
    .local v1, "liveIntent":Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 900
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->startActivity(Landroid/content/Intent;)V

    .line 911
    .end local v1    # "liveIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->finish()V

    goto :goto_0

    .line 901
    :cond_2
    iget-boolean v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isStartedFromMiniMode:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isLocalPlayback:Z

    if-eqz v3, :cond_1

    .line 902
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 903
    .local v0, "fileIntent":Landroid/content/Intent;
    const-string v3, "isStartedFromMiniMode"

    iget-boolean v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isStartedFromMiniMode:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 904
    const/4 v2, 0x0

    .line 906
    .local v2, "mMtvFileList":[Lcom/samsung/sec/mtv/provider/MtvFile;
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getAvailableTVRecFilesEx(Z)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v2

    .line 907
    const-string v3, "MtvFile"

    iget v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->selectedFileIndex:I

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 908
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 909
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 914
    .end local v0    # "fileIntent":Landroid/content/Intent;
    .end local v2    # "mMtvFileList":[Lcom/samsung/sec/mtv/provider/MtvFile;
    :pswitch_2
    const v3, 0x7f0701e3

    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->showToast(I)V

    .line 915
    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->closeOneseg(I)V

    goto :goto_0

    .line 918
    :pswitch_3
    const v3, 0x7f07026b

    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->showToast(I)V

    .line 919
    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->closeOneseg(I)V

    goto :goto_0

    .line 922
    :pswitch_4
    const v3, 0x7f070299

    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->showToast(I)V

    .line 923
    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->closeOneseg(I)V

    goto :goto_0

    .line 926
    :pswitch_5
    const v3, 0x7f0701f0

    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->showToast(I)V

    .line 927
    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->closeOneseg(I)V

    goto :goto_0

    .line 930
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->finish()V

    goto :goto_0

    .line 933
    :pswitch_7
    const v3, 0x7f0702b8

    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->showToast(I)V

    .line 934
    iget-boolean v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isDirectLaunch:Z

    if-eqz v3, :cond_3

    .line 935
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 936
    .restart local v1    # "liveIntent":Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 937
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->startActivity(Landroid/content/Intent;)V

    .line 939
    .end local v1    # "liveIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->finish()V

    goto/16 :goto_0

    .line 942
    :pswitch_8
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->endReservationProgramAndShowAlert()V

    goto/16 :goto_0

    .line 945
    :pswitch_9
    sget-object v3, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->RunnableReservationEndPopupExpire:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 895
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onNewIntent(Landroid/content/Intent;)V

    .line 174
    const-string v0, "MtvUiSViewCover"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->setIntent(Landroid/content/Intent;)V

    .line 179
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 809
    const-string v0, "MtvUiSViewCover"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->coverSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 811
    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->suppressCoverUI(Z)V

    .line 812
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 816
    :cond_1
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onPause()V

    .line 817
    return-void
.end method

.method public onPlayerNotification(III)V
    .locals 10
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extra"    # I

    .prologue
    .line 298
    const-string v5, "MtvUiSViewCover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPlayerNotification ...:command : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-nez v5, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 306
    :cond_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v5, :cond_1

    .line 307
    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 310
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 562
    :cond_2
    :goto_0
    :pswitch_0
    :sswitch_0
    return-void

    .line 312
    :pswitch_1
    const/16 v5, 0x6005

    if-ne p2, v5, :cond_4

    .line 316
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 317
    const-string v5, "MtvUiSViewCover"

    const-string v6, "onPlayerNotification - CMD_CREATE - exiting"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_3
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioEnable(Z)I

    .line 325
    const/4 v1, 0x0

    .line 330
    .local v1, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    new-instance v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$1;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$1;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 337
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v3

    .line 338
    .local v3, "phyChannelNum":I
    new-instance v1, Landroid/broadcast/helper/MtvURI;

    .end local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    const/4 v5, 0x2

    invoke-direct {v1, v5, v3}, Landroid/broadcast/helper/MtvURI;-><init>(II)V

    .line 340
    .restart local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->RunnableCheckIsReservationAndStart:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 344
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v5, :cond_2

    .line 345
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v5, v6, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    goto :goto_0

    .line 347
    .end local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    .end local v3    # "phyChannelNum":I
    :cond_4
    const/16 v5, 0x6004

    if-ne p2, v5, :cond_2

    .line 348
    const-string v5, "MtvUiSViewCover"

    const-string v6, "onPlayerNotification - CMD_CREATE - exiting"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v5, v6}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->delete(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    goto :goto_0

    .line 354
    :pswitch_2
    const-string v5, "MtvUiSViewCover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPlayerNotification ...:CMD_OPEN: Status-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 359
    :pswitch_4
    const-string v5, "MtvUiSViewCover"

    const-string v6, "onPlayerNotification ...CMD_OPEN:STAT_STARTED"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/16 v7, 0x12d

    const v8, 0x7f07021d

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 365
    :pswitch_5
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v4, "stopIntent":Landroid/content/Intent;
    const-string v5, "COMMAND_KEY"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 370
    .end local v4    # "stopIntent":Landroid/content/Intent;
    :pswitch_6
    const-string v5, "MtvUiSViewCover"

    const-string v6, "onPlayerNotification ...CMD_OPEN:STAT_BUFFERING_BEGIN"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/16 v7, 0x12d

    const v8, 0x7f070268

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 376
    :pswitch_7
    const-string v5, "MtvUiSViewCover"

    const-string v6, "onPlayerNotification ...CMD_OPEN:STAT_BUFFERING_PROGRESS"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/16 v7, 0x12d

    const v8, 0x7f070268

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 386
    :pswitch_8
    const-string v5, "MtvUiSViewCover"

    const-string v6, "onPlayerNotification ...CMD_OPEN:STAT_BUFFERING_END"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    const/16 v6, 0x12d

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/16 v7, 0x12d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 391
    :pswitch_9
    const-string v5, "MtvUiSViewCover"

    const-string v6, "STATUS_FAIL_SIGNAL_ERROR"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const v5, 0x7f0702e4

    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->showToast(I)V

    .line 393
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->CheckIsReservationPartialOrNone(I)V

    .line 394
    const/16 v5, 0x7d0

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->closeOneseg(I)V

    goto/16 :goto_0

    .line 403
    :pswitch_a
    const-string v5, "MtvUiSViewCover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPlayerNotification ...:CMD_PLAY Status-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    packed-switch p2, :pswitch_data_2

    :pswitch_b
    goto/16 :goto_0

    .line 406
    :pswitch_c
    const-string v5, "MtvUiSViewCover"

    const-string v6, "onPlayerNotification ...CMD_PLAY:STAT_STARTED"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/16 v7, 0x12d

    const v8, 0x7f070268

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 413
    :pswitch_d
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v5, :cond_5

    .line 414
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 415
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->updateCurrentAudioEffectAndMode()Z

    .line 417
    :cond_5
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->RunnableCheckIsReservationAndStart:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 421
    :pswitch_e
    const-string v5, "MtvUiSViewCover"

    const-string v6, "onPlayerNotification ...CMD_PLAY:STAT_BUFFERING_BEGIN"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/16 v7, 0x12d

    const v8, 0x7f070268

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 426
    :pswitch_f
    const-string v5, "MtvUiSViewCover"

    const-string v6, "onPlayerNotification ...CMD_PLAY:STAT_BUFFERING_PROGRESS"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/16 v7, 0x12d

    const v8, 0x7f070268

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 431
    :pswitch_10
    const-string v5, "MtvUiSViewCover"

    const-string v6, "onPlayerNotification ...CMD_PLAY:STAT_BUFFERING_END"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    const/16 v6, 0x12d

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    sget-object v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/16 v7, 0x12d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 434
    new-instance v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$2;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$2;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 443
    :pswitch_11
    const-string v5, "MtvUiSViewCover"

    const-string v6, "STATUS_FAIL_SIGNAL_ERROR"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const v5, 0x7f0702e4

    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->showToast(I)V

    .line 445
    const/16 v5, 0x7d0

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->closeOneseg(I)V

    goto/16 :goto_0

    .line 448
    :pswitch_12
    const-string v5, "MtvUiSViewCover"

    const-string v6, "onPlayerNotification ...CMD_PLAY:STAT_UNKNOWN:: Something severely screwed -- Happy Debugging !!!"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v5

    if-nez v5, :cond_6

    .line 452
    const-string v5, "\n\n\n       [OneSeg]   F A T A L    E R R O R !\n\n\n OneSeg middleware crashed, cannot continue MTV \n\n  - Use *#9900# to take log after termination - "

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 455
    .local v2, "message":Landroid/widget/Toast;
    const/16 v5, 0x77

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 456
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 459
    .end local v2    # "message":Landroid/widget/Toast;
    :cond_6
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 463
    :pswitch_13
    const/4 v5, -0x1

    invoke-static {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 464
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->stopPlaybackTimer()V

    .line 465
    const v5, 0x7f070243

    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->showToast(I)V

    .line 466
    const/16 v5, 0x5dc

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->closeOneseg(I)V

    goto/16 :goto_0

    .line 474
    :pswitch_14
    const-string v5, "MtvUiSViewCover"

    const-string v6, "onPlayerNotification ...:CMD_DELETE"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/16 v5, 0x6005

    if-ne p2, v5, :cond_2

    .line 476
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAvStreaming(Z)V

    .line 480
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->resetAndFinish()V

    goto/16 :goto_0

    .line 485
    :pswitch_15
    new-instance v5, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$3;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$3;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 493
    :pswitch_16
    const-string v5, "MtvUiSViewCover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPlayerNotification ...:CMD_STATUS_UPDT Status-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    packed-switch p2, :pswitch_data_3

    goto/16 :goto_0

    .line 496
    :pswitch_17
    const-string v5, "MtvUiSViewCover"

    const-string v6, "STATUS_FAIL_SIGNAL_ERROR"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const v5, 0x7f0702e4

    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->showToast(I)V

    .line 498
    const/16 v5, 0x7d0

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->closeOneseg(I)V

    goto/16 :goto_0

    .line 506
    :pswitch_18
    const-string v5, "MtvUiSViewCover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPlayerNotification ...:CMD_RECORD Status-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    .line 529
    :sswitch_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isStopRecCommandInProcess:Z

    .line 530
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->stopRecordTimer()V

    .line 531
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->dismissProgressDialog()V

    .line 532
    const-string v5, "MtvUiSViewCover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got CMD_REC with STAT_FAILURE and extra = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/16 v0, 0x1c7

    .line 535
    .local v0, "errorInfo":I
    const/16 v5, 0x6013

    if-eq p3, v5, :cond_7

    const/16 v5, 0x6011

    if-ne p3, v5, :cond_9

    .line 537
    :cond_7
    const/16 v0, 0x1c8

    .line 538
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->bIsRecordingFailed:Z

    .line 546
    :goto_1
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/4 v7, -0x1

    invoke-virtual {v6, v0, p3, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 515
    .end local v0    # "errorInfo":I
    :sswitch_2
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordTimerStarted()Z

    move-result v5

    if-nez v5, :cond_8

    .line 517
    const-string v5, "MtvUiSViewCover"

    const-string v6, "Record Timer never started !"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->bIsRecordingFailed:Z

    .line 520
    :cond_8
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->stopRecordTimer()V

    .line 521
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isStopRecCommandInProcess:Z

    .line 523
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->saveTVFileThumbnail()V

    .line 524
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->checkIsReservationAndEnd(I)V

    .line 525
    iget-boolean v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->bIsRecordingFailed:Z

    if-nez v5, :cond_2

    .line 526
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/16 v7, 0x1c6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 544
    .restart local v0    # "errorInfo":I
    :cond_9
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->saveTVFileThumbnail()V

    goto :goto_1

    .line 550
    .end local v0    # "errorInfo":I
    :sswitch_3
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->dismissProgressDialog()V

    .line 551
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->startRecordTimer()V

    goto/16 :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x5001
        :pswitch_1
        :pswitch_2
        :pswitch_16
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_15
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
    .end packed-switch

    .line 356
    :pswitch_data_1
    .packed-switch 0x6001
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 404
    :pswitch_data_2
    .packed-switch 0x6001
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_11
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_13
        :pswitch_12
    .end packed-switch

    .line 494
    :pswitch_data_3
    .packed-switch 0x600c
        :pswitch_17
    .end packed-switch

    .line 507
    :sswitch_data_0
    .sparse-switch
        0x6001 -> :sswitch_0
        0x6002 -> :sswitch_0
        0x6004 -> :sswitch_1
        0x6005 -> :sswitch_2
        0x6014 -> :sswitch_3
    .end sparse-switch
.end method

.method public onProgramAttributeReset(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 1229
    return-void
.end method

.method public onProgramAttributeUpdated(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 1223
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/16 v10, 0x1c5

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 627
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onResume()V

    .line 628
    const-string v0, "MtvUiSViewCover"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    :goto_0
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewCoverClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 633
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isDirectLaunch:Z

    if-eqz v0, :cond_1

    .line 634
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 635
    .local v7, "liveIntent":Landroid/content/Intent;
    const/high16 v0, 0x4000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 636
    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->startActivity(Landroid/content/Intent;)V

    .line 638
    .end local v7    # "liveIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->finish()V

    goto :goto_0

    .line 641
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->coverSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 642
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->suppressCoverUI(Z)V

    .line 643
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->setVolumeTextandButton()V

    .line 645
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    const/16 v1, 0x5007

    if-ne v0, v1, :cond_3

    .line 646
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    new-array v5, v4, [I

    const v8, 0x7f0a0043

    aput v8, v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 647
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v0

    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getRecordTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->continueRecordTimer(I)V

    .line 648
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 649
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v10, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 652
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLaunchAntennaAlert()Z

    move-result v0

    if-ne v0, v4, :cond_4

    .line 653
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 654
    .local v6, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.sec.mtv"

    const-string v2, "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 655
    const-string v0, "popup_type"

    const/4 v1, 0x3

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    const/high16 v0, 0x10000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 657
    const-string v0, "MtvUiSViewCover"

    const-string v1, "Mobile Tv Lanuch antenna"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->startActivity(Landroid/content/Intent;)V

    .line 659
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 662
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->checkIsReservationAndStart()Z

    .line 663
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->updateMainControlBar()V

    goto/16 :goto_0
.end method

.method public onStateChanged(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V
    .locals 0
    .param p1, "oldState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .param p2, "newState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .prologue
    .line 1217
    return-void
.end method

.method public onVolumeButtonPressed(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 873
    const-string v0, "MtvUiSViewCover"

    const-string v1, "onVolumeButtonPressed"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, 0xbb8

    const/4 v5, 0x1

    new-array v5, v5, [I

    const v6, 0x7f0a0042

    aput v6, v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_0
.end method

.method protected registerVideoSurfaceView(Z)V
    .locals 3
    .param p1, "isRegister"    # Z

    .prologue
    .line 707
    const-string v1, "MtvUiSViewCover"

    const-string v2, "registerSurfaceView"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_2

    .line 709
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->enable()V

    .line 710
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v0

    .line 711
    .local v0, "mOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    if-eqz v0, :cond_1

    .line 712
    if-eqz p1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->coverSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegVideoControl;->registerSurface(Landroid/view/SurfaceView;)Z

    .line 721
    .end local v0    # "mOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :goto_0
    return-void

    .line 715
    .restart local v0    # "mOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->coverSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegVideoControl;->unregisterSurface(Landroid/view/SurfaceView;)V

    goto :goto_0

    .line 717
    :cond_1
    const-string v1, "MtvUiSViewCover"

    const-string v2, "Control Interface is null ! "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    .end local v0    # "mOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :cond_2
    const-string v1, "MtvUiSViewCover"

    const-string v2, "mMtvAppPlaybackContext is null, can\'t register"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetAndFinish()V
    .locals 2

    .prologue
    .line 679
    const-string v0, "MtvUiSViewCover"

    const-string v1, "resetAndFinish"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 681
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 682
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->reset()V

    .line 683
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->mSViewUiMsgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$6;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$6;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 688
    return-void
.end method
