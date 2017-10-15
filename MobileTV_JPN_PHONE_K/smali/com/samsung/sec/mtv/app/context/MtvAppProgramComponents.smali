.class public Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;
.super Ljava/lang/Object;
.source "MtvAppProgramComponents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;,
        Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;,
        Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;,
        Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;,
        Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;
    }
.end annotation


# static fields
.field public static final PRG_COMP_ALL:I = 0xf

.field public static final PRG_COMP_AUDIO:I = 0x1

.field public static final PRG_COMP_BML:I = 0x8

.field public static final PRG_COMP_CAPTION:I = 0x4

.field public static final PRG_COMP_NONE:I = 0x0

.field public static final PRG_COMP_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MtvAppProgramComponents"


# instance fields
.field private audio:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

.field private availableComp:I

.field private bml:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

.field private caption:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;

.field private file:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;

.field private video:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->audio:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    .line 60
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->video:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    .line 61
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->caption:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;

    .line 62
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->bml:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    .line 63
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->file:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->availableComp:I

    .line 65
    return-void
.end method


# virtual methods
.method public addComponent(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->availableComp:I

    .line 124
    .local v0, "currentComps":I
    iget v1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->availableComp:I

    and-int/lit8 v2, p1, 0xf

    or-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->availableComp:I

    .line 127
    and-int/lit8 v1, p1, 0xf

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "MtvAppProgramComponents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COMPONENT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ALREADY EXISTS!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->audio:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    return-object v0
.end method

.method public getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->bml:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    return-object v0
.end method

.method public getCaption()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->caption:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;

    return-object v0
.end method

.method public getFile()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->file:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;

    return-object v0
.end method

.method public getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->video:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    return-object v0
.end method

.method public hasValidAudio()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 149
    iget v1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->availableComp:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValidBml()Z
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->availableComp:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValidCaption()Z
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->availableComp:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValidVideo()Z
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->availableComp:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeComponent(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 138
    iget v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->availableComp:I

    and-int/lit8 v1, p1, 0xf

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->availableComp:I

    .line 140
    iget v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->availableComp:I

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->reset()V

    .line 143
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->availableComp:I

    .line 70
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->audio:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->reset()V

    .line 71
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->video:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->reset()V

    .line 72
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->caption:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->reset()V

    .line 73
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->bml:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->reset()V

    .line 74
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->file:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;->reset()V

    .line 82
    return-void
.end method
