.class public Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;
.super Ljava/lang/Object;
.source "MtvAppProgramComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtvAppPrgAudioComponent"
.end annotation


# instance fields
.field private iface:Landroid/broadcast/IMtvOneSegAudioControl;

.field private isEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->init()V

    .line 223
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->isEnabled:Z

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->iface:Landroid/broadcast/IMtvOneSegAudioControl;

    .line 216
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->isEnabled:Z

    .line 237
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->iface:Landroid/broadcast/IMtvOneSegAudioControl;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->iface:Landroid/broadcast/IMtvOneSegAudioControl;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegAudioControl;->disableAudio()Z

    .line 239
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->isEnabled:Z

    .line 232
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->iface:Landroid/broadcast/IMtvOneSegAudioControl;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->iface:Landroid/broadcast/IMtvOneSegAudioControl;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegAudioControl;->enableAudio()Z

    .line 234
    :cond_0
    return-void
.end method

.method public getControlInterface()Landroid/broadcast/IMtvOneSegAudioControl;
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->iface:Landroid/broadcast/IMtvOneSegAudioControl;

    .line 252
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->isEnabled:Z

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->init()V

    .line 228
    return-void
.end method

.method public setControlInterface(Landroid/broadcast/IMtvOneSegAudioControl;)V
    .locals 0
    .param p1, "in"    # Landroid/broadcast/IMtvOneSegAudioControl;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->iface:Landroid/broadcast/IMtvOneSegAudioControl;

    .line 247
    return-void
.end method
