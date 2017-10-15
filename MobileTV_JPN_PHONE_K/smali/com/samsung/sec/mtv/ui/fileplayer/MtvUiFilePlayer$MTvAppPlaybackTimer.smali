.class public final Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;
.super Ljava/lang/Object;
.source "MtvUiFilePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MTvAppPlaybackTimer"
.end annotation


# static fields
.field private static final INVALID_TIME_VALUE:J = 0x79999999L

.field private static final PLAYBACK_TIMER_MW_QUERY_INTERVAL:I = 0x1f4

.field private static final PLAYBCK_TIMER_INCREMENT_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MtvAppPlaybackTimer"

.field private static mSingletonInstance:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;


# instance fields
.field private isStopped:Z

.field private mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

.field private mPlayBackTimeCounter:Ljava/lang/Runnable;

.field private mPlaybackHandler:Landroid/os/Handler;

.field private mPlaybackTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2723
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 2751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2725
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$1;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackHandler:Landroid/os/Handler;

    .line 2746
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackTime:I

    .line 2747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 2749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->isStopped:Z

    .line 2791
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$2;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlayBackTimeCounter:Ljava/lang/Runnable;

    .line 2752
    const-string v0, "MtvAppPlaybackTimer"

    const-string v1, "MtvAppPlaybackTimer created newly..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    return-void
.end method

.method private constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V
    .locals 2
    .param p1, "mFragHandler"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .prologue
    .line 2756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2725
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$1;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackHandler:Landroid/os/Handler;

    .line 2746
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackTime:I

    .line 2747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 2749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->isStopped:Z

    .line 2791
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$2;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlayBackTimeCounter:Ljava/lang/Runnable;

    .line 2757
    const-string v0, "MtvAppPlaybackTimer"

    const-string v1, "MtvAppPlaybackTimer created newly...with fragHandler"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 2759
    return-void
.end method

.method static synthetic access$7000(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    .prologue
    .line 2717
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    .prologue
    .line 2717
    iget v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackTime:I

    return v0
.end method

.method static synthetic access$7102(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;
    .param p1, "x1"    # I

    .prologue
    .line 2717
    iput p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackTime:I

    return p1
.end method

.method static synthetic access$7300(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    .prologue
    .line 2717
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->isStopped:Z

    return v0
.end method

.method static synthetic access$7400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    .prologue
    .line 2717
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;
    .locals 1

    .prologue
    .line 2763
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    if-nez v0, :cond_0

    .line 2765
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    .line 2768
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    return-object v0
.end method

.method public static getInstance(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;
    .locals 1
    .param p0, "mFragHandler"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .prologue
    .line 2773
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    if-nez v0, :cond_0

    .line 2775
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    .line 2781
    :goto_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    return-object v0

    .line 2779
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    iput-object p0, v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    goto :goto_0
.end method

.method public static reset()V
    .locals 2

    .prologue
    .line 2786
    const-string v0, "MtvAppPlaybackTimer"

    const-string v1, "MtvAppPlaybackTimer reset..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    .line 2788
    return-void
.end method


# virtual methods
.method public getCurrentPlayBackTime()I
    .locals 1

    .prologue
    .line 2939
    iget v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackTime:I

    return v0
.end method

.method public getCurrentPlayBackTimeInMillis()I
    .locals 1

    .prologue
    .line 2934
    iget v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackTime:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public pausePlaybackTimer()V
    .locals 2

    .prologue
    .line 2861
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->isStopped:Z

    if-nez v0, :cond_0

    .line 2863
    const-string v0, "MtvAppPlaybackTimer"

    const-string v1, "MtvAppPlaybackTimer:: Playback Timer pause..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlayBackTimeCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2870
    :goto_0
    return-void

    .line 2868
    :cond_0
    const-string v0, "MtvAppPlaybackTimer"

    const-string v1, "Cannot Pause as Already in Stopped State !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumePlaybackTimer()V
    .locals 2

    .prologue
    .line 2874
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->isStopped:Z

    if-nez v0, :cond_0

    .line 2876
    const-string v0, "MtvAppPlaybackTimer"

    const-string v1, "MtvAppPlaybackTimer:: Playback Timer resume..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlayBackTimeCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2878
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlayBackTimeCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2884
    :goto_0
    return-void

    .line 2882
    :cond_0
    const-string v0, "MtvAppPlaybackTimer"

    const-string v1, "Cannot Resume as Already in Stopped State !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumePlaybackTimer(I)V
    .locals 4
    .param p1, "timeStamp"    # I

    .prologue
    .line 2888
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->isStopped:Z

    if-nez v0, :cond_0

    .line 2890
    const-string v0, "MtvAppPlaybackTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtvAppPlaybackTimer:: Playback Timer resume at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    iput p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackTime:I

    .line 2892
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlayBackTimeCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2893
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlayBackTimeCounter:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2899
    :goto_0
    return-void

    .line 2897
    :cond_0
    const-string v0, "MtvAppPlaybackTimer"

    const-string v1, "Cannot Resume as Already in Stopped State !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPlaybackTimer()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2837
    iput v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackTime:I

    .line 2838
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->isStopped:Z

    .line 2839
    const-string v0, "MtvAppPlaybackTimer"

    const-string v1, "MtvAppPlaybackTimer:: Playback Timer started..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlayBackTimeCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2841
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlayBackTimeCounter:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2842
    return-void
.end method

.method public stopPlaybackTimer()V
    .locals 2

    .prologue
    .line 2846
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->isStopped:Z

    if-nez v0, :cond_0

    .line 2848
    const-string v0, "MtvAppPlaybackTimer"

    const-string v1, "MtvAppPlaybackTimer:: Playback Timer stopped..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackTime:I

    .line 2850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->isStopped:Z

    .line 2851
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlayBackTimeCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2857
    :goto_0
    return-void

    .line 2855
    :cond_0
    const-string v0, "MtvAppPlaybackTimer"

    const-string v1, "Already in Stopped State !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePlayBackTimeInMillis(J)V
    .locals 7
    .param p1, "timeInMillis"    # J

    .prologue
    .line 2903
    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->isStopped:Z

    if-nez v2, :cond_0

    .line 2905
    const-string v2, "MtvAppPlaybackTimer"

    const-string v3, "updatePlayBackTimeInMillis:: updating playback time..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    long-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 2907
    .local v0, "roundedPlaybackTime":J
    long-to-int v2, v0

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->updatePlaybackTime(I)V

    .line 2913
    .end local v0    # "roundedPlaybackTime":J
    :goto_0
    return-void

    .line 2911
    :cond_0
    const-string v2, "MtvAppPlaybackTimer"

    const-string v3, "Cannot update playbck time as Already in Stopped State !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePlaybackTime(I)V
    .locals 3
    .param p1, "timeInSeconds"    # I

    .prologue
    .line 2917
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->isStopped:Z

    if-nez v0, :cond_0

    .line 2919
    const-string v0, "MtvAppPlaybackTimer"

    const-string v1, "updatePlaybackTime:: updating playback time..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    iput p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackTime:I

    .line 2923
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->mPlaybackHandler:Landroid/os/Handler;

    const/16 v2, 0x196

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2930
    :goto_0
    return-void

    .line 2928
    :cond_0
    const-string v0, "MtvAppPlaybackTimer"

    const-string v1, "Cannot update playbck time as Already in Stopped State !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
