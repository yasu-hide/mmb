.class public abstract Lcom/access/bml_aprofile/TVSystem;
.super Ljava/lang/Object;
.source "TVSystem.java"

# interfaces
.implements Lcom/access/bml_aprofile/TVSystemInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/access/bml_aprofile/TVSystem$DTVAudio;,
        Lcom/access/bml_aprofile/TVSystem$MessageType;,
        Lcom/access/bml_aprofile/TVSystem$NetworkMonitor;,
        Lcom/access/bml_aprofile/TVSystem$Status;
    }
.end annotation


# static fields
.field private static final ROMSOUND_NUM_MAX:I = 0xe


# instance fields
.field private activityHandler:Landroid/os/Handler;

.field private audioPlayer:Landroid/media/MediaPlayer;

.field private audioPlayerTbl:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/access/bml_aprofile/TVSystem$DTVAudio;",
            ">;"
        }
    .end annotation
.end field

.field private audioPlayingId:I

.field private bmlPlane:Landroid/view/SurfaceView;

.field private bmlStartMode:I

.field public contentHeight:I

.field public contentWidth:I

.field private fontFile:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field private isInvisible:Z

.field private isPlayingAACStream:Z

.field private isStartedTvsystem:Z

.field public keyEventConverter:Lcom/access/bml_aprofile/KeyEventConverter;

.field private keyboardAvailable:Z

.field private keyboardInputDialog:Lcom/access/bml_aprofile/KeyboardInputDialog;

.field private keyboardInputStocker:Lcom/access/bml_aprofile/KeyboardInputStocker;

.field private mContext:Landroid/content/Context;

.field private monitor:Lcom/access/bml_aprofile/TVSystem$NetworkMonitor;

.field private netMonitor:Ljava/lang/String;

.field private notifyDialog:Lcom/access/bml_aprofile/NotifyDialog;

.field private notifyStocker:Lcom/access/bml_aprofile/NotifyStocker;

.field private packageName:Ljava/lang/String;

.field private romSoundPlayer:Landroid/media/MediaPlayer;

.field private videoPlane:Landroid/view/SurfaceView;

.field private videoStatus:I

.field private videoStatusPrev:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "TvsystemInterface"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->packageName:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    .line 98
    new-instance v1, Lcom/access/bml_aprofile/KeyEventConverter;

    invoke-direct {v1}, Lcom/access/bml_aprofile/KeyEventConverter;-><init>()V

    iput-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->keyEventConverter:Lcom/access/bml_aprofile/KeyEventConverter;

    .line 99
    new-instance v1, Lcom/access/bml_aprofile/NotifyStocker;

    invoke-direct {v1}, Lcom/access/bml_aprofile/NotifyStocker;-><init>()V

    iput-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->notifyStocker:Lcom/access/bml_aprofile/NotifyStocker;

    .line 100
    new-instance v1, Lcom/access/bml_aprofile/NotifyDialog;

    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->notifyStocker:Lcom/access/bml_aprofile/NotifyStocker;

    invoke-direct {v1, p1, v2}, Lcom/access/bml_aprofile/NotifyDialog;-><init>(Landroid/content/Context;Lcom/access/bml_aprofile/NotifyStocker;)V

    iput-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->notifyDialog:Lcom/access/bml_aprofile/NotifyDialog;

    .line 101
    new-instance v1, Lcom/access/bml_aprofile/KeyboardInputStocker;

    invoke-direct {v1}, Lcom/access/bml_aprofile/KeyboardInputStocker;-><init>()V

    iput-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->keyboardInputStocker:Lcom/access/bml_aprofile/KeyboardInputStocker;

    .line 102
    new-instance v1, Lcom/access/bml_aprofile/KeyboardInputDialog;

    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->keyboardInputStocker:Lcom/access/bml_aprofile/KeyboardInputStocker;

    invoke-direct {v1, p1, v2}, Lcom/access/bml_aprofile/KeyboardInputDialog;-><init>(Landroid/content/Context;Lcom/access/bml_aprofile/KeyboardInputStocker;)V

    iput-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->keyboardInputDialog:Lcom/access/bml_aprofile/KeyboardInputDialog;

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/access/bml_aprofile/TVSystem;->keyboardAvailable:Z

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->packageName:Ljava/lang/String;

    .line 105
    iput v3, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatus:I

    .line 106
    iput v3, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatusPrev:I

    .line 107
    iput-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->fontFile:Ljava/lang/String;

    .line 108
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    .line 109
    iput-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    .line 110
    iput-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->romSoundPlayer:Landroid/media/MediaPlayer;

    .line 111
    const/4 v1, -0x1

    iput v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayingId:I

    .line 112
    iput-boolean v3, p0, Lcom/access/bml_aprofile/TVSystem;->isPlayingAACStream:Z

    .line 113
    iput-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    .line 114
    iput-boolean v3, p0, Lcom/access/bml_aprofile/TVSystem;->isStartedTvsystem:Z

    .line 115
    iput v3, p0, Lcom/access/bml_aprofile/TVSystem;->bmlStartMode:I

    .line 116
    iput-boolean v3, p0, Lcom/access/bml_aprofile/TVSystem;->isInvisible:Z

    .line 117
    const/16 v1, 0x3c0

    iput v1, p0, Lcom/access/bml_aprofile/TVSystem;->contentWidth:I

    .line 118
    const/16 v1, 0x21c

    iput v1, p0, Lcom/access/bml_aprofile/TVSystem;->contentHeight:I

    .line 119
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->netMonitor:Ljava/lang/String;

    .line 121
    const-string v1, "Create TVSystem instance"

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/access/bml_aprofile/TVSystem$1;

    invoke-direct {v1, p0}, Lcom/access/bml_aprofile/TVSystem$1;-><init>(Lcom/access/bml_aprofile/TVSystem;)V

    iput-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->handler:Landroid/os/Handler;

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/access/bml_aprofile/TVSystem$NetworkMonitor;

    invoke-direct {v1, p0}, Lcom/access/bml_aprofile/TVSystem$NetworkMonitor;-><init>(Lcom/access/bml_aprofile/TVSystem;)V

    iput-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->monitor:Lcom/access/bml_aprofile/TVSystem$NetworkMonitor;

    .line 149
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->monitor:Lcom/access/bml_aprofile/TVSystem$NetworkMonitor;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method private native TvsystemAPI_AddVisibilityChangedEvent(I)V
.end method

.method private native TvsystemAPI_addDataButtonPressEvent()I
.end method

.method private native TvsystemAPI_addKeyPressEvent(I)I
.end method

.method private native TvsystemAPI_addKeyReleaseEvent(I)I
.end method

.method private native TvsystemAPI_addMediaStoppedEvent([B)V
.end method

.method private native TvsystemAPI_demuxIncomingPacket([BII)I
.end method

.method private native TvsystemAPI_demuxIncomingSection(I[BI)I
.end method

.method private native TvsystemAPI_endSystem()I
.end method

.method private native TvsystemAPI_finalizeSystem()V
.end method

.method private native TvsystemAPI_initializeSystem(Lcom/access/bml_aprofile/TVSystemInterface;)I
.end method

.method private native TvsystemAPI_returnToMain()V
.end method

.method private native TvsystemAPI_setChannel(I)I
.end method

.method private native TvsystemAPI_setStream(Ljava/lang/String;)I
.end method

.method private native TvsystemAPI_setURI(Ljava/lang/String;)I
.end method

.method private native TvsystemAPI_setZipCode([B)V
.end method

.method private native TvsystemAPI_startSystem(Landroid/view/Surface;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$0(Lcom/access/bml_aprofile/TVSystem;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/access/bml_aprofile/TVSystem;->netMonitor:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/access/bml_aprofile/TVSystem;Lcom/access/bml_aprofile/TDTVDialogParameter;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->showNotifyDialog(Lcom/access/bml_aprofile/TDTVDialogParameter;)V

    return-void
.end method

.method static synthetic access$2(Lcom/access/bml_aprofile/TVSystem;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->startExtraBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/access/bml_aprofile/TVSystem;Lcom/access/bml_aprofile/KeyboardInputParameter;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->showKeyboardInputDialog(Lcom/access/bml_aprofile/KeyboardInputParameter;)V

    return-void
.end method

.method static synthetic access$4(Lcom/access/bml_aprofile/TVSystem;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/access/bml_aprofile/TVSystem;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/access/bml_aprofile/TVSystem;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayingId:I

    return v0
.end method

.method static synthetic access$7(Lcom/access/bml_aprofile/TVSystem;[B)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_addMediaStoppedEvent([B)V

    return-void
.end method

.method static synthetic access$8(Lcom/access/bml_aprofile/TVSystem;I)V
    .locals 0

    .prologue
    .line 1471
    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->audioRemove(I)V

    return-void
.end method

.method private audioCheckPlaying()I
    .locals 3

    .prologue
    .line 1389
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 1390
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1391
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    iget v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayingId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1392
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    iget v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayingId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;

    iget v0, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->mime:I

    .line 1393
    .local v0, "mime":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audioCheckPlaying  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 1399
    .end local v0    # "mime":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private audioFinalize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1315
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1316
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 1319
    .local v0, "enumDTVAudio":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/access/bml_aprofile/TVSystem$DTVAudio;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1324
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 1328
    .end local v0    # "enumDTVAudio":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/access/bml_aprofile/TVSystem$DTVAudio;>;"
    :cond_0
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 1329
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1330
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 1333
    :cond_1
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 1334
    iput-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    .line 1337
    :cond_2
    iput-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->romSoundPlayer:Landroid/media/MediaPlayer;

    .line 1338
    return-void

    .line 1320
    .restart local v0    # "enumDTVAudio":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/access/bml_aprofile/TVSystem$DTVAudio;>;"
    :cond_3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/access/bml_aprofile/TVSystem$DTVAudio;

    iget-object v2, v2, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->fileName:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1321
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private audioPlay(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 1341
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/access/bml_aprofile/TVSystem$DTVAudio;

    iget-object v1, v2, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->fileName:Ljava/lang/String;

    .line 1343
    .local v1, "fileName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1386
    :goto_0
    return-void

    .line 1347
    :cond_0
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 1348
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1349
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 1350
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    iget v3, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayingId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1351
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    iget v3, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayingId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/access/bml_aprofile/TVSystem$DTVAudio;

    iput v5, v2, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->status:I

    .line 1354
    :cond_1
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 1360
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1361
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1373
    :goto_2
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1374
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 1375
    iput p1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayingId:I

    .line 1377
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/access/bml_aprofile/TVSystem$3;

    invoke-direct {v3, p0}, Lcom/access/bml_aprofile/TVSystem$3;-><init>(Lcom/access/bml_aprofile/TVSystem;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 1356
    :cond_2
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    goto :goto_1

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 1366
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1367
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 1369
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 1370
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private audioRemove(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1472
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1473
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/access/bml_aprofile/TVSystem$DTVAudio;

    iget-object v1, v2, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->fileName:Ljava/lang/String;

    .line 1474
    .local v1, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    if-eqz v1, :cond_0

    .line 1477
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1478
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1481
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getAppResSound(Ljava/lang/String;)I
    .locals 4
    .param p1, "sndId"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "raw"

    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 271
    .local v0, "resId":I
    goto :goto_0
.end method

.method private getStatusText(I)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 213
    sparse-switch p1, :sswitch_data_0

    .line 257
    const-string v0, "Status not included list."

    :goto_0
    return-object v0

    .line 215
    :sswitch_0
    const-string v0, "Receiving via ARIB."

    goto :goto_0

    .line 217
    :sswitch_1
    const-string v0, "Receiving via HTTP."

    goto :goto_0

    .line 219
    :sswitch_2
    const-string v0, "Calling phone."

    goto :goto_0

    .line 221
    :sswitch_3
    const-string v0, "Connecting network."

    goto :goto_0

    .line 223
    :sswitch_4
    const-string v0, "Transferring data."

    goto :goto_0

    .line 225
    :sswitch_5
    const-string v0, "Accessing memory."

    goto :goto_0

    .line 227
    :sswitch_6
    const-string v0, "Running browser."

    goto :goto_0

    .line 229
    :sswitch_7
    const-string v0, "Loading document."

    goto :goto_0

    .line 231
    :sswitch_8
    const-string v0, "Initial update."

    goto :goto_0

    .line 233
    :sswitch_9
    const-string v0, "Accessing bookmark."

    goto :goto_0

    .line 235
    :sswitch_a
    const-string v0, "Secured zone."

    goto :goto_0

    .line 237
    :sswitch_b
    const-string v0, "Occupied ip."

    goto :goto_0

    .line 239
    :sswitch_c
    const-string v0, "Max."

    goto :goto_0

    .line 241
    :sswitch_d
    const-string v0, "Unavailable document."

    goto :goto_0

    .line 243
    :sswitch_e
    const-string v0, "Stack over flow."

    goto :goto_0

    .line 245
    :sswitch_f
    const-string v0, "Script error."

    goto :goto_0

    .line 247
    :sswitch_10
    const-string v0, "Illegal function."

    goto :goto_0

    .line 249
    :sswitch_11
    const-string v0, "BML mode."

    goto :goto_0

    .line 251
    :sswitch_12
    const-string v0, "HTML mode."

    goto :goto_0

    .line 253
    :sswitch_13
    const-string v0, "Mail mode."

    goto :goto_0

    .line 255
    :sswitch_14
    const-string v0, "None mode."

    goto :goto_0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_10
        -0x6 -> :sswitch_f
        -0x5 -> :sswitch_e
        -0x1 -> :sswitch_d
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0x2711 -> :sswitch_11
        0x2712 -> :sswitch_12
        0x2713 -> :sswitch_13
        0x2714 -> :sswitch_14
    .end sparse-switch
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "txtId"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadRomSound(I)Ljava/lang/String;
    .locals 4
    .param p1, "soundId"    # I

    .prologue
    .line 1119
    const/16 v2, 0xa

    if-ge p1, v2, :cond_1

    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fullseg_0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1124
    .local v1, "sndName":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/system/etc/one-seg/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[loadRomSound]sound Name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 1128
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1130
    .local v0, "files":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There is no built-in sound id #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 1132
    const/4 v1, 0x0

    .line 1135
    .end local v1    # "sndName":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 1122
    .end local v0    # "files":Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fullseg_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "sndName":Ljava/lang/String;
    goto :goto_0
.end method

.method private showKeyboardInputDialog(Lcom/access/bml_aprofile/KeyboardInputParameter;)V
    .locals 5
    .param p1, "parameter"    # Lcom/access/bml_aprofile/KeyboardInputParameter;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->keyboardInputDialog:Lcom/access/bml_aprofile/KeyboardInputDialog;

    iget v1, p1, Lcom/access/bml_aprofile/KeyboardInputParameter;->type:I

    iget v2, p1, Lcom/access/bml_aprofile/KeyboardInputParameter;->ctype:I

    iget v3, p1, Lcom/access/bml_aprofile/KeyboardInputParameter;->maxlen:I

    iget-object v4, p1, Lcom/access/bml_aprofile/KeyboardInputParameter;->init:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/access/bml_aprofile/KeyboardInputDialog;->show(IIILjava/lang/String;)V

    .line 188
    return-void
.end method

.method private showNotifyDialog(Lcom/access/bml_aprofile/TDTVDialogParameter;)V
    .locals 1
    .param p1, "parameter"    # Lcom/access/bml_aprofile/TDTVDialogParameter;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->notifyDialog:Lcom/access/bml_aprofile/NotifyDialog;

    invoke-virtual {v0, p1}, Lcom/access/bml_aprofile/NotifyDialog;->show(Lcom/access/bml_aprofile/TDTVDialogParameter;)V

    .line 184
    return-void
.end method

.method private startExtraBrowser(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    const-string v2, "Arguments are null."

    invoke-static {v2}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 202
    const-string v2, "Trying to start extra browser."

    invoke-static {v2}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Matching activity was not found."

    invoke-static {v2}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tryStartSystem()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->bmlPlane:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p0}, Lcom/access/bml_aprofile/TVSystem;->initializeSystem(Lcom/access/bml_aprofile/TVSystemInterface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    const-string v0, "Failed to initialize TVSystem."

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logE(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->bmlPlane:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/access/bml_aprofile/TVSystem;->startSystem(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    const-string v0, "Failed to initialize TVSystem."

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logE(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/access/bml_aprofile/TVSystem;->endSystem()Z

    .line 174
    invoke-virtual {p0}, Lcom/access/bml_aprofile/TVSystem;->finalizeSystem()V

    goto :goto_0

    .line 178
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/access/bml_aprofile/TVSystem;->isStartedTvsystem:Z

    .line 179
    const-string v0, "TVSystem started successfully."

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logD(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public PushDemuxIncomingPacket([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "packetSize"    # I
    .param p3, "bufferLen"    # I

    .prologue
    .line 492
    invoke-direct {p0, p1, p2, p3}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_demuxIncomingPacket([BII)I

    move-result v0

    return v0
.end method

.method public PushDemuxIncomingSection(I[BI)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "section"    # [B
    .param p3, "sectionLen"    # I

    .prologue
    .line 517
    invoke-direct {p0, p1, p2, p3}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_demuxIncomingSection(I[BI)I

    move-result v0

    return v0
.end method

.method public addDataButtonPressEvent()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "r":I
    iget-boolean v1, p0, Lcom/access/bml_aprofile/TVSystem;->isInvisible:Z

    if-eqz v1, :cond_1

    .line 433
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/access/bml_aprofile/TVSystem;->isInvisible:Z

    .line 434
    invoke-direct {p0, v3}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_AddVisibilityChangedEvent(I)V

    .line 447
    :cond_0
    :goto_0
    return v0

    .line 436
    :cond_1
    invoke-direct {p0}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_addDataButtonPressEvent()I

    move-result v0

    .line 437
    if-nez v0, :cond_0

    .line 438
    iget v1, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatus:I

    if-eq v1, v3, :cond_2

    .line 439
    iget v1, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatus:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 440
    iget v1, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatus:I

    if-nez v1, :cond_0

    .line 442
    :cond_2
    iput v3, p0, Lcom/access/bml_aprofile/TVSystem;->bmlStartMode:I

    .line 443
    const-string v1, "TVSystem"

    const-string v2, "addDataButtonPressEvent bmlStartMode set STARTMODE_DATABUTTON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addKeyPressEvent(I)I
    .locals 1
    .param p1, "dtvKeyCode"    # I

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_addKeyPressEvent(I)I

    move-result v0

    return v0
.end method

.method public addKeyReleaseEvent(I)I
    .locals 1
    .param p1, "dtvKeyCode"    # I

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_addKeyReleaseEvent(I)I

    move-result v0

    return v0
.end method

.method public bmlPlaneCreated(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->bmlPlane:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 312
    const-string v0, "bmlPlane will be added to TVSystem."

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 313
    iput-object p1, p0, Lcom/access/bml_aprofile/TVSystem;->bmlPlane:Landroid/view/SurfaceView;

    .line 314
    invoke-direct {p0}, Lcom/access/bml_aprofile/TVSystem;->tryStartSystem()V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    const-string v0, "bmlPlane was already added to TVSystem."

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearNVRAM()V
    .locals 4

    .prologue
    .line 1572
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    .line 1574
    .local v0, "files":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 1579
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1576
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public demux_SetChannel(IIII)V
    .locals 4
    .param p1, "originalNetworkID"    # I
    .param p2, "transportStreamID"    # I
    .param p3, "serviceID"    # I
    .param p4, "auto_start_flag"    # I

    .prologue
    .line 669
    const-string v0, "Notify Set Channel: "

    .line 670
    .local v0, "debug_msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "OriginalNetworkID= 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "TransportStreamID= 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ServiceID= 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "auto_start_flag= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 676
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 677
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    .line 678
    iput p4, v1, Landroid/os/Message;->arg1:I

    .line 680
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 681
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 685
    :goto_0
    return-void

    .line 683
    :cond_0
    const-string v2, "failed to send application message."

    invoke-static {v2}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 376
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 377
    .local v1, "keyCode":I
    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->keyEventConverter:Lcom/access/bml_aprofile/KeyEventConverter;

    invoke-virtual {v3, v1}, Lcom/access/bml_aprofile/KeyEventConverter;->getDTVKeyCode(I)I

    move-result v0

    .line 379
    .local v0, "dtvKeyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 380
    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->keyEventConverter:Lcom/access/bml_aprofile/KeyEventConverter;

    invoke-virtual {v3, v1}, Lcom/access/bml_aprofile/KeyEventConverter;->isDataButton(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/access/bml_aprofile/TVSystem;->addDataButtonPressEvent()I

    move-result v3

    if-nez v3, :cond_1

    .line 400
    :cond_0
    :goto_0
    return v2

    .line 386
    :cond_1
    if-eq v4, v0, :cond_2

    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->keyEventConverter:Lcom/access/bml_aprofile/KeyEventConverter;

    invoke-virtual {v3, v0}, Lcom/access/bml_aprofile/KeyEventConverter;->isMasked(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 387
    invoke-virtual {p0, v0}, Lcom/access/bml_aprofile/TVSystem;->addKeyPressEvent(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 392
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 393
    if-eq v4, v0, :cond_2

    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->keyEventConverter:Lcom/access/bml_aprofile/KeyEventConverter;

    invoke-virtual {v3, v0}, Lcom/access/bml_aprofile/KeyEventConverter;->isMasked(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    invoke-virtual {p0, v0}, Lcom/access/bml_aprofile/TVSystem;->addKeyReleaseEvent(I)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method public abstract dsmcc_GetSTCPeer(Lcom/access/bml_aprofile/ArgInteger;Lcom/access/bml_aprofile/ArgInteger;)I
.end method

.method public dtvAudioStream_UpdatePeer(IIII)I
    .locals 4
    .param p1, "status"    # I
    .param p2, "component"    # I
    .param p3, "channel"    # I
    .param p4, "mime"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 804
    iput-boolean v1, p0, Lcom/access/bml_aprofile/TVSystem;->isPlayingAACStream:Z

    .line 805
    if-ne p1, v3, :cond_0

    const/16 v2, 0xb

    if-ne p4, v2, :cond_0

    .line 806
    iput-boolean v3, p0, Lcom/access/bml_aprofile/TVSystem;->isPlayingAACStream:Z

    .line 811
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 812
    .local v0, "message":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 813
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 814
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 815
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 817
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 818
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 822
    :goto_0
    return v1

    .line 821
    :cond_1
    const-string v1, "failed to send application message."

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 822
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public dtvAudio_ClosePeer(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dtvAudio_ClosePeer: id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1488
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1493
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    .line 1498
    :cond_1
    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->audioRemove(I)V

    .line 1499
    return-void
.end method

.method public dtvAudio_GetStatusPeer(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1540
    const/4 v0, -0x1

    .line 1542
    .local v0, "ret":I
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;

    iget v0, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->status:I

    .line 1546
    :cond_0
    return v0
.end method

.method public dtvAudio_OpenPeer([BII[B)I
    .locals 11
    .param p1, "data"    # [B
    .param p2, "mime"    # I
    .param p3, "status"    # I
    .param p4, "objectId"    # [B

    .prologue
    const/16 v9, 0xb

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1404
    new-instance v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;

    invoke-direct {v1, p0}, Lcom/access/bml_aprofile/TVSystem$DTVAudio;-><init>(Lcom/access/bml_aprofile/TVSystem;)V

    .line 1405
    .local v1, "dtvAudio":Lcom/access/bml_aprofile/TVSystem$DTVAudio;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p4}, Ljava/lang/String;-><init>([B)V

    iput-object v8, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->objectID:Ljava/lang/String;

    .line 1406
    iput p3, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->status:I

    .line 1407
    iput p2, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->mime:I

    .line 1412
    if-ne p2, v9, :cond_3

    .line 1416
    iget-boolean v8, p0, Lcom/access/bml_aprofile/TVSystem;->isPlayingAACStream:Z

    if-eqz v8, :cond_1

    .line 1468
    :cond_0
    :goto_0
    return v6

    .line 1419
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->objectID:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".aac"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->fileName:Ljava/lang/String;

    .line 1433
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "dtvAudio_OpenPeer: status= "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->status:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fileName= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->fileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 1436
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    iget-object v9, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->fileName:Ljava/lang/String;

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1440
    .local v4, "file":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1441
    .local v5, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1442
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1443
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "chmod 777 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1453
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    const/4 v6, 0x0

    .line 1454
    .local v6, "key":I
    const/4 v0, 0x0

    .line 1457
    .local v0, "bFindSlot":Z
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 1458
    iget-object v8, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v0, 0x0

    .line 1459
    :goto_3
    if-eqz v0, :cond_2

    .line 1461
    iget-object v8, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    if-ne p3, v7, :cond_0

    .line 1465
    invoke-direct {p0, v6}, Lcom/access/bml_aprofile/TVSystem;->audioPlay(I)V

    goto/16 :goto_0

    .line 1421
    .end local v0    # "bFindSlot":Z
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "key":I
    :cond_3
    const/16 v8, 0xc

    if-ne p2, v8, :cond_4

    .line 1423
    invoke-direct {p0}, Lcom/access/bml_aprofile/TVSystem;->audioCheckPlaying()I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 1426
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->objectID:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".aif"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->fileName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1429
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dtvAudio_OpenPeer:Error known mime type "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 1430
    const/4 v6, -0x3

    goto/16 :goto_0

    .line 1445
    .restart local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 1446
    .local v3, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 1448
    .end local v3    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 1449
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bFindSlot":Z
    .restart local v6    # "key":I
    :cond_5
    move v0, v7

    .line 1458
    goto :goto_3
.end method

.method public dtvAudio_SetStatusPeer(II)I
    .locals 5
    .param p1, "id"    # I
    .param p2, "status"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 1503
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "dtvAudio_SetStatusPeer: id "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "status "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 1505
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;

    iget-object v0, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->fileName:Ljava/lang/String;

    .line 1507
    .local v0, "fileName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1509
    const-string v1, "dtvAudio_SetStatusPeer: no seach key in the table"

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    move v1, v2

    .line 1535
    :goto_0
    return v1

    .line 1513
    :cond_0
    if-ne p2, v4, :cond_2

    .line 1514
    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->audioPlay(I)V

    .line 1533
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;

    iput p2, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->status:I

    .line 1535
    const/4 v1, 0x0

    goto :goto_0

    .line 1516
    :cond_2
    if-nez p2, :cond_4

    .line 1517
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayingId:I

    if-ne v1, p1, :cond_1

    .line 1518
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1519
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 1522
    :cond_3
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;

    iget v1, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->status:I

    if-ne v1, v4, :cond_1

    .line 1524
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    iget v2, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayingId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;

    iget-object v1, v1, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->objectID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_addMediaStoppedEvent([B)V

    goto :goto_1

    .line 1529
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "dtvAudio_SetStatusPeer: unknown status "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    move v1, v2

    .line 1530
    goto :goto_0
.end method

.method public abstract dtvCC_FinalizePeer()V
.end method

.method public abstract dtvCC_GetDisplayStatusPeer(I)I
.end method

.method public abstract dtvCC_GetLanguageStatusPeer(I)I
.end method

.method public abstract dtvCC_InitializePeer()I
.end method

.method public abstract dtvCC_SetDisplayStatusPeer(II)I
.end method

.method public abstract dtvControl_GetAffiliateIDPeer([B)I
.end method

.method public abstract dtvControl_GetEventIDPeer()I
.end method

.method public abstract dtvControl_GetIRDIDPeer(I[B)I
.end method

.method public abstract dtvControl_GetProgramRelativeTimePeer()I
.end method

.method public abstract dtvControl_GetTotTdtTimePeer(Lcom/access/bml_aprofile/TDTVDate;)I
.end method

.method public abstract dtvControl_IsBeingBroadcastPeer(Lcom/access/bml_aprofile/TDTVAribEventURI;)I
.end method

.method public dtvControl_LaunchExAppPeer(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "exinfo"    # [Ljava/lang/String;
    .param p4, "excnt"    # I

    .prologue
    const/4 v8, 0x0

    .line 1140
    const/4 v3, -0x1

    .line 1143
    .local v3, "ret":I
    const-string v6, "dtvControl_LaunchExAppPeer"

    invoke-static {v6}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 1145
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v4, v3

    .line 1179
    .end local v3    # "ret":I
    .local v4, "ret":I
    :goto_0
    return v4

    .line 1149
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "   uri "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 1150
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "   mime "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 1151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, p4, :cond_5

    .line 1155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    if-lez p4, :cond_4

    .line 1156
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1157
    .local v0, "dstUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 1159
    .local v5, "scheme":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1160
    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1161
    :cond_2
    const-string v6, "Unfixed"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    if-le p4, v6, :cond_6

    .line 1162
    aget-object v6, p3, v8

    const-string v7, "Start"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    aget-object v6, p3, v6

    const-string v7, "WebBrowser"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1163
    const/4 v3, 0x0

    .line 1171
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 1172
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1173
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v0    # "dstUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "scheme":Ljava/lang/String;
    :cond_4
    move v4, v3

    .line 1179
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_0

    .line 1152
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "   exinfo["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 1151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1165
    .restart local v0    # "dstUri":Landroid/net/Uri;
    .restart local v5    # "scheme":Ljava/lang/String;
    :cond_6
    const-string v6, "text/html"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    if-le p4, v6, :cond_3

    .line 1166
    aget-object v6, p3, v8

    const-string v7, "Update"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1167
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public dtvControl_NotifyHaltPeer(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "parameter"    # I

    .prologue
    .line 1190
    return-void
.end method

.method public dtvControl_NotifyServicePeer(III)V
    .locals 0
    .param p1, "networkId"    # I
    .param p2, "streamId"    # I
    .param p3, "serviceId"    # I

    .prologue
    .line 1194
    return-void
.end method

.method public dtvControl_PlayRomSoundPeer(I)I
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 1061
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "[Audio]dtvControl_PlayRomSoundPeer soundId = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 1063
    invoke-direct {p0}, Lcom/access/bml_aprofile/TVSystem;->audioCheckPlaying()I

    move-result v1

    .line 1064
    .local v1, "playingAudio":I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 1066
    const-string v3, "AAC File is playing."

    invoke-static {v3}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    move v3, v4

    .line 1112
    :goto_0
    return v3

    .line 1068
    :cond_0
    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    .line 1070
    const-string v3, "AIFF File is playing."

    invoke-static {v3}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 1071
    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 1072
    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    iget v6, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayingId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1073
    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayerTbl:Ljava/util/Hashtable;

    iget v6, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayingId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/access/bml_aprofile/TVSystem$DTVAudio;

    iput v5, v3, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->status:I

    .line 1075
    :cond_1
    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 1078
    :cond_2
    if-ltz p1, :cond_4

    const/16 v3, 0xe

    if-ge p1, v3, :cond_4

    .line 1079
    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->loadRomSound(I)Ljava/lang/String;

    move-result-object v2

    .line 1080
    .local v2, "sndPath":Ljava/lang/String;
    if-nez v2, :cond_3

    move v3, v4

    .line 1081
    goto :goto_0

    .line 1084
    :cond_3
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->romSoundPlayer:Landroid/media/MediaPlayer;

    .line 1087
    :try_start_0
    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->romSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1088
    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->romSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1100
    :goto_1
    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->romSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1101
    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->romSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1103
    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->romSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    .line 1104
    iget-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->romSoundPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/access/bml_aprofile/TVSystem$2;

    invoke-direct {v4, p0}, Lcom/access/bml_aprofile/TVSystem$2;-><init>(Lcom/access/bml_aprofile/TVSystem;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .end local v2    # "sndPath":Ljava/lang/String;
    :cond_4
    move v3, v5

    .line 1112
    goto :goto_0

    .line 1090
    .restart local v2    # "sndPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 1093
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1094
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 1096
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 1097
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public dtvControl_StartExtraBrowserPeer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "browserName"    # Ljava/lang/String;
    .param p2, "showAV"    # I
    .param p3, "returnURI"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 982
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    if-ne v4, p2, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    if-nez p4, :cond_3

    .line 983
    :cond_1
    const-string v2, "Invalid arguments."

    invoke-static {v2}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    move v2, v3

    .line 999
    :cond_2
    :goto_0
    return v2

    .line 987
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 988
    .local v0, "message":Landroid/os/Message;
    const/4 v4, 0x3

    iput v4, v0, Landroid/os/Message;->what:I

    .line 989
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 990
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 991
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 992
    iget-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 994
    .local v1, "res":Z
    if-nez v1, :cond_2

    .line 998
    const-string v2, "failed to send application message."

    invoke-static {v2}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    move v2, v3

    .line 999
    goto :goto_0
.end method

.method public abstract dtvEPG_CancelReservationPeer(Lcom/access/bml_aprofile/TDTVAribEventURI;)I
.end method

.method public abstract dtvEPG_CheckOperationPeer()I
.end method

.method public dtvEPG_FinalizePeer()V
    .locals 1

    .prologue
    .line 1011
    const-string v0, "dtvEPG_FinalizePeer"

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logD(Ljava/lang/String;)V

    .line 1012
    return-void
.end method

.method public abstract dtvEPG_GetEventDurationPeer(Lcom/access/bml_aprofile/TDTVAribEventURI;Lcom/access/bml_aprofile/ArgInteger;)I
.end method

.method public abstract dtvEPG_GetEventStartTimePeer(Lcom/access/bml_aprofile/TDTVAribEventURI;Lcom/access/bml_aprofile/TDTVDate;)I
.end method

.method public dtvEPG_InitializePeer()I
    .locals 1

    .prologue
    .line 1005
    const-string v0, "dtvEPG_InitializePeer"

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logD(Ljava/lang/String;)V

    .line 1006
    const/4 v0, 0x0

    return v0
.end method

.method public abstract dtvEPG_IsReservedPeer(Lcom/access/bml_aprofile/TDTVAribEventURI;Lcom/access/bml_aprofile/TDTVDate;)I
.end method

.method public dtvEPG_RecCancelReservationPeer(Lcom/access/bml_aprofile/TDTVAribEventURI;)I
    .locals 1
    .param p1, "eventRef"    # Lcom/access/bml_aprofile/TDTVAribEventURI;

    .prologue
    .line 1041
    const/4 v0, -0x1

    return v0
.end method

.method public dtvEPG_RecIsReservedPeer(Lcom/access/bml_aprofile/TDTVAribEventURI;Lcom/access/bml_aprofile/TDTVDate;)I
    .locals 1
    .param p1, "eventRef"    # Lcom/access/bml_aprofile/TDTVAribEventURI;
    .param p2, "startTime"    # Lcom/access/bml_aprofile/TDTVDate;

    .prologue
    .line 1031
    const/4 v0, -0x1

    return v0
.end method

.method public dtvEPG_RecReservePeer(Lcom/access/bml_aprofile/TDTVAribEventURI;Lcom/access/bml_aprofile/TDTVDate;)I
    .locals 1
    .param p1, "eventRef"    # Lcom/access/bml_aprofile/TDTVAribEventURI;
    .param p2, "startTime"    # Lcom/access/bml_aprofile/TDTVDate;

    .prologue
    .line 1036
    const/4 v0, -0x1

    return v0
.end method

.method public abstract dtvEPG_ReservePeer(Lcom/access/bml_aprofile/TDTVAribEventURI;Lcom/access/bml_aprofile/TDTVDate;)I
.end method

.method public abstract dtvEvent_NotifyDataButtonMaskPeer(I)V
.end method

.method public dtvEvent_SetUsedKeyListPeer(I)I
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 829
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->keyEventConverter:Lcom/access/bml_aprofile/KeyEventConverter;

    if-eqz v0, :cond_0

    .line 830
    if-ltz p1, :cond_1

    .line 831
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->keyEventConverter:Lcom/access/bml_aprofile/KeyEventConverter;

    invoke-virtual {v0, p1}, Lcom/access/bml_aprofile/KeyEventConverter;->setMask(I)V

    .line 832
    const/4 p1, 0x0

    .line 840
    .end local p1    # "mask":I
    :cond_0
    :goto_0
    return p1

    .line 835
    .restart local p1    # "mask":I
    :cond_1
    const-string v0, "obtained keymask is illegal parameter."

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 836
    const/4 p1, -0x3

    goto :goto_0
.end method

.method public dtvExtension_KeyboardClosePeer()V
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->keyboardInputDialog:Lcom/access/bml_aprofile/KeyboardInputDialog;

    invoke-virtual {v0}, Lcom/access/bml_aprofile/KeyboardInputDialog;->dismiss()V

    .line 931
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->keyboardInputStocker:Lcom/access/bml_aprofile/KeyboardInputStocker;

    invoke-virtual {v0}, Lcom/access/bml_aprofile/KeyboardInputStocker;->clear()V

    .line 932
    return-void
.end method

.method public dtvExtension_KeyboardGetStatusPeer()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 936
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->keyboardInputStocker:Lcom/access/bml_aprofile/KeyboardInputStocker;

    invoke-virtual {v2}, Lcom/access/bml_aprofile/KeyboardInputStocker;->peekResult()Lcom/access/bml_aprofile/KeyboardInputResult;

    move-result-object v0

    .line 939
    .local v0, "inputResult":Lcom/access/bml_aprofile/KeyboardInputResult;
    if-nez v0, :cond_0

    .line 940
    const/16 v1, -0xd

    .line 951
    :goto_0
    :pswitch_0
    return v1

    .line 944
    :cond_0
    iget v2, v0, Lcom/access/bml_aprofile/KeyboardInputResult;->result:I

    packed-switch v2, :pswitch_data_0

    .line 950
    const-string v2, "Invalid keyboard input dialog result."

    invoke-static {v2}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 946
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    .line 944
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dtvExtension_KeyboardGetValuePeer([BI)I
    .locals 8
    .param p1, "outBuffer"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 957
    if-nez p1, :cond_0

    .line 958
    const-string v3, "Arguments are null."

    invoke-static {v3}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 977
    :goto_0
    return v2

    .line 962
    :cond_0
    iget-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->keyboardInputStocker:Lcom/access/bml_aprofile/KeyboardInputStocker;

    invoke-virtual {v4}, Lcom/access/bml_aprofile/KeyboardInputStocker;->pollResult()Lcom/access/bml_aprofile/KeyboardInputResult;

    move-result-object v1

    .line 964
    .local v1, "inputResult":Lcom/access/bml_aprofile/KeyboardInputResult;
    if-nez v1, :cond_1

    .line 965
    const-string v3, "There is no input result."

    invoke-static {v3}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 970
    :cond_1
    :try_start_0
    iget-object v2, v1, Lcom/access/bml_aprofile/KeyboardInputResult;->inputText:Ljava/lang/String;

    const-string v4, "EUC-JP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/access/bml_aprofile/KeyboardInputResult;->inputText:Ljava/lang/String;

    const-string v7, "EUC-JP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v2, v4, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "dtvExtension_KeyboardGetValuePeer string: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    const-string v5, "EUC-JP"

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/access/bml_aprofile/DTVUtil;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v3

    .line 977
    goto :goto_0

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public dtvExtension_KeyboardIsEnabledPeer()I
    .locals 1

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/access/bml_aprofile/TVSystem;->getKeyboardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public dtvExtension_KeyboardOpenPeer(III[BI)I
    .locals 9
    .param p1, "type"    # I
    .param p2, "ctype"    # I
    .param p3, "maxlen"    # I
    .param p4, "init_str"    # [B
    .param p5, "init_len"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 896
    if-gtz p3, :cond_0

    .line 897
    const-string v4, "Invalid arguments."

    invoke-static {v4}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 925
    :goto_0
    return v5

    .line 901
    :cond_0
    new-instance v2, Lcom/access/bml_aprofile/KeyboardInputParameter;

    invoke-direct {v2}, Lcom/access/bml_aprofile/KeyboardInputParameter;-><init>()V

    .line 902
    .local v2, "parameter":Lcom/access/bml_aprofile/KeyboardInputParameter;
    iput p1, v2, Lcom/access/bml_aprofile/KeyboardInputParameter;->type:I

    .line 903
    iput p2, v2, Lcom/access/bml_aprofile/KeyboardInputParameter;->ctype:I

    .line 904
    iput p3, v2, Lcom/access/bml_aprofile/KeyboardInputParameter;->maxlen:I

    .line 907
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "EUC-JP"

    invoke-direct {v6, p4, v7, p5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v6, v2, Lcom/access/bml_aprofile/KeyboardInputParameter;->init:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 914
    .local v1, "message":Landroid/os/Message;
    const/4 v6, 0x4

    iput v6, v1, Landroid/os/Message;->what:I

    .line 915
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 916
    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 917
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 918
    iget-object v6, p0, Lcom/access/bml_aprofile/TVSystem;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    .line 920
    .local v3, "res":Z
    if-nez v3, :cond_1

    .line 921
    const-string v4, "failed to send application message."

    invoke-static {v4}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 909
    .end local v1    # "message":Landroid/os/Message;
    .end local v3    # "res":Z
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 925
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "message":Landroid/os/Message;
    .restart local v3    # "res":Z
    :cond_1
    iget-object v6, p0, Lcom/access/bml_aprofile/TVSystem;->keyboardInputDialog:Lcom/access/bml_aprofile/KeyboardInputDialog;

    invoke-virtual {v6}, Lcom/access/bml_aprofile/KeyboardInputDialog;->syncShowResult()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method public dtvGraphic_NotifyVideoStatusPeer(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dtvGraphic_NotifyVideoStatusPeer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logD(Ljava/lang/String;)V

    .line 741
    if-gez p1, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    iget v1, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatus:I

    packed-switch v1, :pswitch_data_0

    .line 773
    :cond_2
    :goto_1
    :pswitch_0
    iget v1, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatus:I

    iput v1, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatusPrev:I

    .line 774
    iput p1, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatus:I

    .line 777
    iget v1, p0, Lcom/access/bml_aprofile/TVSystem;->bmlStartMode:I

    if-ne v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/access/bml_aprofile/TVSystem;->isInvisible:Z

    if-nez v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 779
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 780
    .local v0, "message":Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 781
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 782
    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 783
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 784
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 751
    .end local v0    # "message":Landroid/os/Message;
    :pswitch_1
    if-eq p1, v3, :cond_3

    if-ne p1, v6, :cond_2

    .line 752
    :cond_3
    iput-boolean v4, p0, Lcom/access/bml_aprofile/TVSystem;->isInvisible:Z

    .line 753
    iget v1, p0, Lcom/access/bml_aprofile/TVSystem;->bmlStartMode:I

    if-nez v1, :cond_4

    .line 754
    iput v3, p0, Lcom/access/bml_aprofile/TVSystem;->bmlStartMode:I

    .line 755
    const-string v1, "TVSystem"

    const-string v2, "dtvGraphic_NotifyVideoStatusPeer bmlStartMode set STARTMODE_AUTO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 756
    :cond_4
    iget v1, p0, Lcom/access/bml_aprofile/TVSystem;->bmlStartMode:I

    if-ne v1, v6, :cond_2

    .line 757
    const-string v1, "TVSystem"

    const-string v2, "dtvGraphic_NotifyVideoStatusPeer bmlStartMode STARTMODE_RETURNTOMAIN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iput v3, p0, Lcom/access/bml_aprofile/TVSystem;->bmlStartMode:I

    .line 759
    iput-boolean v5, p0, Lcom/access/bml_aprofile/TVSystem;->isInvisible:Z

    .line 760
    invoke-direct {p0, v3}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_AddVisibilityChangedEvent(I)V

    goto :goto_0

    .line 747
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dtvGraphic_SetViewModePeer(II)V
    .locals 3
    .param p1, "in_width"    # I
    .param p2, "in_height"    # I

    .prologue
    const/16 v2, 0x3c0

    const/16 v1, 0x21c

    .line 1588
    if-ne p1, v2, :cond_0

    if-eq p2, v1, :cond_1

    :cond_0
    const/16 v0, 0x2d0

    if-ne p1, v0, :cond_2

    const/16 v0, 0x1e0

    if-ne p2, v0, :cond_2

    .line 1589
    :cond_1
    iput p1, p0, Lcom/access/bml_aprofile/TVSystem;->contentWidth:I

    .line 1590
    iput p2, p0, Lcom/access/bml_aprofile/TVSystem;->contentHeight:I

    .line 1595
    :goto_0
    return-void

    .line 1592
    :cond_2
    iput v2, p0, Lcom/access/bml_aprofile/TVSystem;->contentWidth:I

    .line 1593
    iput v1, p0, Lcom/access/bml_aprofile/TVSystem;->contentHeight:I

    goto :goto_0
.end method

.method public dtvNVRAM_GetBookmarkMaxPeer()I
    .locals 1

    .prologue
    .line 1557
    const/16 v0, 0x32

    return v0
.end method

.method public dtvNVRAM_GetDenbunMaxPeer()I
    .locals 1

    .prologue
    .line 1568
    const/4 v0, 0x3

    return v0
.end method

.method public abstract dtvNVRAM_GetZipcodePeer([B)I
.end method

.method public abstract dtvNVRAM_SetZipcodePeer([B)I
.end method

.method public dtvNet_GetConnectionTypePeer(Lcom/access/bml_aprofile/ArgInteger;)I
    .locals 1
    .param p1, "outType"    # Lcom/access/bml_aprofile/ArgInteger;

    .prologue
    .line 1216
    const/16 v0, 0x193

    iput v0, p1, Lcom/access/bml_aprofile/ArgInteger;->mOutValue:I

    .line 1217
    const/4 v0, 0x0

    return v0
.end method

.method public abstract dtvNet_GetIPInfoPeer([B[B)I
.end method

.method public dtvNet_GetIPStatusFlagPeer()I
    .locals 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->netMonitor:Ljava/lang/String;

    const-string v1, "Changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    const-string v0, ""

    iput-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->netMonitor:Ljava/lang/String;

    .line 1306
    const-string v0, "dtvNet_GetIPStatusFlagPeer Network Changed!"

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 1307
    const/4 v0, 0x1

    .line 1309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dtvNet_GetPrefixNumberPeer(Lcom/access/bml_aprofile/TDTVPrefixNumber;)I
    .locals 1
    .param p1, "outPrefix"    # Lcom/access/bml_aprofile/TDTVPrefixNumber;

    .prologue
    .line 1296
    const/4 v0, -0x1

    return v0
.end method

.method public dtvNet_IsIPConnectedPeer()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1271
    iget-object v5, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1272
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1274
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 1276
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 1277
    .local v1, "isConnected":Z
    if-eqz v1, :cond_1

    .line 1291
    .end local v1    # "isConnected":Z
    :cond_0
    :goto_0
    return v3

    .line 1282
    :cond_1
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1283
    if-eqz v2, :cond_2

    .line 1285
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 1286
    .restart local v1    # "isConnected":Z
    if-nez v1, :cond_0

    .end local v1    # "isConnected":Z
    :cond_2
    move v3, v4

    .line 1291
    goto :goto_0
.end method

.method public dtvSystem_EnterStatusPeer(I)I
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enter Status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 592
    if-eq v4, p1, :cond_0

    const/4 v1, 0x3

    if-ne v1, p1, :cond_2

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 594
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 595
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 596
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 597
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 598
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 599
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 613
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    :goto_0
    return v3

    .line 602
    :cond_2
    const/16 v1, 0x2711

    if-ne v1, p1, :cond_1

    .line 603
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 604
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 605
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 606
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 607
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 608
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 609
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public dtvSystem_LeaveStatusPeer(I)I
    .locals 4
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x0

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Leave Status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 620
    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x3

    if-ne v1, p1, :cond_2

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 622
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 623
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 624
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 625
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 626
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 627
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 640
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    :goto_0
    return v3

    .line 629
    :cond_2
    const/16 v1, 0x2711

    if-ne v1, p1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 631
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 632
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 633
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 634
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 635
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 636
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public dtvSystem_NotifyDialogOpenPeer(Lcom/access/bml_aprofile/TDTVDialogParameter;)I
    .locals 5
    .param p1, "parameter"    # Lcom/access/bml_aprofile/TDTVDialogParameter;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 849
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 850
    .local v0, "message":Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v0, Landroid/os/Message;->what:I

    .line 851
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 852
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 853
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 854
    iget-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 856
    .local v1, "res":Z
    if-nez v1, :cond_0

    .line 857
    const-string v2, "failed to send application message."

    invoke-static {v2}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 861
    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->notifyDialog:Lcom/access/bml_aprofile/NotifyDialog;

    invoke-virtual {v4}, Lcom/access/bml_aprofile/NotifyDialog;->syncShowResult()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public dtvSystem_NotifyDialogOperationPeer(ZLcom/access/bml_aprofile/TDTVDialogParameter;)I
    .locals 2
    .param p1, "abortFlag"    # Z
    .param p2, "outParameter"    # Lcom/access/bml_aprofile/TDTVDialogParameter;

    .prologue
    .line 867
    if-eqz p1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->notifyDialog:Lcom/access/bml_aprofile/NotifyDialog;

    invoke-virtual {v1}, Lcom/access/bml_aprofile/NotifyDialog;->dismiss()V

    .line 869
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->notifyStocker:Lcom/access/bml_aprofile/NotifyStocker;

    invoke-virtual {v1}, Lcom/access/bml_aprofile/NotifyStocker;->clear()V

    .line 870
    const/4 v1, -0x1

    .line 886
    :goto_0
    return v1

    .line 873
    :cond_0
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->notifyStocker:Lcom/access/bml_aprofile/NotifyStocker;

    invoke-virtual {v1}, Lcom/access/bml_aprofile/NotifyStocker;->pollResult()Lcom/access/bml_aprofile/TDTVDialogParameter;

    move-result-object v0

    .line 876
    .local v0, "parameter":Lcom/access/bml_aprofile/TDTVDialogParameter;
    if-nez v0, :cond_1

    .line 877
    const/16 v1, -0x9

    goto :goto_0

    .line 881
    :cond_1
    iget v1, v0, Lcom/access/bml_aprofile/TDTVDialogParameter;->err_code:I

    iput v1, p2, Lcom/access/bml_aprofile/TDTVDialogParameter;->err_code:I

    .line 882
    iget v1, v0, Lcom/access/bml_aprofile/TDTVDialogParameter;->err_subcode:I

    iput v1, p2, Lcom/access/bml_aprofile/TDTVDialogParameter;->err_subcode:I

    .line 883
    iget-object v1, v0, Lcom/access/bml_aprofile/TDTVDialogParameter;->msg1:Ljava/lang/String;

    iput-object v1, p2, Lcom/access/bml_aprofile/TDTVDialogParameter;->msg1:Ljava/lang/String;

    .line 884
    iget-object v1, v0, Lcom/access/bml_aprofile/TDTVDialogParameter;->msg2:Ljava/lang/String;

    iput-object v1, p2, Lcom/access/bml_aprofile/TDTVDialogParameter;->msg2:Ljava/lang/String;

    .line 885
    iget v1, v0, Lcom/access/bml_aprofile/TDTVDialogParameter;->result:I

    iput v1, p2, Lcom/access/bml_aprofile/TDTVDialogParameter;->result:I

    .line 886
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dtvSystem_NotifyErrorPeer(I)I
    .locals 4
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x0

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notify Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 656
    const/4 v1, -0x1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 657
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 658
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 659
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 660
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 661
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 664
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return v3
.end method

.method public dtvVideoStream_UpdatePeer(ILandroid/graphics/Rect;II)I
    .locals 9
    .param p1, "status"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "component"    # I
    .param p4, "mime"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 689
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dtvVideoStream_UpdatePeer status= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/access/bml_aprofile/DTVUtil;->logD(Ljava/lang/String;)V

    .line 691
    if-eq v6, p1, :cond_1

    if-eqz p1, :cond_1

    .line 692
    const/4 v3, -0x3

    .line 734
    :cond_0
    :goto_0
    return v3

    .line 695
    :cond_1
    const/4 v0, 0x0

    .line 696
    .local v0, "backToTV":Z
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 697
    .local v1, "message":Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 698
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 701
    iget v4, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatus:I

    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 703
    if-ne v6, p1, :cond_5

    .line 704
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 707
    iget v4, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatusPrev:I

    if-eq v4, v7, :cond_2

    iget v4, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatusPrev:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 708
    :cond_2
    iget v4, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatus:I

    if-eq v4, v6, :cond_3

    iget v4, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatus:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 709
    :cond_3
    const/4 v0, 0x1

    .line 718
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    if-eqz v4, :cond_6

    .line 719
    iget-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 721
    if-eqz v0, :cond_0

    .line 723
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 724
    .local v2, "message1":Landroid/os/Message;
    const/16 v4, 0xb

    iput v4, v2, Landroid/os/Message;->what:I

    .line 725
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 726
    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 727
    iput-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 728
    iget-object v4, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 713
    .end local v2    # "message1":Landroid/os/Message;
    :cond_5
    if-nez p1, :cond_4

    .line 715
    iput-object v8, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 733
    :cond_6
    const-string v3, "failed to send application message."

    invoke-static {v3}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 734
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public endSystem()Z
    .locals 2

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_endSystem()I

    move-result v0

    .line 421
    .local v0, "result":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 325
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->notifyDialog:Lcom/access/bml_aprofile/NotifyDialog;

    invoke-virtual {v1}, Lcom/access/bml_aprofile/NotifyDialog;->dismiss()V

    .line 326
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->keyboardInputDialog:Lcom/access/bml_aprofile/KeyboardInputDialog;

    invoke-virtual {v1}, Lcom/access/bml_aprofile/KeyboardInputDialog;->dismiss()V

    .line 328
    iget-boolean v1, p0, Lcom/access/bml_aprofile/TVSystem;->isStartedTvsystem:Z

    if-eqz v1, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/access/bml_aprofile/TVSystem;->endSystem()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    const-string v1, "Failed to stop TVSystem."

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logE(Ljava/lang/String;)V

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/access/bml_aprofile/TVSystem;->finalizeSystem()V

    .line 339
    :goto_0
    invoke-direct {p0}, Lcom/access/bml_aprofile/TVSystem;->audioFinalize()V

    .line 340
    iput-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->bmlPlane:Landroid/view/SurfaceView;

    .line 341
    iput-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->videoPlane:Landroid/view/SurfaceView;

    .line 342
    iput-boolean v2, p0, Lcom/access/bml_aprofile/TVSystem;->isStartedTvsystem:Z

    .line 343
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->notifyDialog:Lcom/access/bml_aprofile/NotifyDialog;

    invoke-virtual {v1}, Lcom/access/bml_aprofile/NotifyDialog;->finalize()V

    .line 344
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->keyboardInputDialog:Lcom/access/bml_aprofile/KeyboardInputDialog;

    invoke-virtual {v1}, Lcom/access/bml_aprofile/KeyboardInputDialog;->finalize()V

    .line 346
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    :cond_1
    iput-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->monitor:Lcom/access/bml_aprofile/TVSystem$NetworkMonitor;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_1
    iput-object v3, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    .line 361
    const-string v1, "TVSystem finalized."

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logD(Ljava/lang/String;)V

    .line 362
    return-void

    .line 336
    :cond_2
    const-string v1, "tvSystem is not started yet."

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "TVSystem"

    const-string v2, "IllegalArgumentException - unregisterReceiver(monitor)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public finalizeSystem()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_finalizeSystem()V

    .line 427
    return-void
.end method

.method public getKeyboardAvailable()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/access/bml_aprofile/TVSystem;->keyboardAvailable:Z

    return v0
.end method

.method public getVideoStatus()I
    .locals 1

    .prologue
    .line 798
    iget v0, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatus:I

    return v0
.end method

.method public initializeSystem(Lcom/access/bml_aprofile/TVSystemInterface;)Z
    .locals 2
    .param p1, "tvSystemInterface"    # Lcom/access/bml_aprofile/TVSystemInterface;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_initializeSystem(Lcom/access/bml_aprofile/TVSystemInterface;)I

    move-result v0

    .line 406
    .local v0, "result":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public returnToMain()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 550
    invoke-direct {p0}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_returnToMain()V

    .line 551
    iget v0, p0, Lcom/access/bml_aprofile/TVSystem;->bmlStartMode:I

    if-ne v0, v2, :cond_1

    .line 552
    iput-boolean v1, p0, Lcom/access/bml_aprofile/TVSystem;->isInvisible:Z

    .line 553
    invoke-direct {p0, v2}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_AddVisibilityChangedEvent(I)V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget v0, p0, Lcom/access/bml_aprofile/TVSystem;->bmlStartMode:I

    if-ne v0, v1, :cond_0

    .line 555
    const/4 v0, 0x3

    iput v0, p0, Lcom/access/bml_aprofile/TVSystem;->bmlStartMode:I

    goto :goto_0
.end method

.method public setActivityHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/access/bml_aprofile/TVSystem;->activityHandler:Landroid/os/Handler;

    .line 586
    return-void
.end method

.method public setChannel(I)I
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    const/4 v0, 0x0

    .line 527
    iput v0, p0, Lcom/access/bml_aprofile/TVSystem;->bmlStartMode:I

    .line 528
    iput-boolean v0, p0, Lcom/access/bml_aprofile/TVSystem;->isInvisible:Z

    .line 529
    iput v0, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatus:I

    .line 530
    iput v0, p0, Lcom/access/bml_aprofile/TVSystem;->videoStatusPrev:I

    .line 532
    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_setChannel(I)I

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    .line 366
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->notifyDialog:Lcom/access/bml_aprofile/NotifyDialog;

    invoke-virtual {v0, p1}, Lcom/access/bml_aprofile/NotifyDialog;->setContext(Landroid/content/Context;)V

    .line 367
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->keyboardInputDialog:Lcom/access/bml_aprofile/KeyboardInputDialog;

    invoke-virtual {v0, p1}, Lcom/access/bml_aprofile/KeyboardInputDialog;->setContext(Landroid/content/Context;)V

    .line 368
    return-void
.end method

.method public setFont(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 564
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 567
    :cond_1
    iput-object p1, p0, Lcom/access/bml_aprofile/TVSystem;->fontFile:Ljava/lang/String;

    .line 568
    return-void
.end method

.method public setStream(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 466
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 469
    :cond_1
    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_setStream(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 477
    const/4 v1, 0x0

    .line 481
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 471
    .end local v1    # "ret":Z
    :pswitch_0
    const/4 v1, 0x1

    .line 472
    .restart local v1    # "ret":Z
    goto :goto_0

    .line 474
    .end local v1    # "ret":Z
    :pswitch_1
    const/4 v1, 0x0

    .line 475
    .restart local v1    # "ret":Z
    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setURI(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 537
    invoke-direct {p0, p1}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_setURI(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 543
    :goto_0
    :pswitch_0
    return v0

    .line 539
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setZipCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "zipcode"    # Ljava/lang/String;

    .prologue
    .line 573
    if-nez p1, :cond_0

    .line 579
    :goto_0
    return-void

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setZipCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_setZipCode([B)V

    goto :goto_0
.end method

.method public startSystem(Landroid/view/Surface;)Z
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 411
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 412
    .local v0, "filesDir":Ljava/io/File;
    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem;->fontFile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/access/bml_aprofile/TVSystem;->TvsystemAPI_startSystem(Landroid/view/Surface;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 414
    .local v1, "result":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public videoPlaneCreated(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem;->videoPlane:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 293
    const-string v0, "videoPlane will be added to TVSystem."

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 294
    iput-object p1, p0, Lcom/access/bml_aprofile/TVSystem;->videoPlane:Landroid/view/SurfaceView;

    .line 295
    invoke-direct {p0}, Lcom/access/bml_aprofile/TVSystem;->tryStartSystem()V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    const-string v0, "videoPlane was already added to TVSystem."

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    goto :goto_0
.end method
