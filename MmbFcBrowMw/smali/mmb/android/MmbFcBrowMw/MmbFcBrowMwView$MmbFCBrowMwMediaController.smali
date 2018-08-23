.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;
.super Landroid/widget/MediaController;
.source "MmbFcBrowMwView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmbFCBrowMwMediaController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$ExitListener;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$PauseListener;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0xbb8

.field private static final FADE_OUT:I = 0x1

.field private static final SET_TRICKPLAT_PROHOBITED_AREA:I = 0x3

.field private static final SHOW_PROGRESS:I = 0x2


# instance fields
.field private background:Landroid/widget/LinearLayout;

.field private context:Landroid/content/Context;

.field private currentTime:Landroid/widget/TextView;

.field private dragging:Z

.field private endTime:Landroid/widget/TextView;

.field private exitButton:Landroid/widget/ImageButton;

.field private ffwdButton:Landroid/widget/ImageButton;

.field private formatBuilder:Ljava/lang/StringBuilder;

.field private formatter:Ljava/util/Formatter;

.field private isPlaying:Z

.field private isquirksmode:Z

.field private mExitListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$ExitListener;

.field private mPauseListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$PauseListener;

.field private mSeekListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;

.field private mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

.field private pauseButton:Landroid/widget/ImageButton;

.field private progress:Landroid/widget/ProgressBar;

.field private progressBarWidth:I

.field private progressDefault:Landroid/widget/ImageView;

.field private progressFrame:Landroid/widget/FrameLayout;

.field private rewButton:Landroid/widget/ImageButton;

.field private rootView:Landroid/view/View;

.field private seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

.field private separator:Landroid/widget/ImageView;

.field private tHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;

.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Landroid/content/Context;Z)V
    .locals 2
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aIsQuirksMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4463
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 4464
    invoke-direct {p0, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 4444
    const/4 v0, 0x0

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progressBarWidth:I

    .line 4458
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;

    invoke-direct {v0, p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->tHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;

    .line 4459
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$PauseListener;

    invoke-direct {v0, p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$PauseListener;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mPauseListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$PauseListener;

    .line 4460
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$ExitListener;

    invoke-direct {v0, p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$ExitListener;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mExitListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$ExitListener;

    .line 4782
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mSeekListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;

    .line 4465
    iput-object p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->context:Landroid/content/Context;

    .line 4466
    iput-boolean p3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->isquirksmode:Z

    .line 4467
    return-void
.end method

.method static synthetic access$5100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .prologue
    .line 4429
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .prologue
    .line 4429
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->dragging:Z

    return v0
.end method

.method static synthetic access$5202(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 4429
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->dragging:Z

    return p1
.end method

.method static synthetic access$5300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .prologue
    .line 4429
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->isPlaying:Z

    return v0
.end method

.method static synthetic access$5400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .prologue
    .line 4429
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->setTrickPlayProhitedArea()V

    return-void
.end method

.method static synthetic access$5500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Landroid/widget/MediaController$MediaPlayerControl;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .prologue
    .line 4429
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$5600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .prologue
    .line 4429
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->currentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;
    .param p1, "x1"    # I

    .prologue
    .line 4429
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .prologue
    .line 4429
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->tHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;

    return-object v0
.end method

.method static synthetic access$5900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .prologue
    .line 4429
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .prologue
    .line 4429
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->updatePausePlay()V

    return-void
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .prologue
    .line 4521
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->pauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4522
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->pauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4524
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->rewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4525
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->rewButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4527
    :cond_1
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->ffwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4528
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->ffwdButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 4532
    :cond_2
    :goto_0
    return-void

    .line 4530
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doPauseResume()V
    .locals 9

    .prologue
    const/16 v8, 0xbb8

    const/16 v7, 0x73

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4631
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4659
    :cond_0
    :goto_0
    return-void

    .line 4634
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 4635
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    .line 4636
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isReachPlayEnd()Z

    move-result v2

    if-ne v5, v2, :cond_2

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaState()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 4639
    :cond_2
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaState()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 4640
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->pause()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4641
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v7, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4642
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4643
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    .line 4644
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)I

    .line 4645
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->tHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;

    invoke-virtual {v2, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->removeMessages(I)V

    .line 4646
    invoke-virtual {p0, v8}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->show(I)V

    goto :goto_0

    .line 4649
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->start()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4650
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v7, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4651
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4652
    invoke-virtual {v0, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    .line 4653
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I

    move-result v3

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)I

    .line 4654
    invoke-virtual {p0, v8}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->show(I)V

    goto/16 :goto_0
.end method

.method private initControllerView(Landroid/view/View;Z)V
    .locals 9
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "aIsQuirksMode"    # Z

    .prologue
    const/high16 v8, 0x41b00000    # 22.0f

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v4, 0x0

    .line 4535
    const v1, 0x7f050004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->background:Landroid/widget/LinearLayout;

    .line 4536
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->background:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 4538
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->background:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$5000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f020000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4542
    :cond_0
    const v1, 0x7f050006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->separator:Landroid/widget/ImageView;

    .line 4543
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->separator:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 4544
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->separator:Landroid/widget/ImageView;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$5000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4547
    :cond_1
    const v1, 0x7f05000a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progressDefault:Landroid/widget/ImageView;

    .line 4548
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progressDefault:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 4550
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progressDefault:Landroid/widget/ImageView;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$5000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4554
    :cond_2
    const v1, 0x7f050005

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->pauseButton:Landroid/widget/ImageButton;

    .line 4555
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->pauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    .line 4556
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->pauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$5000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4557
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->pauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 4558
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->pauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mPauseListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$PauseListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4561
    :cond_3
    const v1, 0x7f05000c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->exitButton:Landroid/widget/ImageButton;

    .line 4562
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->exitButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    .line 4563
    const/4 v1, 0x1

    if-ne v1, p2, :cond_9

    .line 4564
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->background:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 4565
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->background:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->exitButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 4573
    :cond_4
    :goto_0
    new-instance v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    .line 4574
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    if-eqz v1, :cond_6

    .line 4575
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$5000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4576
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mSeekListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->setOnSeekBarChangeListener(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;)V

    .line 4577
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progress:Landroid/widget/ProgressBar;

    .line 4578
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_6

    .line 4579
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progress:Landroid/widget/ProgressBar;

    instance-of v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    if-eqz v1, :cond_5

    .line 4580
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mSeekListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->setOnSeekBarChangeListener(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;)V

    .line 4582
    :cond_5
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 4586
    :cond_6
    const v1, 0x7f050009

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progressFrame:Landroid/widget/FrameLayout;

    .line 4587
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progressFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7

    .line 4588
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progressFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 4591
    :cond_7
    const v1, 0x7f05000b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->endTime:Landroid/widget/TextView;

    .line 4592
    const v1, 0x7f050007

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->currentTime:Landroid/widget/TextView;

    .line 4593
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->endTime:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->currentTime:Landroid/widget/TextView;

    if-nez v1, :cond_a

    .line 4628
    :cond_8
    :goto_1
    return-void

    .line 4568
    :cond_9
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->exitButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$5000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4569
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->exitButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mExitListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$ExitListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 4597
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->formatBuilder:Ljava/lang/StringBuilder;

    .line 4598
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->formatBuilder:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_b

    .line 4599
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->formatter:Ljava/util/Formatter;

    .line 4601
    :cond_b
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4602
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4604
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 4610
    :sswitch_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->endTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4611
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->currentTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 4606
    :sswitch_1
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->endTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4607
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->currentTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 4614
    :sswitch_2
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->endTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4615
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->currentTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 4618
    :sswitch_3
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->endTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4619
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->currentTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 4623
    :sswitch_4
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->endTime:Landroid/widget/TextView;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4624
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->currentTime:Landroid/widget/TextView;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 4604
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_2
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
    .end sparse-switch
.end method

.method private setProgress()I
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 4708
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->dragging:Z

    if-eqz v5, :cond_1

    .line 4741
    :cond_0
    :goto_0
    return v4

    .line 4712
    :cond_1
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 4713
    .local v1, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v1, :cond_0

    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4717
    const/4 v4, 0x0

    .line 4718
    .local v4, "position":I
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 4720
    .local v0, "duration":I
    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 4721
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v4

    .line 4726
    :goto_1
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progress:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_2

    .line 4727
    if-lez v0, :cond_2

    .line 4728
    const-wide/16 v6, 0x3e8

    int-to-long v8, v4

    mul-long/2addr v6, v8

    int-to-long v8, v0

    div-long v2, v6, v8

    .line 4729
    .local v2, "pos":J
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progress:Landroid/widget/ProgressBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4730
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progress:Landroid/widget/ProgressBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 4734
    .end local v2    # "pos":J
    :cond_2
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->endTime:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 4735
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->endTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4737
    :cond_3
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->currentTime:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 4738
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->currentTime:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4723
    :cond_4
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    goto :goto_1
.end method

.method private setTrickPlayProhitedArea()V
    .locals 11

    .prologue
    .line 4676
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    if-eqz v6, :cond_1

    iget v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progressBarWidth:I

    if-eqz v6, :cond_0

    iget v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progressBarWidth:I

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    invoke-virtual {v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->getWidth()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 4677
    :cond_0
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    invoke-virtual {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->getWidth()I

    move-result v6

    iput v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progressBarWidth:I

    .line 4678
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setTrickPlayProhitedArea Width : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progressBarWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4679
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    iget v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progressBarWidth:I

    iget-object v8, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    invoke-virtual {v8}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->getHeight()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->initTargetBitmap(II)V

    .line 4681
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 4682
    .local v1, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v1, :cond_2

    .line 4705
    .end local v1    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    :cond_1
    :goto_0
    return-void

    .line 4685
    .restart local v1    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    :cond_2
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : getFastForwardEnable() 1"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4686
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    invoke-virtual {v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getFastForwardEnable()B

    move-result v6

    and-int/lit8 v6, v6, 0x3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isTrickplay()Z

    move-result v6

    if-nez v6, :cond_4

    .line 4687
    :cond_3
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out : getFastForwardEnable() 1-1"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4688
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getDuration()I

    move-result v8

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getDuration()I

    move-result v9

    iget v10, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progressBarWidth:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->setSegmentBitmap(IIII)V

    goto :goto_0

    .line 4689
    :cond_4
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    invoke-virtual {v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getFastForwardEnable()B

    move-result v6

    and-int/lit8 v6, v6, 0x3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 4690
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out : getFastForwardEnable() 1-2"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4692
    .local v0, "aChapterIdList":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;>;"
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    invoke-virtual {v6, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getChapterIdList(Ljava/util/List;)V

    .line 4693
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 4694
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;

    invoke-virtual {v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;->getChapterId()I

    move-result v6

    invoke-virtual {v7, v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getFastForwardEnableOnChapter(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4695
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;

    invoke-virtual {v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;->getSequenceLabelId()I

    move-result v5

    .line 4696
    .local v5, "seqLabelId":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;

    invoke-virtual {v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;->getChapterId()I

    move-result v4

    .line 4697
    .local v4, "seqChapterId":I
    new-instance v3, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;

    invoke-direct {v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;-><init>()V

    .line 4698
    .local v3, "interval":Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    invoke-virtual {v6, v5, v4, v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getIntervalOnChapter(IILmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;)V

    .line 4699
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->seeker:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    invoke-virtual {v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;->getStartTime()I

    move-result v7

    invoke-virtual {v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;->getEndTime()I

    move-result v8

    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v9

    invoke-virtual {v9}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getDuration()I

    move-result v9

    iget v10, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progressBarWidth:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->setSegmentBitmap(IIII)V

    .line 4693
    .end local v3    # "interval":Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;
    .end local v4    # "seqChapterId":I
    .end local v5    # "seqLabelId":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 12
    .param p1, "aTimeMs"    # I

    .prologue
    const/16 v11, 0x3b

    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4745
    div-int/lit16 v3, p1, 0x3e8

    .line 4747
    .local v3, "totalseconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 4748
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 4749
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 4751
    .local v0, "hours":I
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4752
    const/16 v4, 0xa

    if-lt v0, v4, :cond_0

    .line 4753
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->formatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4755
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->formatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 3

    .prologue
    .line 4662
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->pauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 4673
    :cond_0
    :goto_0
    return-void

    .line 4666
    :cond_1
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4667
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->pauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$5000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->isPlaying:Z

    goto :goto_0

    .line 4670
    :cond_2
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->pauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$5000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->isPlaying:Z

    goto :goto_0
.end method


# virtual methods
.method protected makeControllerView()Landroid/view/View;
    .locals 4

    .prologue
    .line 4470
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4471
    .local v0, "inflate":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$5000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 4472
    .local v1, "paser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->rootView:Landroid/view/View;

    .line 4473
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->rootView:Landroid/view/View;

    iget-boolean v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->isquirksmode:Z

    invoke-direct {p0, v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->initControllerView(Landroid/view/View;Z)V

    .line 4475
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->rootView:Landroid/view/View;

    return-object v2
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "aEnabled"    # Z

    .prologue
    .line 4487
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->pauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 4488
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->pauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4490
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->ffwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 4491
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->ffwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4493
    :cond_1
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->rewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 4494
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->rewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4496
    :cond_2
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 4497
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 4499
    :cond_3
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->disableUnsupportedButtons()V

    .line 4500
    invoke-super {p0, p1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 4501
    return-void
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 1
    .param p1, "aPlayer"    # Landroid/widget/MediaController$MediaPlayerControl;

    .prologue
    .line 4480
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    .line 4481
    invoke-super {p0, p1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 4482
    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->isPlaying:Z

    .line 4483
    return-void
.end method

.method public show(I)V
    .locals 7
    .param p1, "aTimeout"    # I

    .prologue
    const/4 v6, 0x1

    .line 4505
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4517
    :cond_0
    :goto_0
    return-void

    .line 4508
    :cond_1
    const/4 v2, 0x0

    invoke-super {p0, v2}, Landroid/widget/MediaController;->show(I)V

    .line 4509
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->updatePausePlay()V

    .line 4510
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->tHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->sendEmptyMessage(I)Z

    .line 4512
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->tHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4513
    .local v1, "msg1":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->tHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v1, v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4514
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->tHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;

    invoke-virtual {v2, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4515
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->tHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;

    invoke-virtual {v2, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->removeMessages(I)V

    .line 4516
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->tHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;

    int-to-long v4, p1

    invoke-virtual {v2, v0, v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
