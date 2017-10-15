.class public Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;
.super Ljava/lang/Object;
.source "MtvAppPlaybackContextManager.java"


# static fields
.field private static final instance:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;


# instance fields
.field private current:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private local:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private scan:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private tvlink:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->instance:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 29
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->local:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 30
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->tvlink:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 31
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->scan:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 32
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->current:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->instance:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->current:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 2

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LIVETV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;-><init>(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 2

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->local:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;-><init>(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->local:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->local:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v0

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegFactory;->getAudioControl()Landroid/broadcast/IMtvOneSegAudioControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->setControlInterface(Landroid/broadcast/IMtvOneSegAudioControl;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->local:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v0

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegFactory;->getVideoControl()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->setControlInterface(Landroid/broadcast/IMtvOneSegVideoControl;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->local:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScanner()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 2

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->scan:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;-><init>(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->scan:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->scan:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v0

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegFactory;->getAudioControl()Landroid/broadcast/IMtvOneSegAudioControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->setControlInterface(Landroid/broadcast/IMtvOneSegAudioControl;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->scan:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v0

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegFactory;->getVideoControl()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->setControlInterface(Landroid/broadcast/IMtvOneSegVideoControl;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->scan:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTVLink()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->tvlink:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->TVLINK:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;-><init>(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->tvlink:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->tvlink:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeLiveTV()V
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->reset()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeLocalTV()V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->local:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->local:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->reset()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->local:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeScanner()V
    .locals 1

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->scan:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->scan:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->reset()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->scan:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_0
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeTVLink()V
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->reset()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_0
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->scan:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->scan:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->reset()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->tvlink:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->tvlink:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->reset()V

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->local:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->local:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->reset()V

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->reset()V

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->current:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->current:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->reset()V

    .line 61
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->local:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->tvlink:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->scan:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->current:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrentContext(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->current:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 210
    .local v1, "tv":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LIVETV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne p1, v2, :cond_1

    .line 211
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->live:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 222
    .local v0, "in":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->current:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 225
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    return-void

    .line 212
    .end local v0    # "in":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :cond_1
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne p1, v2, :cond_2

    .line 213
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->local:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .restart local v0    # "in":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    goto :goto_0

    .line 214
    .end local v0    # "in":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :cond_2
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne p1, v2, :cond_3

    .line 215
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->scan:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .restart local v0    # "in":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    goto :goto_0

    .line 216
    .end local v0    # "in":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :cond_3
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->TVLINK:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne p1, v2, :cond_4

    .line 217
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->tvlink:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .restart local v0    # "in":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    goto :goto_0

    .line 219
    .end local v0    # "in":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "in":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    goto :goto_0

    .line 225
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setCurrentContext(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V
    .locals 2
    .param p1, "in"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->current:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 195
    .local v0, "tv":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->current:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 198
    monitor-exit p0

    .line 200
    :cond_0
    return-void

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
