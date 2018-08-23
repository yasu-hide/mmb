.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;
.super Ljava/lang/Object;
.source "MmbStBmlBrowserControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv$MmbBmlRunnableRes;,
        Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv$MmbBmlRunnable;
    }
.end annotation


# static fields
.field public static final BML_INITIALIZED:I = 0x4

.field public static final BML_INITIALIZED_RESIST:I = 0x5

.field public static final BML_NOT_INITIALIZED:I = 0x0

.field public static final BML_NOT_INITIALIZED_CHANGE_WAIT:I = 0x2

.field public static final BML_NOT_INITIALIZED_RESISTCHANGE_WAIT:I = 0x3

.field public static final BML_NOT_INITIALIZED_RESIST_WAIT:I = 0x1

.field public static final BML_STARTING:I = 0x6

.field public static final BML_STARTING_RESIST:I = 0x7


# instance fields
.field protected client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

.field protected ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

.field protected mBmlBrowserMode:I

.field protected mBmlBrowserSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;

.field protected mBmlBrowserchangeInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

.field protected mBmlBrowsersetInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;

.field protected mDirection:I

.field protected mHandler:Landroid/os/Handler;

.field protected mIsDraw:Z

.field protected mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

.field protected mRestartServiceFlag:Z

.field protected mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

.field private mTouchCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;)V
    .locals 3
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .param p2, "aClient"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;
    .param p3, "aCtrl"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 62
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    .line 66
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    .line 71
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 76
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mHandler:Landroid/os/Handler;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mRestartServiceFlag:Z

    .line 106
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    .line 111
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mDirection:I

    .line 116
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;

    .line 121
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowsersetInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;

    .line 126
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserchangeInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    .line 128
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mIsDraw:Z

    .line 131
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mTouchCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .line 209
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 210
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    .line 211
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mHandler:Landroid/os/Handler;

    .line 218
    return-void
.end method


# virtual methods
.method public changeBmlDirection(I)V
    .locals 0
    .param p1, "aBmlDirection"    # I

    .prologue
    .line 1071
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mDirection:I

    .line 1076
    return-void
.end method

.method public changeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;
    .param p2, "aTouchCtl"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .prologue
    .line 430
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v0, :pswitch_data_0

    .line 460
    const-string v0, "MmbStBmlBrowserControllerSv#changeDisp invalid is status."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    :goto_0
    return-void

    .line 433
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->setSurfaceViewLayoutchangeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V

    goto :goto_0

    .line 440
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    .line 441
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->setSurfaceViewLayoutchangeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V

    goto :goto_0

    .line 447
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    .line 448
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->setSurfaceViewLayoutchangeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V

    goto :goto_0

    .line 457
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->setSurfaceViewLayoutchangeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V

    .line 467
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserchangeInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mIsDraw:Z

    iput-boolean v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbIsDraw:Z

    .line 469
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserchangeInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->setchangeDispParam(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V

    .line 471
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserchangeInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->changeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public deleteBmlBrowser()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 596
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v2, :pswitch_data_0

    .line 612
    const-string v2, "MmbStBmlBrowserControllerSv#deleteBmlBrowser invalid is status."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 619
    :pswitch_1
    const/4 v1, 0x0

    .line 621
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->delete()Z

    move-result v1

    .line 622
    if-nez v1, :cond_1

    .line 623
    const-string v2, "MmbStBmlMwClient#delete() return false."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 632
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->delete()Z

    move-result v1

    .line 633
    if-nez v1, :cond_2

    .line 634
    const-string v2, "MmbStBmlMwCtrlClient#delete() return false."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 641
    :cond_2
    :goto_2
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 642
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v2, :pswitch_data_1

    .line 648
    const-string v2, "MmbStBmlBrowserControllerSv#deleteBmlBrowser invalid is status."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmbStBmlMwClient#delete() failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 636
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 637
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmbStBmlMwCtrlClient#delete() failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 645
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 642
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getBmlBrowserMode()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    return v0
.end method

.method public getBmlDirection()I
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mDirection:I

    return v0
.end method

.method public getRenderSizeReq()Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1287
    const/4 v0, 0x0

    .line 1289
    .local v0, "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v2, :pswitch_data_0

    .line 1295
    const-string v2, "MmbStBmlBrowserControllerSv#getRenderSizeReq invalid is status. %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1298
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;

    .end local v0    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;-><init>()V

    .line 1299
    .restart local v0    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    new-instance v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    invoke-direct {v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;-><init>()V

    iput-object v2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    .line 1300
    iget-object v2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iput v5, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbX:I

    .line 1301
    iget-object v2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iput v5, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbY:I

    .line 1302
    new-instance v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    invoke-direct {v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;-><init>()V

    iput-object v2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    .line 1303
    iget-object v2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iput v5, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbHeight:I

    .line 1304
    iget-object v2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iput v5, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbWidth:I

    move-object v1, v0

    .line 1319
    .end local v0    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    .local v1, "ret":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1314
    .end local v1    # "ret":Ljava/lang/Object;
    .restart local v0    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    :pswitch_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->getRenderSizeReq()Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;

    move-result-object v0

    move-object v1, v0

    .line 1319
    .restart local v1    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 1289
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public initializeBmlBrowser(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)V
    .locals 6
    .param p1, "aTouchControl"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 494
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v3, :pswitch_data_0

    .line 510
    const-string v3, "MmbStBmlBrowserControllerSv#initializeBmlBrowser invalid is status."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 517
    :pswitch_1
    const/4 v2, 0x0

    .line 519
    .local v2, "ret":Z
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->initialize()Z

    move-result v2

    .line 520
    if-nez v2, :cond_1

    .line 521
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v4, "MmbStBmlMwClient#initialize() return false."

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 525
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v4, "MmbStBmlMwClient#initialize() failed."

    invoke-direct {v3, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 528
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    .line 530
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->initialize()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 531
    if-nez v2, :cond_2

    .line 533
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 537
    :goto_1
    :try_start_3
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v4, "MmbStBmlMwCtrlClient#initialize() return false."

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 539
    :catch_1
    move-exception v0

    .line 540
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 542
    :try_start_4
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 546
    :goto_2
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v4, "MmbStBmlMwCtrlClient#initialize() failed."

    invoke-direct {v3, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 534
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 535
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 543
    :catch_3
    move-exception v1

    .line 544
    .local v1, "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 550
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    .line 552
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v3, :pswitch_data_1

    .line 569
    const-string v3, "MmbStBmlBrowserControllerSv#initializeBmlBrowser invalid is status."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 555
    :pswitch_2
    iput v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    goto :goto_0

    .line 562
    :pswitch_3
    iput v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    .line 563
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowsersetInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;

    invoke-virtual {p0, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->setDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)Z

    move-result v2

    .line 564
    if-nez v2, :cond_0

    .line 565
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v4, "setDisplay return false."

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 552
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notifyKey(Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;)V
    .locals 4
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;

    .prologue
    .line 1336
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v0, :pswitch_data_0

    .line 1342
    const-string v0, "MmbStBmlBrowserControllerSv#notifyKey invalid is status. %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1358
    :goto_0
    return-void

    .line 1352
    :pswitch_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->notifyKey(Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;)V

    goto :goto_0

    .line 1336
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public notifySmoothDrawStop(Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;)V
    .locals 4
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;

    .prologue
    .line 1373
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v0, :pswitch_data_0

    .line 1379
    const-string v0, "MmbStBmlBrowserControllerSv#notifySmoothDrawStop invalid is status. %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1395
    :goto_0
    return-void

    .line 1389
    :pswitch_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->notifySmoothDrawStop(Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;)V

    goto :goto_0

    .line 1373
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCloseReq()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1157
    const/4 v1, 0x0

    .line 1158
    .local v1, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    const/4 v2, 0x0

    .line 1161
    .local v2, "setting":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 1162
    if-eqz v1, :cond_0

    .line 1163
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv$2;

    invoke-direct {v4, p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1180
    :goto_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;

    .line 1181
    if-eqz v2, :cond_1

    .line 1182
    iget v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbStartType:I

    packed-switch v3, :pswitch_data_0

    .line 1207
    :goto_1
    return-void

    .line 1177
    :cond_0
    const-string v3, "MmbStBmlBrowserControllerSv#onCloseReq listener is null."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1187
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->stopBmlBrowser()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1193
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->startBmlBrowser(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1194
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1188
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1189
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>()V

    throw v3

    .line 1201
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
    :cond_1
    const-string v3, "MmbStBmlBrowserControllerSv#onCloseReq aSetting is null."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onStartReply(Z)Z
    .locals 4
    .param p1, "aResult"    # Z

    .prologue
    .line 1113
    const/4 v0, 0x0

    .line 1114
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    const/4 v1, 0x0

    .line 1117
    .local v1, "ret":Z
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 1118
    if-eqz v0, :cond_0

    .line 1119
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1136
    :goto_0
    const/4 v1, 0x1

    .line 1142
    return v1

    .line 1133
    :cond_0
    const-string v2, "MmbStBmlBrowserControllerSv#onStartReply listener is null."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public relDisplay()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 358
    const/4 v0, 0x0

    .line 360
    .local v0, "ret":Z
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v3, :pswitch_data_0

    .line 381
    const-string v1, "MmbStBmlBrowserControllerSv#relDisplay invalid is status."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 410
    :goto_0
    :pswitch_0
    return v1

    .line 372
    :pswitch_1
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    goto :goto_0

    .line 388
    :pswitch_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->relDisplay()Z

    move-result v0

    .line 390
    if-ne v1, v0, :cond_0

    .line 391
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v1, :pswitch_data_1

    .line 399
    :pswitch_3
    const-string v1, "MmbStBmlBrowserControllerSv#relDisplay invalid is status."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 403
    goto :goto_0

    .line 393
    :pswitch_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    :cond_0
    :goto_1
    move v1, v0

    .line 410
    goto :goto_0

    .line 396
    :pswitch_5
    const/4 v1, 0x6

    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    goto :goto_1

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 391
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public replyStartFullDisp(Z)V
    .locals 4
    .param p1, "aResult"    # Z

    .prologue
    .line 1412
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v0, :pswitch_data_0

    .line 1418
    const-string v0, "MmbStBmlBrowserControllerSv#replyStartFullDisp invalid is status. %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1434
    :goto_0
    return-void

    .line 1428
    :pswitch_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyStartFullDisp(Z)V

    goto :goto_0

    .line 1412
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public replyStopFullDisp(Z)V
    .locals 4
    .param p1, "aResult"    # Z

    .prologue
    .line 1451
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v0, :pswitch_data_0

    .line 1457
    const-string v0, "MmbStBmlBrowserControllerSv#replyStopFullDisp invalid is status. %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1473
    :goto_0
    return-void

    .line 1467
    :pswitch_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyStopFullDisp(Z)V

    goto :goto_0

    .line 1451
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public resumeBmlBrowser(I)V
    .locals 6
    .param p1, "aResumeKind"    # I

    .prologue
    .line 1018
    const/4 v2, 0x0

    .line 1023
    .local v2, "ret":Z
    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwResumeReqInfo;

    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwResumeReqInfo;-><init>()V

    .line 1024
    .local v1, "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwResumeReqInfo;
    packed-switch p1, :pswitch_data_0

    .line 1032
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aResumeKind out of a range."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1026
    :pswitch_0
    const/4 v3, 0x0

    iput v3, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwResumeReqInfo;->mmbRestartType:I

    .line 1036
    :goto_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 1040
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->resumeReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwResumeReqInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1044
    :goto_1
    if-nez v2, :cond_0

    .line 1045
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v4, "MmbStBmlMwClient#resumeReq() return false."

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1029
    :pswitch_1
    const/4 v3, 0x1

    iput v3, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwResumeReqInfo;->mmbRestartType:I

    goto :goto_0

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1051
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .line 1024
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)Z
    .locals 5
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;
    .param p2, "aTouchCtl"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, "ret":Z
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v3, :pswitch_data_0

    .line 304
    const-string v1, "MmbStBmlBrowserControllerSv#setDisplay invalid is status."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 340
    :goto_0
    return v1

    .line 279
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->setSurfaceViewLayoutsetDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)V

    goto :goto_0

    .line 286
    :pswitch_1
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    .line 287
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->setSurfaceViewLayoutsetDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)V

    goto :goto_0

    .line 293
    :pswitch_2
    const/4 v2, 0x3

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    .line 294
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->setSurfaceViewLayoutsetDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)V

    goto :goto_0

    .line 301
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->setSurfaceViewLayoutsetDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)V

    .line 311
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowsersetInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->setDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)Z

    move-result v0

    .line 312
    if-nez v0, :cond_0

    .line 313
    const-string v1, "MmbStBmlBrowserControllerSv#setDisplay return false"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    .line 314
    goto :goto_0

    .line 317
    :cond_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserchangeInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mDirection:I

    iput v4, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbDirection:I

    .line 318
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserchangeInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    invoke-virtual {p0, v3, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->changeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)V

    .line 320
    if-ne v1, v0, :cond_1

    .line 321
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v1, :pswitch_data_1

    .line 329
    :pswitch_4
    const-string v1, "MmbStBmlBrowserControllerSv#setDisplay invalid is status."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    .line 333
    goto :goto_0

    .line 323
    :pswitch_5
    const/4 v1, 0x5

    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    :cond_1
    :goto_1
    move v1, v0

    .line 340
    goto :goto_0

    .line 326
    :pswitch_6
    const/4 v1, 0x7

    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    goto :goto_1

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 321
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public setMmbStBmlEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 236
    return-void
.end method

.method public setSurfaceViewLayoutchangeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    .prologue
    .line 1251
    const/4 v0, 0x0

    .line 1252
    .local v0, "baseheight":I
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mDirection:I

    if-nez v1, :cond_2

    .line 1253
    const/16 v0, 0x1e0

    .line 1258
    :goto_0
    iget v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbHeight:I

    if-ltz v1, :cond_0

    iget v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbHeight:I

    if-ge v0, v1, :cond_1

    .line 1260
    :cond_0
    iput v0, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbHeight:I

    .line 1263
    :cond_1
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserchangeInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    .line 1273
    return-void

    .line 1255
    :cond_2
    const/16 v0, 0xf0

    goto :goto_0
.end method

.method public setSurfaceViewLayoutsetDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;

    .prologue
    .line 1219
    const/4 v0, 0x0

    .line 1220
    .local v0, "baseheight":I
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mDirection:I

    if-nez v1, :cond_2

    .line 1221
    const/16 v0, 0x3c0

    .line 1226
    :goto_0
    iget v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;->mmbHeight:I

    if-ltz v1, :cond_0

    iget v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;->mmbHeight:I

    if-ge v0, v1, :cond_1

    .line 1228
    :cond_0
    iput v0, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;->mmbHeight:I

    .line 1231
    :cond_1
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowsersetInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;

    .line 1239
    return-void

    .line 1223
    :cond_2
    const/16 v0, 0x1e0

    goto :goto_0
.end method

.method protected setTouchCtl(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)V
    .locals 0
    .param p1, "aTouchCtl"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mTouchCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .line 1492
    return-void
.end method

.method public startBmlBrowser(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;)V
    .locals 7
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;

    .prologue
    const/4 v6, 0x0

    .line 679
    const/4 v3, 0x0

    .line 681
    .local v3, "tmp":[B
    new-instance v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;

    invoke-direct {v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;-><init>()V

    .line 682
    .local v2, "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;
    new-instance v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    invoke-direct {v4}, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;-><init>()V

    iput-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    .line 683
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    new-instance v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;

    invoke-direct {v5}, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;-><init>()V

    iput-object v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;->mmbTvLinkInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;

    .line 684
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    new-instance v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwNormalInfo;

    invoke-direct {v5}, Lmmb/android/MmbStBmlMw/MmbStBmlMwNormalInfo;-><init>()V

    iput-object v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;->mmbNormalInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwNormalInfo;

    .line 685
    new-instance v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwDrawInfo;

    invoke-direct {v4}, Lmmb/android/MmbStBmlMw/MmbStBmlMwDrawInfo;-><init>()V

    iput-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbDrawInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwDrawInfo;

    .line 687
    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v4, :pswitch_data_0

    .line 706
    const-string v4, "MmbStBmlBrowserControllerSv#startBmlBrowser invalid is status."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    :goto_0
    :pswitch_0
    return-void

    .line 700
    :pswitch_1
    const/4 v4, 0x6

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    .line 714
    :goto_1
    if-nez p1, :cond_0

    .line 715
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v5, "aSetting is null."

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 703
    :pswitch_2
    const/4 v4, 0x7

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    goto :goto_1

    .line 719
    :cond_0
    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbStartType:I

    iput v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbStartType:I

    .line 721
    iget v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbStartType:I

    packed-switch v4, :pswitch_data_1

    .line 739
    :pswitch_3
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mmbStartType out of range. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbStartType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 724
    :pswitch_4
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;->mmbNormalInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwNormalInfo;

    iput v6, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwNormalInfo;->mmbDataType:I

    .line 743
    :goto_2
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbDrawInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwDrawInfo;

    iget-boolean v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbIsDraw:Z

    iput-boolean v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwDrawInfo;->mmbIsDraw:Z

    .line 744
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbDrawInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwDrawInfo;

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mDirection:I

    iput v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwDrawInfo;->mmbDirection:I

    .line 746
    iget-boolean v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbIsDraw:Z

    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mIsDraw:Z

    .line 749
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;

    .line 753
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->startReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;)V

    .line 756
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;-><init>()V

    .line 757
    .local v0, "changeinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;
    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mDirection:I

    iput v4, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbDirection:I

    .line 758
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mTouchCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {p0, v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->changeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 760
    .end local v0    # "changeinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;
    :catch_0
    move-exception v1

    .line 761
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 764
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;

    .line 765
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v5, "MmbStBmlMwClient#startReq() failed."

    invoke-direct {v4, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 728
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_5
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;->mmbTvLinkInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    iget v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbBroadcasterId:I

    iput v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;->mmbBroadcasterId:I

    .line 730
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;->mmbTvLinkInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    iget v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbServiceId:I

    iput v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;->mmbServiceId:I

    .line 731
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbUri:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 732
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;->mmbTvLinkInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;

    array-length v5, v3

    new-array v5, v5, [B

    iput-object v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;->mmbTvLinkUri:[B

    .line 733
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;->mmbTvLinkInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;->mmbTvLinkUri:[B

    array-length v5, v3

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_2

    .line 687
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 721
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public startBmlBrowserForRec(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;)V
    .locals 7
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;

    .prologue
    const/4 v6, 0x0

    .line 791
    const/4 v3, 0x0

    .line 793
    .local v3, "tmp":[B
    new-instance v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;

    invoke-direct {v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;-><init>()V

    .line 794
    .local v2, "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;
    new-instance v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    invoke-direct {v4}, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;-><init>()V

    iput-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    .line 795
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    new-instance v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;

    invoke-direct {v5}, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;-><init>()V

    iput-object v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;->mmbTvLinkInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;

    .line 796
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    new-instance v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwNormalInfo;

    invoke-direct {v5}, Lmmb/android/MmbStBmlMw/MmbStBmlMwNormalInfo;-><init>()V

    iput-object v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;->mmbNormalInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwNormalInfo;

    .line 797
    new-instance v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwDrawInfo;

    invoke-direct {v4}, Lmmb/android/MmbStBmlMw/MmbStBmlMwDrawInfo;-><init>()V

    iput-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbDrawInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwDrawInfo;

    .line 799
    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v4, :pswitch_data_0

    .line 818
    const-string v4, "MmbStBmlBrowserControllerSv#startBmlBrowser invalid is status."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 880
    :goto_0
    :pswitch_0
    return-void

    .line 812
    :pswitch_1
    const/4 v4, 0x6

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    .line 826
    :goto_1
    if-nez p1, :cond_0

    .line 827
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v5, "aSetting is null."

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 815
    :pswitch_2
    const/4 v4, 0x7

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    goto :goto_1

    .line 830
    :cond_0
    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbStartType:I

    iput v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbStartType:I

    .line 832
    iget v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbStartType:I

    packed-switch v4, :pswitch_data_1

    .line 850
    :pswitch_3
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mmbStartType out of range. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbStartType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 835
    :pswitch_4
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;->mmbNormalInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwNormalInfo;

    const/4 v5, 0x1

    iput v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwNormalInfo;->mmbDataType:I

    .line 854
    :goto_2
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbDrawInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwDrawInfo;

    iget-boolean v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbIsDraw:Z

    iput-boolean v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwDrawInfo;->mmbIsDraw:Z

    .line 855
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbDrawInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwDrawInfo;

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mDirection:I

    iput v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwDrawInfo;->mmbDirection:I

    .line 857
    iget-boolean v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbIsDraw:Z

    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mIsDraw:Z

    .line 860
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;

    .line 864
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->startReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;)V

    .line 866
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;-><init>()V

    .line 867
    .local v0, "changeinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;
    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mDirection:I

    iput v4, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbDirection:I

    .line 868
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mTouchCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {p0, v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->changeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 869
    .end local v0    # "changeinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;
    :catch_0
    move-exception v1

    .line 870
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 873
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;

    .line 874
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v5, "MmbStBmlMwClient#startReq() failed."

    invoke-direct {v4, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 839
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_5
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;->mmbTvLinkInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    iget v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbBroadcasterId:I

    iput v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;->mmbBroadcasterId:I

    .line 841
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;->mmbTvLinkInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    iget v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbServiceId:I

    iput v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;->mmbServiceId:I

    .line 842
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbUri:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 843
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;->mmbTvLinkInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;

    array-length v5, v3

    new-array v5, v5, [B

    iput-object v5, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;->mmbTvLinkUri:[B

    .line 844
    iget-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;->mmbInitInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwInitInfo;->mmbTvLinkInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkInfo;->mmbTvLinkUri:[B

    array-length v5, v3

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_2

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 832
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public stopBmlBrowser()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 894
    const/4 v1, 0x0

    .line 896
    .local v1, "ret":Z
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v2, :pswitch_data_0

    .line 912
    const-string v2, "MmbStBmlBrowserControllerSv#stopBmlBrowser invalid is status."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 947
    :goto_0
    :pswitch_0
    return-void

    .line 921
    :pswitch_1
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->endReq()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 926
    :goto_1
    if-nez v1, :cond_0

    .line 927
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v3, "MmbStBmlMwClient#endReq() return false."

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 929
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    packed-switch v2, :pswitch_data_1

    .line 937
    const-string v2, "MmbStBmlBrowserControllerSv#stopBmlBrowser invalid is status."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 931
    :pswitch_2
    const/4 v2, 0x4

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    goto :goto_0

    .line 934
    :pswitch_3
    const/4 v2, 0x5

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->mBmlBrowserMode:I

    goto :goto_0

    .line 896
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 929
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public suspendBmlBrowser(I)V
    .locals 6
    .param p1, "aVramClear"    # I

    .prologue
    .line 967
    const/4 v2, 0x0

    .line 969
    .local v2, "ret":Z
    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPauseReqInfo;

    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPauseReqInfo;-><init>()V

    .line 970
    .local v1, "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwPauseReqInfo;
    packed-switch p1, :pswitch_data_0

    .line 985
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aVramClear out of a range."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 973
    :pswitch_0
    const/4 v3, 0x1

    iput v3, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPauseReqInfo;->mmbVramClear:I

    .line 989
    :goto_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 993
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->pauseReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPauseReqInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 998
    :goto_1
    if-nez v2, :cond_0

    .line 999
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v4, "MmbStBmlMwClient#pauseReq() return false."

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 977
    :pswitch_1
    const/4 v3, 0x2

    iput v3, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPauseReqInfo;->mmbVramClear:I

    goto :goto_0

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1005
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .line 970
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
