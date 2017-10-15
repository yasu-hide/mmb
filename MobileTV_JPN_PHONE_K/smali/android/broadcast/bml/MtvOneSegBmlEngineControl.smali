.class public Landroid/broadcast/bml/MtvOneSegBmlEngineControl;
.super Ljava/lang/Object;
.source "MtvOneSegBmlEngineControl.java"

# interfaces
.implements Landroid/broadcast/bml/IMtvNativeBmlEngineListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvOneSegBmlEngineControl"

.field private static mBmlEngInf:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

.field private static mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

.field private static mContext:Landroid/content/Context;

.field private static mOneSegBmlEngineListener:Landroid/broadcast/IMtvOneSegBmlEngineListener;

.field private static mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;


# instance fields
.field private isBMLEngineCreated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngInf:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    .line 31
    sput-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    .line 32
    sput-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mContext:Landroid/content/Context;

    .line 33
    sput-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOneSegBmlEngineListener:Landroid/broadcast/IMtvOneSegBmlEngineListener;

    .line 34
    sput-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->isBMLEngineCreated:Z

    .line 45
    return-void
.end method

.method public static convertDpToPixel(FLandroid/content/Context;)I
    .locals 4
    .param p0, "dp"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 206
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 207
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, p0

    float-to-int v2, v2

    return v2
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/broadcast/bml/MtvOneSegBmlEngineControl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 59
    :cond_0
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngInf:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    invoke-direct {v0}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;-><init>()V

    sput-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngInf:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    .line 64
    :cond_1
    sput-object p0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mContext:Landroid/content/Context;

    .line 65
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngInf:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    goto :goto_0
.end method


# virtual methods
.method public DeleteAllAffililiationAreas()Z
    .locals 1

    .prologue
    .line 426
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_DTVNVRAMDB_DeleteAllAffiliationAreas()Z

    move-result v0

    return v0
.end method

.method public DeleteAllTvLink()Z
    .locals 1

    .prologue
    .line 416
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_DTVNVRAMDB_DeleteAllCproBMInfo()Z

    move-result v0

    return v0
.end method

.method public DeleteBroadCasterArea(II)Z
    .locals 1
    .param p1, "in_affiliationID"    # I
    .param p2, "in_originalNetworkID"    # I

    .prologue
    .line 431
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0, p1, p2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_DTVNVRAMDB_DeleteBroadcasterArea(II)Z

    move-result v0

    return v0
.end method

.method public DeleteTvLink(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 421
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0, p1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_DTVNVRAMDB_DeleteCproBMInfo(I)Z

    move-result v0

    return v0
.end method

.method public close(I)V
    .locals 3
    .param p1, "halt_status"    # I

    .prologue
    const/4 v2, 0x0

    .line 178
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_GetHaltStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 180
    const-string v0, "MtvOneSegBmlEngineControl"

    const-string v1, "close: BML engine request halt"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0, p1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_RequestHalt(I)Z

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v0, "MtvOneSegBmlEngineControl"

    const-string v1, "close: BML engine already halted.."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    invoke-static {v2, v2, v2, v0}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public closeTVLink(I)Z
    .locals 4
    .param p1, "halt_status"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 257
    const-string v0, "MtvOneSegBmlEngineControl"

    const-string v1, "closeTVLink: entered "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_GetHaltStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 261
    const-string v0, "MtvOneSegBmlEngineControl"

    const-string v1, "closeTVLink: closing TV LINK"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0, v3}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_RequestHalt(I)Z

    .line 269
    :goto_0
    return v3

    .line 266
    :cond_0
    const-string v0, "MtvOneSegBmlEngineControl"

    const-string v1, "closeTVLink: BML engine already halted "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const v0, 0x8001

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public create()Z
    .locals 4

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "result":Z
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->getInstance(Landroid/content/Context;)Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    move-result-object v1

    sput-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    .line 97
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-nez v1, :cond_0

    .line 99
    const/4 v1, 0x0

    .line 116
    :goto_0
    return v1

    .line 102
    :cond_0
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v1, p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->attachEngineListener(Landroid/broadcast/bml/IMtvNativeBmlEngineListener;)V

    .line 103
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->init()Z

    move-result v0

    .line 105
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    sput-boolean v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BMLEngineInitStatus:Z

    .line 106
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_GetHaltStatus()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 108
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_RequestHalt(I)Z

    .line 114
    :goto_1
    iput-boolean v0, p0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->isBMLEngineCreated:Z

    .line 115
    const-string v1, "MtvOneSegBmlEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create: BML_Initialize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 116
    goto :goto_0

    .line 111
    :cond_1
    const-string v1, "MtvOneSegBmlEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create: BML already Halted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 144
    const-string v0, "MtvOneSegBmlEngineControl"

    const-string v1, "close: BML_RestoreEngine"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-boolean v3, p0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->isBMLEngineCreated:Z

    .line 146
    sput-object v2, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngInf:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    .line 147
    sput-object v2, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mContext:Landroid/content/Context;

    .line 148
    sput-object v2, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOneSegBmlEngineListener:Landroid/broadcast/IMtvOneSegBmlEngineListener;

    .line 150
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0, p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->dettachEngineListener(Landroid/broadcast/bml/IMtvNativeBmlEngineListener;)V

    .line 153
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_RestoreEngine()V

    .line 154
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_Finalize()V

    .line 155
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    sput-boolean v3, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BMLEngineInitStatus:Z

    .line 156
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_StandardFinalize()V

    .line 157
    sput-object v2, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    .line 159
    :cond_0
    return-void
.end method

.method public getHaltStatus()Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_GetHaltStatus()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 330
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_HALT_NONE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 336
    :goto_0
    return-object v0

    .line 285
    :sswitch_0
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_TUNEDBYKERNEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    goto :goto_0

    .line 290
    :sswitch_1
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_QUIT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    goto :goto_0

    .line 295
    :sswitch_2
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_EMPTY_CAROUSEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    goto :goto_0

    .line 300
    :sswitch_3
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_ERROR:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    goto :goto_0

    .line 305
    :sswitch_4
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_HALT_APPBYKERNEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    goto :goto_0

    .line 310
    :sswitch_5
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_CRITICAL_ABORT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    goto :goto_0

    .line 315
    :sswitch_6
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_DORMANT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    goto :goto_0

    .line 320
    :sswitch_7
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_USER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    goto :goto_0

    .line 325
    :sswitch_8
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_HALT_NONE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    goto :goto_0

    .line 336
    :cond_0
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_HALT_NONE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    goto :goto_0

    .line 281
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method public init()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "result":Z
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v1, :cond_0

    .line 127
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_StandardInitialize()Z

    move-result v0

    .line 128
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v1, v2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_Initialize(I)Z

    move-result v0

    .line 129
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v1, v2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_CustomizeEngine(I)Z

    move-result v0

    .line 130
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_MainRun()Z

    move-result v0

    .line 131
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    sget-object v2, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_WindowNew()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->setBmlWidth(I)V

    .line 132
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    sget-object v2, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->getBmlWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_SetBrowserWindow(I)V

    .line 135
    :cond_0
    return v0
.end method

.method public isBMLEngineCreated()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->isBMLEngineCreated:Z

    return v0
.end method

.method public onBmlEngineStateChange(IIILjava/lang/Object;)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 358
    sget-object v7, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_HALT_NONE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 360
    .local v7, "newState":Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;
    packed-switch p1, :pswitch_data_0

    .line 404
    :pswitch_0
    sget-object v7, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_HALT_NONE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 409
    :goto_0
    invoke-static {p1, p2, p3, p4}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 410
    return-void

    .line 364
    :pswitch_1
    sget-object v7, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_HALT_PEER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 365
    const p1, 0x8001

    .line 367
    goto :goto_0

    .line 371
    :pswitch_2
    sget-object v7, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_HALT_APPBYKERNEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 372
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget v1, v1, Landroid/broadcast/helper/types/MtvOneSegTVLink;->origNWID:I

    sget-object v2, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget v2, v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;->transStreamID:I

    sget-object v3, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget v3, v3, Landroid/broadcast/helper/types/MtvOneSegTVLink;->servID:I

    sget-object v4, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget v4, v4, Landroid/broadcast/helper/types/MtvOneSegTVLink;->compTag:I

    sget-object v5, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget-object v5, v5, Landroid/broadcast/helper/types/MtvOneSegTVLink;->destURI:Ljava/lang/String;

    sget-object v6, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget-object v6, v6, Landroid/broadcast/helper/types/MtvOneSegTVLink;->affilID:[I

    invoke-virtual/range {v0 .. v6}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_DTV_EVENT_SERVICECHANGED_BY_BOOKMARK(IIIILjava/lang/String;[I)Z

    .line 374
    const-string v0, "MtvOneSegBmlEngineControl"

    const-string v1, "onBmlEngineStateChange: MTV_STAT_BML_HALT_APPBYKERNEL"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :pswitch_3
    sget-object v7, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_QUIT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 382
    goto :goto_0

    .line 386
    :pswitch_4
    sget-object v7, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_APPLICATION:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 388
    goto :goto_0

    .line 392
    :pswitch_5
    sget-object v7, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_ERROR:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 394
    goto :goto_0

    .line 398
    :pswitch_6
    sget-object v7, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_CRITICAL_ABORT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 400
    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public open()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 192
    const-string v1, "MtvOneSegBmlEngineControl"

    const-string v2, "open: entered "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "isOpened":Z
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->getInstance(Landroid/content/Context;)Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    move-result-object v1

    sput-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    .line 195
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v1, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 198
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    sget-object v2, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->getBmlViewScreenWidth()I

    move-result v2

    sget-object v3, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v3}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->getBmlViewScreenHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_SetRect(IIFF)V

    .line 199
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    const/high16 v2, 0x43700000    # 240.0f

    sget-object v3, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->convertDpToPixel(FLandroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x44200000    # 640.0f

    sget-object v4, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->convertDpToPixel(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_SetResolution(II)V

    .line 201
    :cond_0
    return v0
.end method

.method public openTvLink(Landroid/broadcast/helper/types/MtvOneSegTVLink;)Z
    .locals 8
    .param p1, "tvlinkURI"    # Landroid/broadcast/helper/types/MtvOneSegTVLink;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 222
    const/4 v7, 0x0

    .line 224
    .local v7, "bOpenTVLink":Z
    const-string v0, "MtvOneSegBmlEngineControl"

    const-string v1, "openTvLink: entered"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->getInstance(Landroid/content/Context;)Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    move-result-object v0

    sput-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    .line 227
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 229
    sput-object p1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    .line 231
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_GetHaltStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 233
    const-string v0, "MtvOneSegBmlEngineControl"

    const-string v1, "openTvLink: change BML service to TVLINKS"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0, v3}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_RequestHalt(I)Z

    .line 235
    const/4 v7, 0x1

    .line 251
    :goto_0
    return v7

    .line 239
    :cond_0
    const-string v0, "MtvOneSegBmlEngineControl"

    const-string v1, "openTvLink: BML already halted open TVLINKS"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget v1, v1, Landroid/broadcast/helper/types/MtvOneSegTVLink;->origNWID:I

    sget-object v2, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget v2, v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;->transStreamID:I

    sget-object v3, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget v3, v3, Landroid/broadcast/helper/types/MtvOneSegTVLink;->servID:I

    sget-object v4, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget v4, v4, Landroid/broadcast/helper/types/MtvOneSegTVLink;->compTag:I

    sget-object v5, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget-object v5, v5, Landroid/broadcast/helper/types/MtvOneSegTVLink;->destURI:Ljava/lang/String;

    sget-object v6, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOnesegTvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget-object v6, v6, Landroid/broadcast/helper/types/MtvOneSegTVLink;->affilID:[I

    invoke-virtual/range {v0 .. v6}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_DTV_EVENT_SERVICECHANGED_BY_BOOKMARK(IIIILjava/lang/String;[I)Z

    move-result v7

    goto :goto_0

    .line 246
    :cond_1
    const/4 v0, 0x0

    invoke-static {v3, v2, v2, v0}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 247
    const-string v0, "MtvOneSegBmlEngineControl"

    const-string v1, "openTvLink: Cannt open TVLINK"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerListener(Landroid/broadcast/IMtvOneSegBmlEngineListener;)V
    .locals 0
    .param p1, "mListener"    # Landroid/broadcast/IMtvOneSegBmlEngineListener;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    sput-object p1, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->mOneSegBmlEngineListener:Landroid/broadcast/IMtvOneSegBmlEngineListener;

    goto :goto_0
.end method
