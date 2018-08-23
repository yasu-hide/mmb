.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
.super Ljava/lang/Object;
.source "MmbFcBrowMwAudio.java"


# static fields
.field private static final AUDIO_DEFALUT_VOLUME:F = 0.5f

.field static final STATE_CHAPTER_FAST_FOWRARD_COMPLETE:I = 0xc

.field static final STATE_CHAPTER_REWIND_COMPLETE:I = 0xd

.field static final STATE_ERROR:I = -0x1

.field static final STATE_FAST_FORWARD_COMPLETE:I = 0xa

.field static final STATE_IDLE:I = 0x0

.field static final STATE_PAUSED:I = 0x4

.field static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field static final STATE_PLAYING:I = 0x3

.field static final STATE_PREPARED:I = 0x2

.field static final STATE_PREPARING:I = 0x1

.field static final STATE_RESUME:I = 0x7

.field static final STATE_REWIND_COMPLETE:I = 0xb

.field static final STATE_SEEK_START:I = 0x9

.field static final STATE_SUSPEND:I = 0x6

.field static final STATE_SUSPEND_UNSUPPORTED:I = 0x8

.field private static TAG:Ljava/lang/String;


# instance fields
.field private audioID:I

.field private audioMute:I

.field private canPause:Z

.field private context:Landroid/content/Context;

.field private curPosition:I

.field private currentState:I

.field private duration:I

.field private isRegisterMedia:Z

.field private isTrickplay:Z

.field private mCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

.field private mErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

.field private mInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

.field mPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

.field private mSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

.field private mediaCB:I

.field private mediaData:I

.field mediaLoop:Z

.field private mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

.field private mediaState:I

.field private mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

.field private mute:Z

.field private onCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

.field private onErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

.field private onInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

.field private onPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

.field private onSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

.field private seekWhenPrepared:I

.field private strUri:Ljava/lang/String;

.field private targetState:I

.field private trickPlayProhibitArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "MmbFcBrowMwAudio"

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    .line 66
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 85
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaLoop:Z

    .line 87
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isRegisterMedia:Z

    .line 93
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->audioMute:I

    .line 94
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->curPosition:I

    .line 877
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    .line 910
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$2;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$2;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    .line 932
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$3;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$3;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    .line 957
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    .line 1023
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$5;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$5;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    .line 106
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->context:Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->initMmbFcBrowMwAudio()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->trickPlayProhibitArea:Ljava/util/List;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .prologue
    .line 43
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    return v0
.end method

.method static synthetic access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    return p1
.end method

.method static synthetic access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .prologue
    .line 43
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->audioID:I

    return v0
.end method

.method static synthetic access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;Z)Z
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->canPause:Z

    return p1
.end method

.method static synthetic access$1100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .prologue
    .line 43
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    return-object v0
.end method

.method static synthetic access$1200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .prologue
    .line 43
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->onInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    return-object v0
.end method

.method static synthetic access$1300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .prologue
    .line 43
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->onSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .prologue
    .line 43
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->audioMute:I

    return v0
.end method

.method static synthetic access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .prologue
    .line 43
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .prologue
    .line 43
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    return-object v0
.end method

.method static synthetic access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .prologue
    .line 43
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->onPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    return-object v0
.end method

.method static synthetic access$600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .prologue
    .line 43
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->seekWhenPrepared:I

    return v0
.end method

.method static synthetic access$700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .prologue
    .line 43
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    return v0
.end method

.method static synthetic access$702(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    return p1
.end method

.method static synthetic access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .prologue
    .line 43
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->onCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    return-object v0
.end method

.method static synthetic access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .prologue
    .line 43
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->onErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    return-object v0
.end method

.method private initMmbFcBrowMwAudio()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 765
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "initMmbFcBrowMwAudio"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 766
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    .line 767
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 768
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 1050
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInPlaybackState() --> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eq v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eq v0, v5, :cond_1

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eq v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 1050
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1051
    goto :goto_1
.end method

.method private openAudio()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 799
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->uri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-nez v5, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.music.musicservicecommand"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 804
    .local v4, "i":Landroid/content/Intent;
    const-string v5, "command"

    const-string v6, "pause"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 807
    invoke-direct {p0, v8}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->release(Z)V

    .line 808
    iput v8, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    .line 812
    const/4 v1, 0x0

    .line 814
    .local v1, "delemeterIndex":I
    :try_start_0
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF In : setOnPreparedListener()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 815
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnPreparedListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;)V

    .line 816
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF Out: setOnPreparedListener()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 817
    const/4 v5, -0x1

    iput v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->duration:I

    .line 818
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF In : setOnInfoListener()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 819
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnInfoListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;)V

    .line 820
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF Out: setOnInfoListener()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 821
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF In : setOnCompletionListener()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 822
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnCompletionListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;)V

    .line 823
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF Out: setOnCompletionListener()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 824
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF In : setOnErrorListener()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 825
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnErrorListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;)V

    .line 826
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF Out: setOnErrorListener()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 827
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF In : setOnSeekCompleteListener()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 828
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnSeekCompleteListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;)V

    .line 829
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF Out : setOnSeekCompleteListener()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 831
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF In : setParentalRate()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 832
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getParentalRate()I

    move-result v6

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setParentalRate(I)V

    .line 833
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF Out: setParentalRate()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 835
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->strUri:Ljava/lang/String;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 836
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->strUri:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "crid":Ljava/lang/String;
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->strUri:Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 838
    .local v3, "filename":Ljava/lang/String;
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF In : setDataSource()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 839
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v3, v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDataSource(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 840
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF Out: setDataSource()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 841
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF In : setResumePlaying()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 842
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setResumePlaying(Z)V

    .line 843
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF Out : setResumePlaying()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 844
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF In : setAudioStreamType()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 845
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setAudioStreamType(I)V

    .line 846
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF Out: setAudioStreamType()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 847
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget v5, v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    iget v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->audioID:I

    if-ne v5, v6, :cond_0

    .line 850
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF In : prepareAsync()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 851
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v5}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->prepareAsync()V

    .line 852
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF Out: prepareAsync()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 853
    const/4 v5, 0x1

    iput v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    .line 854
    const/4 v5, 0x2

    iput v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 855
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isTrickplay()Z

    move-result v5

    if-nez v5, :cond_0

    .line 856
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF In: setTrickPlayForceDisable()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 857
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v5}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setTrickPlayForceDisable()V

    .line 858
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 Audio ExIF Out: setTrickPlayForceDisable()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 860
    .end local v0    # "crid":Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 861
    .local v2, "ex":Ljava/io/IOException;
    iput v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    .line 862
    iput v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 863
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-interface {v5, v6, v9, v8}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;->onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z

    goto/16 :goto_0

    .line 865
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 866
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    iput v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    .line 867
    iput v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 868
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-interface {v5, v6, v9, v8}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;->onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z

    goto/16 :goto_0

    .line 870
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 871
    .local v2, "ex":Ljava/lang/IllegalStateException;
    iput v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    .line 872
    iput v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 873
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-interface {v5, v6, v9, v8}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;->onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 3
    .param p1, "aClearTargetState"    # Z

    .prologue
    const/4 v2, 0x0

    .line 778
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "release"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v0, :cond_0

    .line 780
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF In : reset() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 782
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF Out: reset() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 784
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    .line 785
    if-eqz p1, :cond_0

    .line 786
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 789
    :cond_0
    return-void
.end method


# virtual methods
.method addTrickPlayArea(II)V
    .locals 2
    .param p1, "aStart"    # I
    .param p2, "aEnd"    # I

    .prologue
    .line 596
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->trickPlayProhibitArea:Ljava/util/List;

    if-nez v1, :cond_0

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 600
    .local v0, "trickplayarea":Landroid/graphics/Point;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->trickPlayProhibitArea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method canPause()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->canPause:Z

    return v0
.end method

.method getAudioId()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->audioID:I

    return v0
.end method

.method getAudioTargetState()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    return v0
.end method

.method getCurrentPosition()I
    .locals 4

    .prologue
    .line 263
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio getCurrentPosition() CurrentState  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TargetState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 265
    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    if-ne v1, v2, :cond_0

    .line 266
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 Audio ExIF In : getCurrentPosition()"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getCurrentPosition()I

    move-result v0

    .line 268
    .local v0, "result":I
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 Audio ExIF Out : getCurrentPosition()"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 269
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->curPosition:I

    .line 274
    .end local v0    # "result":I
    :goto_0
    return v0

    .line 272
    :cond_0
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->curPosition:I

    goto :goto_0

    .line 274
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDuration()I
    .locals 2

    .prologue
    .line 285
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->duration:I

    if-lez v0, :cond_0

    .line 287
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->duration:I

    .line 295
    :goto_0
    return v0

    .line 289
    :cond_0
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF In : getDuration()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->duration:I

    .line 291
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF Out: getDuration()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 292
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->duration:I

    goto :goto_0

    .line 294
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->duration:I

    .line 295
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->duration:I

    goto :goto_0
.end method

.method getLoop()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaLoop:Z

    return v0
.end method

.method public getMediaCB()I
    .locals 2

    .prologue
    .line 1077
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getMediaCB"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 1078
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaCB:I

    return v0
.end method

.method public getMediaData()I
    .locals 2

    .prologue
    .line 1101
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getMediaData"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 1102
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaData:I

    return v0
.end method

.method public getMediaState()I
    .locals 3

    .prologue
    .line 1125
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaState mediaState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 1126
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaState:I

    return v0
.end method

.method getTrickPlayArea(I)Landroid/graphics/Point;
    .locals 1
    .param p1, "aIndex"    # I

    .prologue
    .line 611
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->trickPlayProhibitArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 612
    const/4 v0, 0x0

    .line 614
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->trickPlayProhibitArea:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    goto :goto_0
.end method

.method getTrickPlayAreaSize()I
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->trickPlayProhibitArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 627
    const/4 v0, 0x0

    .line 629
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->trickPlayProhibitArea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->strUri:Ljava/lang/String;

    return-object v0
.end method

.method getVolume()F
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-nez v0, :cond_0

    .line 538
    const/high16 v0, -0x40800000    # -1.0f

    .line 540
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->volume:F

    goto :goto_0
.end method

.method isPlaying()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-nez v2, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v1

    .line 308
    :cond_1
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 Audio ExIF In : isPlaying() 1"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->isPlaying()Z

    move-result v0

    .line 310
    .local v0, "isplaying":Z
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 Audio ExIF Out : isPlaying() 1"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRegisterMedia()Z
    .locals 3

    .prologue
    .line 1149
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegisterMedia : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isRegisterMedia:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 1150
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isRegisterMedia:Z

    return v0
.end method

.method isStopable()Z
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 654
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isStopable() --> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eq v0, v6, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 655
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eq v0, v5, :cond_1

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eq v0, v6, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 654
    goto :goto_0

    :cond_1
    move v1, v2

    .line 655
    goto :goto_1
.end method

.method isTrickplay()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isTrickplay:Z

    return v0
.end method

.method pause()Z
    .locals 4

    .prologue
    .line 322
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio pause() CurrentState  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TargetState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 323
    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    if-eq v1, v2, :cond_0

    .line 324
    const/4 v1, 0x0

    .line 337
    :goto_0
    return v1

    .line 326
    :cond_0
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 Audio ExIF In : isPlaying() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->isPlaying()Z

    move-result v0

    .line 329
    .local v0, "isplaying":Z
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 Audio ExIF Out : isPlaying() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 330
    if-eqz v0, :cond_1

    .line 331
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 Audio ExIF In : pause()"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->pause()V

    .line 333
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 Audio ExIF Out: pause()"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 334
    const/4 v1, 0x4

    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 337
    .end local v0    # "isplaying":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method recoverRejectedState()V
    .locals 3

    .prologue
    .line 666
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-nez v0, :cond_0

    .line 671
    :goto_0
    return-void

    .line 669
    :cond_0
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recoverRejectedState() audio Target State  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 670
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    goto :goto_0
.end method

.method resetAudioState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 179
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    .line 180
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 182
    :cond_0
    return-void
.end method

.method resume()Z
    .locals 3

    .prologue
    .line 465
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio resume() CurrentState  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TargetState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 466
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    if-eq v0, v1, :cond_0

    .line 467
    const/4 v0, 0x0

    .line 478
    :goto_0
    return v0

    .line 469
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 470
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF In : start() 2"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->start()V

    .line 472
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF Out: start() 2"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x3

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 475
    :cond_1
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 476
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->openAudio()V

    .line 478
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method resumeForSuspend()Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 366
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "audio resumeForSuspend()"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v1, :cond_0

    .line 368
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio resumeForSuspend() CurrentState  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TargetState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 369
    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    if-eq v1, v2, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 375
    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 376
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : resume()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->resume()V

    .line 378
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: resume()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 379
    iput v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 380
    iput v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    .line 381
    const/4 v0, 0x1

    goto :goto_0
.end method

.method seekTo(I)Z
    .locals 6
    .param p1, "aMsec"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 395
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio seekTo() CurrentState  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TargetState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 396
    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    if-eq v2, v3, :cond_0

    .line 410
    :goto_0
    return v0

    .line 399
    :cond_0
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "seekTo aMsec : %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    const/16 v2, 0x9

    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 402
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 Audio ExIF In : seekTo()"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 403
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v2, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->seekTo(I)V

    .line 404
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 Audio ExIF Out: seekTo()"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 405
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->seekWhenPrepared:I

    .line 409
    :goto_1
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->curPosition:I

    move v0, v1

    .line 410
    goto :goto_0

    .line 407
    :cond_1
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->seekWhenPrepared:I

    goto :goto_1
.end method

.method setAudioId(I)V
    .locals 0
    .param p1, "aId"    # I

    .prologue
    .line 156
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->audioID:I

    .line 157
    return-void
.end method

.method setAudioMute(I)V
    .locals 2
    .param p1, "aAudioMute"    # I

    .prologue
    .line 695
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->audioMute:I

    .line 696
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isInPlaybackState()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 697
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF In : setAudioMute() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->audioMute:I

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setAudioMute(I)V

    .line 699
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF Out : setAudioMute() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 701
    :cond_0
    return-void
.end method

.method setAudioOutDev(I)V
    .locals 2
    .param p1, "aAudioHW"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isInPlaybackState()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 142
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF In : setAudioOutDev() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setAudioOutDev(I)V

    .line 144
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF Out: setAudioOutDev() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method setAudioPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "aPath"    # Ljava/lang/String;

    .prologue
    .line 489
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setAudioURI(Landroid/net/Uri;)V

    .line 490
    return-void
.end method

.method setAudioURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "aUri"    # Landroid/net/Uri;

    .prologue
    .line 500
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->uri:Landroid/net/Uri;

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->seekWhenPrepared:I

    .line 502
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->openAudio()V

    .line 503
    return-void
.end method

.method setLoop(Z)V
    .locals 0
    .param p1, "aLoop"    # Z

    .prologue
    .line 552
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaLoop:Z

    .line 553
    return-void
.end method

.method public setMediaCB(I)V
    .locals 2
    .param p1, "aMediaCB"    # I

    .prologue
    .line 1065
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setMediaCB"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 1066
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaCB:I

    .line 1067
    return-void
.end method

.method public setMediaData(I)V
    .locals 2
    .param p1, "aMediaData"    # I

    .prologue
    .line 1089
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setMediaData"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 1090
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaData:I

    .line 1091
    return-void
.end method

.method setMediaPlayer(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 0
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 130
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 131
    return-void
.end method

.method public setMediaState(I)V
    .locals 3
    .param p1, "aMediaState"    # I

    .prologue
    .line 1113
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMediaState mediaState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 1114
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaState:I

    .line 1115
    return-void
.end method

.method setMmbFcBrowMwView(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V
    .locals 0
    .param p1, "aMfbmv"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 119
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 120
    return-void
.end method

.method setMute(Z)V
    .locals 3
    .param p1, "aMute"    # Z

    .prologue
    const/4 v2, 0x0

    .line 214
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mute:Z

    .line 215
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mute:Z

    if-ne v0, v1, :cond_1

    .line 219
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF In : setVolume() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, v2, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setVolume(FF)V

    .line 221
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF Out: setVolume() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF In : setVolume() 2"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->volume:F

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->volume:F

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setVolume(FF)V

    .line 225
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF Out: setVolume() 2"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnCompletionListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    .prologue
    .line 722
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->onCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    .line 723
    return-void
.end method

.method public setOnErrorListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    .prologue
    .line 733
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->onErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    .line 734
    return-void
.end method

.method public setOnInfoListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    .prologue
    .line 744
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->onInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    .line 745
    return-void
.end method

.method setOnPreparedListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    .prologue
    .line 711
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->onPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    .line 712
    return-void
.end method

.method setOnSeekCompleteListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    .prologue
    .line 755
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->onSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    .line 756
    return-void
.end method

.method public setRegisterMedia(Z)V
    .locals 3
    .param p1, "aIsRegisterMedia"    # Z

    .prologue
    .line 1137
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRegisterMedia : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 1138
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isRegisterMedia:Z

    .line 1139
    return-void
.end method

.method setSapMode(I)V
    .locals 2
    .param p1, "aSapMode"    # I

    .prologue
    .line 237
    const/4 v0, 0x1

    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isInPlaybackState()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 238
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In audio : setSapMode() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setSapMode(I)V

    .line 240
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out audio : setSapMode() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void
.end method

.method setTrickplay(Z)V
    .locals 0
    .param p1, "aIsTrickplay"    # Z

    .prologue
    .line 574
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isTrickplay:Z

    .line 575
    return-void
.end method

.method setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "aUri"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->strUri:Ljava/lang/String;

    .line 193
    return-void
.end method

.method setVolume(F)V
    .locals 4
    .param p1, "aVol"    # F

    .prologue
    .line 513
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-nez v0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 517
    const/4 p1, 0x0

    .line 521
    :cond_2
    :goto_1
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->volume:F

    .line 522
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 523
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF In : setVolume() 3"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->volume:F

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->volume:F

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setVolume(FF)V

    .line 525
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF Out: setVolume() 3"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_3
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 519
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method start()Z
    .locals 3

    .prologue
    .line 421
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio start() CurrentState  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TargetState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 422
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    if-eq v0, v1, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 431
    :goto_0
    return v0

    .line 425
    :cond_0
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF In : start() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->start()V

    .line 428
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 Audio ExIF Out: start() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 429
    const/4 v0, 0x3

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 431
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method stopPlayback()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 442
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio stopPlayback() CurrentState  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TargetState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 443
    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    if-eq v1, v2, :cond_0

    .line 454
    :goto_0
    return v0

    .line 446
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v1, :cond_1

    .line 447
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 Audio ExIF In : stop()"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->stop()V

    .line 449
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 Audio ExIF Out: stop()"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 451
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 452
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->curPosition:I

    .line 454
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method suspend()Z
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x0

    .line 342
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "audio suspend()"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v1, :cond_0

    .line 344
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio suspend() CurrentState  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TargetState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 345
    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    if-eq v1, v2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 349
    :cond_1
    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    if-eq v1, v4, :cond_0

    .line 353
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : suspend()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->suspend()V

    .line 356
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: suspend()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 357
    iput v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->targetState:I

    .line 358
    iput v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->currentState:I

    .line 359
    const/4 v0, 0x1

    goto :goto_0
.end method

.method trickPlayAreaClear()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->trickPlayProhibitArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->trickPlayProhibitArea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
