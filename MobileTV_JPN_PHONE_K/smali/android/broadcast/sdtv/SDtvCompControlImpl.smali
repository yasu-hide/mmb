.class public Landroid/broadcast/sdtv/SDtvCompControlImpl;
.super Ljava/lang/Object;
.source "SDtvCompControlImpl.java"

# interfaces
.implements Landroid/broadcast/IMtvOneSegAudioControl;
.implements Landroid/broadcast/IMtvOneSegVideoControl;
.implements Landroid/broadcast/IMtvOneSegCaptionControl;
.implements Landroid/broadcast/IMtvOneSegFileControl;


# static fields
.field public static final DEFAULT_SCREEN_HEIGHT:I = 0xf0

.field public static final DEFAULT_SCREEN_WIDTH:I = 0x140

.field private static final TAG:Ljava/lang/String; = "SDtvCompControlImpl"

.field private static isAudioEnable:Z

.field private static isCaptEnable:Z

.field private static isVideoEnable:Z

.field private static mCompControl:Landroid/broadcast/sdtv/SDtvCompControlImpl;

.field private static volatile mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    sput-object v1, Landroid/broadcast/sdtv/SDtvCompControlImpl;->mCompControl:Landroid/broadcast/sdtv/SDtvCompControlImpl;

    .line 39
    sput-boolean v0, Landroid/broadcast/sdtv/SDtvCompControlImpl;->isAudioEnable:Z

    .line 40
    sput-boolean v0, Landroid/broadcast/sdtv/SDtvCompControlImpl;->isVideoEnable:Z

    .line 41
    sput-boolean v0, Landroid/broadcast/sdtv/SDtvCompControlImpl;->isCaptEnable:Z

    .line 42
    sput-object v1, Landroid/broadcast/sdtv/SDtvCompControlImpl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 49
    const-string v0, "broadcastForOneSeg_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "Successfully Instantiated Constrcutor"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private getAudioEnable()Z
    .locals 3

    .prologue
    .line 73
    const-string v0, "SDtvCompControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/broadcast/sdtv/SDtvCompControlImpl;->isAudioEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-boolean v0, Landroid/broadcast/sdtv/SDtvCompControlImpl;->isAudioEnable:Z

    return v0
.end method

.method private getCaptEnable()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Landroid/broadcast/sdtv/SDtvCompControlImpl;->isCaptEnable:Z

    return v0
.end method

.method public static getCompControl()Landroid/broadcast/sdtv/SDtvCompControlImpl;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/broadcast/sdtv/SDtvCompControlImpl;->mCompControl:Landroid/broadcast/sdtv/SDtvCompControlImpl;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/broadcast/sdtv/SDtvCompControlImpl;

    invoke-direct {v0}, Landroid/broadcast/sdtv/SDtvCompControlImpl;-><init>()V

    sput-object v0, Landroid/broadcast/sdtv/SDtvCompControlImpl;->mCompControl:Landroid/broadcast/sdtv/SDtvCompControlImpl;

    .line 69
    :cond_0
    sget-object v0, Landroid/broadcast/sdtv/SDtvCompControlImpl;->mCompControl:Landroid/broadcast/sdtv/SDtvCompControlImpl;

    return-object v0
.end method

.method private getVideoEnable()Z
    .locals 3

    .prologue
    .line 83
    const-string v0, "SDtvCompControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/broadcast/sdtv/SDtvCompControlImpl;->isVideoEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-boolean v0, Landroid/broadcast/sdtv/SDtvCompControlImpl;->isVideoEnable:Z

    return v0
.end method

.method private setAudioEnable(Z)V
    .locals 3
    .param p1, "isSet"    # Z

    .prologue
    .line 78
    const-string v0, "SDtvCompControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Audio with["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sput-boolean p1, Landroid/broadcast/sdtv/SDtvCompControlImpl;->isAudioEnable:Z

    .line 80
    return-void
.end method

.method private setCaptEnable(Z)V
    .locals 0
    .param p1, "isSet"    # Z

    .prologue
    .line 97
    sput-boolean p1, Landroid/broadcast/sdtv/SDtvCompControlImpl;->isCaptEnable:Z

    .line 98
    return-void
.end method

.method private setOrientation(I)Z
    .locals 1
    .param p1, "orientationChange"    # I

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 316
    .local v0, "bOrientation":Z
    return v0
.end method

.method private setSurface(Landroid/view/SurfaceHolder;II)Z
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "bSetSurf":Z
    const-string v1, "SDtvCompControlImpl"

    const-string v2, "Entered setSurface() "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v1, Landroid/broadcast/sdtv/SDtvCompControlImpl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eq v1, p1, :cond_0

    .line 296
    const-string v1, "SDtvCompControlImpl"

    const-string v2, "Different Surface Holder passed ! "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v3}, Landroid/broadcast/sdtv/SDtvControl;->SDtvSetDisplay(Landroid/view/SurfaceHolder;II)V

    .line 305
    :goto_0
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/broadcast/sdtv/SDtvControl;->SDtvSetDisplay(Landroid/view/SurfaceHolder;II)V

    .line 306
    sput-object p1, Landroid/broadcast/sdtv/SDtvCompControlImpl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 307
    const/4 v0, 0x1

    .line 309
    const-string v1, "SDtvCompControlImpl"

    const-string v2, "Exiting setSurface() "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return v0

    .line 301
    :cond_0
    const-string v1, "SDtvCompControlImpl"

    const-string v2, "Same Surface Holder passed ! Resetting "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v3}, Landroid/broadcast/sdtv/SDtvControl;->SDtvSetDisplay(Landroid/view/SurfaceHolder;II)V

    goto :goto_0
.end method

.method private setVideoEnable(Z)V
    .locals 3
    .param p1, "isSet"    # Z

    .prologue
    .line 88
    const-string v0, "SDtvCompControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Video with["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sput-boolean p1, Landroid/broadcast/sdtv/SDtvCompControlImpl;->isVideoEnable:Z

    .line 90
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public create()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 101
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "Entered create() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v2}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setAudioEnable(Z)V

    .line 103
    invoke-direct {p0, v2}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setVideoEnable(Z)V

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setCaptEnable(Z)V

    .line 105
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "Exiting create() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return v2
.end method

.method public delete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "Entered delete() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, v2}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setAudioEnable(Z)V

    .line 113
    invoke-direct {p0, v2}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setVideoEnable(Z)V

    .line 114
    invoke-direct {p0, v2}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setCaptEnable(Z)V

    .line 115
    const/4 v0, 0x0

    sput-object v0, Landroid/broadcast/sdtv/SDtvCompControlImpl;->mCompControl:Landroid/broadcast/sdtv/SDtvCompControlImpl;

    .line 116
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "Exiting delete() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public disableAudio()Z
    .locals 2

    .prologue
    .line 131
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "disabling audio"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setAudioEnable(Z)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public disableCaption()Z
    .locals 2

    .prologue
    .line 328
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "Disbaling Captions"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setCaptEnable(Z)V

    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public disableVideo()Z
    .locals 2

    .prologue
    .line 226
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "Disabling Video"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setVideoEnable(Z)V

    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public enableAudio()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 124
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "Enabling Audio"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, v2}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setAudioEnable(Z)V

    .line 126
    return v2
.end method

.method public enableCaption()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 321
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "Enabling Captions"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0, v2}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setCaptEnable(Z)V

    .line 323
    return v2
.end method

.method public enableVideo()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 219
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "Enabling Video"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, v2}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setVideoEnable(Z)V

    .line 221
    return v2
.end method

.method public getAudioSessionId()I
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getAudioEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "setAudioMode"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/broadcast/sdtv/SDtvControl;->getAudioSessionId()I

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public muteAudio()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, "bMute":Z
    invoke-direct {p0}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getAudioEnable()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 141
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "SDtvCompControlImpl"

    const-string v2, "Muting Audio"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/broadcast/sdtv/SDtvControl;->setAudioEnable(I)V

    .line 144
    const/4 v0, 0x1

    .line 147
    :cond_0
    return v0
.end method

.method public registerSubSurface(Landroid/view/SurfaceView;)Z
    .locals 1
    .param p1, "subView"    # Landroid/view/SurfaceView;

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized registerSurface(Landroid/view/SurfaceView;)Z
    .locals 4
    .param p1, "surView"    # Landroid/view/SurfaceView;

    .prologue
    .line 239
    monitor-enter p0

    const/4 v0, 0x0

    .line 241
    .local v0, "bregSV":Z
    if-eqz p1, :cond_0

    :try_start_0
    sget-boolean v2, Landroid/broadcast/sdtv/SDtvCompControlImpl;->isVideoEnable:Z

    if-eqz v2, :cond_0

    .line 242
    const-string v2, "SDtvCompControlImpl"

    const-string v3, "Video is enabled - Getting Surface View "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 245
    .local v1, "mSurfaceHolder":Landroid/view/SurfaceHolder;
    if-eqz v1, :cond_0

    .line 246
    const-string v2, "SDtvCompControlImpl"

    const-string v3, "Got Surface holder"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/16 v2, 0x140

    const/16 v3, 0xf0

    invoke-direct {p0, v1, v2, v3}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setSurface(Landroid/view/SurfaceHolder;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 250
    .end local v1    # "mSurfaceHolder":Landroid/view/SurfaceHolder;
    :cond_0
    monitor-exit p0

    return v0

    .line 239
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public renameTVFile(ILjava/lang/String;)Z
    .locals 4
    .param p1, "fileIndex"    # I
    .param p2, "renameString"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "bRename":Z
    const-string v1, "SDtvCompControlImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " renameTVFile renameString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/broadcast/sdtv/SDtvControl;->renameTVFile(ILjava/lang/String;)Z

    move-result v0

    .line 338
    return v0
.end method

.method public setAudioMode(I)Z
    .locals 3
    .param p1, "audioMode"    # I

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "bsetMode":Z
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    .line 169
    invoke-direct {p0}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getAudioEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 170
    const-string v1, "SDtvCompControlImpl"

    const-string v2, "setAudioMode"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/broadcast/sdtv/SDtvControl;->setAudioMode(I)V

    .line 173
    const/4 v0, 0x1

    .line 177
    :cond_0
    return v0
.end method

.method public setFrameRateChange(I)Z
    .locals 3
    .param p1, "fMode"    # I

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 257
    .local v0, "bFrameRate":Z
    invoke-direct {p0}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getVideoEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 258
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/broadcast/sdtv/SDtvControl;->setFrameRateChange(I)V

    .line 260
    const/4 v0, 0x1

    .line 263
    :cond_0
    return v0
.end method

.method public setRendererCreate(I)Z
    .locals 3
    .param p1, "oriChange"    # I

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 270
    .local v0, "bFrameRate":Z
    invoke-direct {p0}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getVideoEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 271
    invoke-direct {p0, p1}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setOrientation(I)Z

    move-result v0

    .line 273
    :cond_0
    return v0
.end method

.method public setSoundEffect(II)Z
    .locals 4
    .param p1, "outType"    # I
    .param p2, "audioEffect"    # I

    .prologue
    const/4 v3, 0x1

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "bsetEffect":Z
    const-string v1, "SDtvCompControlImpl"

    const-string v2, "Entered setSoundEffect"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    if-ltz p1, :cond_0

    if-gt p1, v3, :cond_0

    if-ltz p2, :cond_0

    const/4 v1, 0x6

    if-gt p2, v1, :cond_0

    .line 197
    invoke-direct {p0}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getAudioEnable()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 199
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/broadcast/sdtv/SDtvControl;->setSoundEffect(II)V

    .line 200
    const/4 v0, 0x1

    .line 203
    :cond_0
    return v0
.end method

.method public setVolume(I)Z
    .locals 3
    .param p1, "volLevel"    # I

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "bsetVol":Z
    invoke-direct {p0}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getAudioEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 212
    const/4 v0, 0x1

    .line 214
    :cond_0
    return v0
.end method

.method public unmuteAudio()Z
    .locals 3

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "bUnMute":Z
    invoke-direct {p0}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getAudioEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 155
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "SDtvCompControlImpl"

    const-string v2, "UnMuting Audio"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/broadcast/sdtv/SDtvControl;->setAudioEnable(I)V

    .line 158
    const/4 v0, 0x1

    .line 161
    :cond_0
    return v0
.end method

.method public declared-synchronized unregisterSurface(Landroid/view/SurfaceView;)V
    .locals 3
    .param p1, "surView"    # Landroid/view/SurfaceView;

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "Entered unregisterSurface() and setting Surface as null"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v0, Landroid/broadcast/sdtv/SDtvCompControlImpl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 280
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->setSurface(Landroid/view/SurfaceHolder;II)Z

    .line 281
    const/4 v0, 0x0

    sput-object v0, Landroid/broadcast/sdtv/SDtvCompControlImpl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 282
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "Successfully unregistered Surface !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_0
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "Exiting unregisterSurface() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 286
    :cond_0
    :try_start_1
    const-string v0, "SDtvCompControlImpl"

    const-string v1, "Cannot unregister this surface as it is not the currently used surface or it is already unregistered"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
