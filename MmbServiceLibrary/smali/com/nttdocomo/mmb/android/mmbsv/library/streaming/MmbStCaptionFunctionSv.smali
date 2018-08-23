.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;
.super Ljava/lang/Object;
.source "MmbStCaptionFunctionSv.java"


# instance fields
.field private captionHeightSize:I

.field private captionSurface:Landroid/view/Surface;

.field private captionWidthSize:I

.field private mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

.field private superimposeHeightSize:I

.field private superimposeSurface:Landroid/view/Surface;

.field private superimposeWidthSize:I


# direct methods
.method constructor <init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;)V
    .locals 2
    .param p1, "aMwInstance"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 92
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 93
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionSurface:Landroid/view/Surface;

    .line 94
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->superimposeSurface:Landroid/view/Surface;

    .line 95
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionHeightSize:I

    .line 96
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionWidthSize:I

    .line 97
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->superimposeHeightSize:I

    .line 98
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->superimposeWidthSize:I

    .line 102
    return-void
.end method

.method private judgedCaptionSetResult(I)I
    .locals 1
    .param p1, "aResult"    # I

    .prologue
    .line 1021
    const/4 v0, 0x0

    .line 1022
    .local v0, "lRet":I
    sparse-switch p1, :sswitch_data_0

    .line 1040
    const/4 v0, -0x2

    .line 1047
    :goto_0
    :sswitch_0
    return v0

    .line 1024
    :sswitch_1
    const/4 v0, 0x0

    .line 1025
    goto :goto_0

    .line 1027
    :sswitch_2
    const/4 v0, -0x2

    .line 1028
    goto :goto_0

    .line 1030
    :sswitch_3
    const/4 v0, -0x3

    .line 1031
    goto :goto_0

    .line 1034
    :sswitch_4
    const/4 v0, -0x1

    .line 1035
    goto :goto_0

    .line 1022
    :sswitch_data_0
    .sparse-switch
        -0x1101 -> :sswitch_4
        -0x10c1 -> :sswitch_3
        -0x1041 -> :sswitch_2
        -0x1001 -> :sswitch_4
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method private judgedErrorment(II)V
    .locals 3
    .param p1, "aResult"    # I
    .param p2, "aType"    # I

    .prologue
    const/4 v2, 0x0

    .line 910
    const/16 v1, 0x30

    if-ne v1, p2, :cond_0

    .line 911
    const/4 v0, 0x3

    .line 913
    .local v0, "functiontype":I
    sparse-switch p1, :sswitch_data_0

    .line 927
    const-string v1, "MmbStInnerException"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 956
    :goto_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(III)V

    throw v1

    .line 921
    :sswitch_0
    const-string v1, "No need to throw any exception because of caption state error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    :goto_1
    :sswitch_1
    return-void

    .line 931
    .end local v0    # "functiontype":I
    :cond_0
    const/4 v0, 0x4

    .line 933
    .restart local v0    # "functiontype":I
    sparse-switch p1, :sswitch_data_1

    .line 947
    const-string v1, "MmbStInnerException"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 941
    :sswitch_2
    const-string v1, "No need to throw any exception because of super state error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 913
    nop

    :sswitch_data_0
    .sparse-switch
        -0x10c1 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 933
    :sswitch_data_1
    .sparse-switch
        -0x14c1 -> :sswitch_2
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method private startCaption(IZ)V
    .locals 2
    .param p1, "aType"    # I
    .param p2, "aIsStartReq"    # Z

    .prologue
    .line 806
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionReqNotifyNothingFixedTime(IZ)I

    move-result v0

    .line 811
    .local v0, "result":I
    invoke-direct {p0, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 817
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionReqNotifyRestart(IZ)I

    move-result v0

    .line 822
    invoke-direct {p0, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 828
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionReqNotifyRecv(IZ)I

    move-result v0

    .line 833
    invoke-direct {p0, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 838
    return-void
.end method


# virtual methods
.method public captionSetCaptionPlayState(Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;)I
    .locals 3
    .param p1, "aPlayStateSet"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;

    .prologue
    .line 974
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    const/16 v2, 0x30

    invoke-virtual {v1, v2, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionSetPlayState(ILmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;)I

    move-result v0

    .line 976
    .local v0, "lRet":I
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedCaptionSetResult(I)I

    move-result v0

    .line 981
    return v0
.end method

.method public captionSetPlayPositionChange()I
    .locals 3

    .prologue
    .line 998
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionSetPlayPositionChange(I)I

    move-result v0

    .line 999
    .local v0, "lRet":I
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedCaptionSetResult(I)I

    move-result v0

    .line 1003
    return v0
.end method

.method protected endCaption()V
    .locals 4

    .prologue
    const/16 v3, 0x38

    const/16 v2, 0x30

    .line 867
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionEnd(I)I

    move-result v0

    .line 872
    .local v0, "result":I
    invoke-direct {p0, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 878
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionEnd(I)I

    move-result v0

    .line 883
    invoke-direct {p0, v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 888
    return-void
.end method

.method protected endSubtitleCaption()V
    .locals 3

    .prologue
    const/16 v2, 0x30

    .line 756
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionEnd(I)I

    move-result v0

    .line 761
    .local v0, "result":I
    invoke-direct {p0, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 766
    return-void
.end method

.method protected getLanguageCount(I)I
    .locals 2
    .param p1, "aType"    # I

    .prologue
    .line 280
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionGetLangNumSetEnable(I)I

    move-result v0

    .line 286
    .local v0, "result":I
    if-ltz v0, :cond_0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 287
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 293
    :cond_1
    return v0
.end method

.method protected initializeSubtitleCaption(Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;Z)V
    .locals 7
    .param p1, "aStart"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;
    .param p2, "aIsLimitedMode"    # Z
    .param p3, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    .param p4, "aIsStartReq"    # Z

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x30

    .line 661
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->endSubtitleCaption()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionInit()I

    move-result v1

    .line 677
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 678
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    invoke-direct {p0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 688
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2, v5, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionStart(ILmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;Z)I

    move-result v1

    .line 695
    invoke-direct {p0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 700
    return-void

    .line 662
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 664
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "endSubtitleCaption error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected pause(IIZZ)V
    .locals 6
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z
    .param p4, "aPidClear"    # Z

    .prologue
    const/4 v3, 0x1

    .line 491
    if-nez p1, :cond_0

    .line 496
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2, p2, p3, p4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionStopDisp(IZZ)I

    move-result v1

    .line 525
    .local v1, "result":I
    :goto_0
    invoke-direct {p0, v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 530
    return-void

    .line 500
    .end local v1    # "result":I
    :cond_0
    if-ne p1, v3, :cond_1

    .line 505
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionRestartDisp(I)I

    move-result v1

    .restart local v1    # "result":I
    goto :goto_0

    .line 510
    .end local v1    # "result":I
    :cond_1
    const-string v2, "error(%d)"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    const/16 v2, 0x30

    if-ne v2, p2, :cond_2

    .line 514
    const/4 v0, 0x3

    .line 520
    .local v0, "functiontype":I
    :goto_1
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v3, 0x3

    const/16 v4, -0x3e8

    invoke-direct {v2, v3, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(III)V

    throw v2

    .line 516
    .end local v0    # "functiontype":I
    :cond_2
    const/4 v0, 0x4

    .restart local v0    # "functiontype":I
    goto :goto_1
.end method

.method protected setCaptionDisplayAreaInfo(IIII)V
    .locals 0
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 152
    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionHeightSize:I

    .line 153
    iput p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionWidthSize:I

    .line 158
    return-void
.end method

.method protected setCaptionSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "aCaptionSurface"    # Landroid/view/Surface;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionSurface:Landroid/view/Surface;

    .line 127
    return-void
.end method

.method protected setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 8
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    const/4 v7, 0x0

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, "heightsize":S
    const/4 v4, 0x0

    .line 361
    .local v4, "widthsize":S
    const/4 v3, 0x0

    .line 364
    .local v3, "surface":Landroid/view/Surface;
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;

    invoke-direct {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;-><init>()V

    .line 365
    .local v0, "disparea":Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;
    new-instance v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    invoke-direct {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;-><init>()V

    iput-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mBackColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    .line 366
    new-instance v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    invoke-direct {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;-><init>()V

    iput-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mEdgeColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    .line 369
    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    sparse-switch v5, :sswitch_data_0

    .line 383
    const-string v5, "type error"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    :goto_0
    if-nez v3, :cond_0

    .line 389
    const-string v5, "Surface null"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    const/4 v5, 0x0

    iput-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mSurface:Landroid/view/Surface;

    .line 392
    iput-short v7, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mAreaHeightSize:S

    .line 393
    iput-short v7, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mAreaWidthSize:S

    .line 394
    const/16 v5, 0xc04

    iput v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mCharNumLineNum:I

    .line 395
    iput v7, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mAlign:I

    .line 396
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mBackColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iput-short v7, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mAlphaBlending:S

    .line 397
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mBackColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iput-short v7, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mRed:S

    .line 398
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mBackColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iput-short v7, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mGreen:S

    .line 399
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mBackColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iput-short v7, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mBlue:S

    .line 400
    iput-boolean v7, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mIsAntiAliasing:Z

    .line 401
    iput-boolean v7, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mIsEdgeExtend:Z

    .line 402
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mEdgeColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iput-short v7, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mAlphaBlending:S

    .line 403
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mEdgeColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iput-short v7, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mRed:S

    .line 404
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mEdgeColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iput-short v7, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mGreen:S

    .line 405
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mEdgeColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iput-short v7, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mBlue:S

    .line 445
    :goto_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    invoke-virtual {v5, v6, v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionSetDispArea(ILmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;)I

    move-result v2

    .line 451
    .local v2, "result":I
    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    invoke-direct {p0, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 456
    .end local v2    # "result":I
    :goto_2
    return-void

    .line 371
    :sswitch_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionSurface:Landroid/view/Surface;

    .line 372
    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionHeightSize:I

    int-to-short v1, v5

    .line 373
    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionWidthSize:I

    int-to-short v4, v5

    .line 374
    goto :goto_0

    .line 377
    :sswitch_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->superimposeSurface:Landroid/view/Surface;

    .line 378
    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->superimposeHeightSize:I

    int-to-short v1, v5

    .line 379
    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->superimposeWidthSize:I

    int-to-short v4, v5

    .line 380
    goto :goto_0

    .line 408
    :cond_0
    if-lez v1, :cond_1

    if-gtz v4, :cond_2

    .line 409
    :cond_1
    const-string v5, "size param init"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 417
    :cond_2
    iput-object v3, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mSurface:Landroid/view/Surface;

    .line 419
    iput-short v1, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mAreaHeightSize:S

    .line 421
    iput-short v4, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mAreaWidthSize:S

    .line 423
    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbSize:I

    iput v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mCharNumLineNum:I

    .line 425
    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbAlign:I

    iput v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mAlign:I

    .line 427
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mBackColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbBgcolor:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mAlphaBlending:S

    .line 428
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mBackColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbBgcolor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mRed:S

    .line 429
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mBackColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbBgcolor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mGreen:S

    .line 430
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mBackColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbBgcolor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mBlue:S

    .line 432
    iget-boolean v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbAntiAlias:Z

    iput-boolean v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mIsAntiAliasing:Z

    .line 434
    iget-boolean v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbHemEnable:Z

    iput-boolean v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mIsEdgeExtend:Z

    .line 436
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mEdgeColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbHemColor:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mAlphaBlending:S

    .line 437
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mEdgeColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbHemColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mRed:S

    .line 438
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mEdgeColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbHemColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mGreen:S

    .line 439
    iget-object v5, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;->mEdgeColor:Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;

    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbHemColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionColor;->mBlue:S

    goto/16 :goto_1

    .line 369
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x38 -> :sswitch_1
    .end sparse-switch
.end method

.method protected setLanguageIndex(II)V
    .locals 2
    .param p1, "aType"    # I
    .param p2, "aLang"    # I

    .prologue
    .line 323
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionSelectLang(II)I

    move-result v0

    .line 329
    .local v0, "result":I
    invoke-direct {p0, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 334
    return-void
.end method

.method protected setState(IZ)V
    .locals 2
    .param p1, "aType"    # I
    .param p2, "aState"    # Z

    .prologue
    .line 243
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionSetDispOnOff(IZ)I

    move-result v0

    .line 249
    .local v0, "result":I
    invoke-direct {p0, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 254
    return-void
.end method

.method protected setSuperimposeDisplayAreaInfo(IIII)V
    .locals 0
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 207
    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->superimposeHeightSize:I

    .line 208
    iput p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->superimposeWidthSize:I

    .line 213
    return-void
.end method

.method protected setSuperimposeSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "aSuperimposeSurface"    # Landroid/view/Surface;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->superimposeSurface:Landroid/view/Surface;

    .line 183
    return-void
.end method

.method protected startCaption(Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;Z)V
    .locals 9
    .param p1, "aStart"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;
    .param p2, "aIsLimitedMode"    # Z
    .param p3, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    .param p4, "aIsStartReq"    # Z

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x38

    const/16 v6, 0x30

    const/4 v5, 0x1

    .line 569
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->endCaption()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionInit()I

    move-result v1

    .line 586
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 587
    const-string v2, "error(%d)"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    invoke-direct {p0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 597
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2, v6, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionStart(ILmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;Z)I

    move-result v1

    .line 604
    invoke-direct {p0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 607
    iget-byte v2, p1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;->mNotifyNothingTime:B

    if-nez v2, :cond_1

    .line 608
    iput-byte v5, p1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;->mNotifyNothingTime:B

    .line 614
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2, v7, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionStart(ILmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;Z)I

    move-result v1

    .line 621
    invoke-direct {p0, v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->judgedErrorment(II)V

    .line 624
    invoke-direct {p0, v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->startCaption(IZ)V

    .line 626
    invoke-direct {p0, v7, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->startCaption(IZ)V

    .line 631
    return-void

    .line 570
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 572
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "endCaption error(%d)"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected startSubtitleCaption()V
    .locals 2

    .prologue
    .line 725
    const/16 v0, 0x30

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->startCaption(IZ)V

    .line 730
    return-void
.end method
