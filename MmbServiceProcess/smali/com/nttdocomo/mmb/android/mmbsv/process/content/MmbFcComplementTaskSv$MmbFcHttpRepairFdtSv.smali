.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;
.source "MmbFcComplementTaskSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbFcHttpRepairFdtSv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lorg/apache/http/impl/client/DefaultHttpClient;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;)V
    .locals 0
    .param p2, "aClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p3, "aRequestInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    .prologue
    .line 4399
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    .line 4400
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lorg/apache/http/impl/client/DefaultHttpClient;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;)V

    .line 4407
    return-void
.end method

.method private handleContentPartsFdt(Ljava/io/DataInputStream;J)V
    .locals 10
    .param p1, "aIn"    # Ljava/io/DataInputStream;
    .param p2, "aRemain"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4562
    const/4 v1, 0x0

    .line 4563
    .local v1, "eof":Z
    const/4 v2, 0x0

    .line 4564
    .local v2, "len":I
    const-wide/16 v4, 0x0

    .line 4565
    .local v4, "offsetNow":J
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->translationBuffer:[B

    .line 4566
    .local v0, "buf":[B
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v7, p2, v8

    if-lez v7, :cond_4

    .line 4567
    const/4 v6, 0x0

    .line 4568
    .local v6, "writeSize":I
    :goto_1
    if-nez v1, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v7, p2, v8

    if-lez v7, :cond_3

    const v7, 0x14000

    if-ge v6, v7, :cond_3

    .line 4569
    const/4 v3, 0x0

    .line 4571
    .local v3, "readSize":I
    const v7, 0x14000

    sub-int/2addr v7, v6

    int-to-long v8, v7

    cmp-long v7, p2, v8

    if-gez v7, :cond_1

    .line 4572
    long-to-int v3, p2

    .line 4576
    :goto_2
    invoke-virtual {p1, v0, v6, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    .line 4577
    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    const/4 v1, 0x1

    .line 4578
    :goto_3
    const/4 v7, 0x0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4579
    add-int/2addr v6, v2

    .line 4580
    int-to-long v8, v2

    sub-long/2addr p2, v8

    .line 4581
    goto :goto_1

    .line 4574
    :cond_1
    const v7, 0x14000

    sub-int v3, v7, v6

    goto :goto_2

    .line 4577
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 4582
    .end local v3    # "readSize":I
    :cond_3
    if-lez v6, :cond_0

    .line 4584
    invoke-virtual {p0, v0, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->repairContentsNormalFdt([BJI)V

    .line 4585
    int-to-long v8, v6

    add-long/2addr v4, v8

    goto :goto_0

    .line 4588
    .end local v6    # "writeSize":I
    :cond_4
    if-eqz v1, :cond_5

    .line 4589
    const-string v7, "response data error"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4590
    new-instance v7, Lorg/apache/http/client/ClientProtocolException;

    const-string v8, "response data error"

    invoke-direct {v7, v8}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4596
    :cond_5
    return-void
.end method


# virtual methods
.method protected handleMultiResponse(Lorg/apache/http/HttpResponse;Ljava/io/DataInputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "aResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "aIn"    # Ljava/io/DataInputStream;
    .param p3, "aBoundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4440
    new-instance v0, Lorg/apache/http/client/ClientProtocolException;

    const-string v1, "Content-Type can not be multiparts"

    invoke-direct {v0, v1}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSingleResponse(Lorg/apache/http/HttpResponse;Ljava/io/DataInputStream;)V
    .locals 18
    .param p1, "aResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "aIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4468
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v14, "Range"

    invoke-virtual {v11, v14}, Lorg/apache/http/client/methods/HttpGet;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v11

    const/4 v14, 0x0

    aget-object v11, v11, v14

    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 4469
    .local v9, "strReqRangeTmp":Ljava/lang/String;
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->contentRange:Ljava/lang/String;

    if-nez v11, :cond_1

    .line 4470
    :cond_0
    const-string v11, "range null"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v11, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4471
    new-instance v11, Lorg/apache/http/client/ClientProtocolException;

    const-string v14, "range error"

    invoke-direct {v11, v14}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4473
    :cond_1
    const-string v11, "="

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 4474
    .local v8, "strReqRange":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->contentRange:Ljava/lang/String;

    const-string v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 4476
    .local v10, "strRspRange":[Ljava/lang/String;
    array-length v11, v8

    const/4 v14, 0x2

    if-ne v11, v14, :cond_2

    array-length v11, v10

    const/4 v14, 0x2

    if-eq v11, v14, :cond_3

    .line 4477
    :cond_2
    const-string v11, "response range error request.length=%d response.length=%d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    array-length v0, v8

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    array-length v0, v10

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4479
    new-instance v11, Lorg/apache/http/client/ClientProtocolException;

    const-string v14, "response range error"

    invoke-direct {v11, v14}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4486
    :cond_3
    const/4 v11, 0x0

    aget-object v11, v10, v11

    const-string v14, "bytes"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 4487
    const-string v11, "bad Content-range dimention:[%s]"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x1

    aget-object v16, v10, v16

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4488
    new-instance v11, Lorg/apache/http/client/ClientProtocolException;

    const-string v14, "response range error"

    invoke-direct {v11, v14}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4494
    :cond_4
    const/4 v11, 0x1

    aget-object v11, v10, v11

    const-string v14, "/"

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4495
    .local v5, "rangeValues":[Ljava/lang/String;
    array-length v11, v5

    const/4 v14, 0x2

    if-eq v11, v14, :cond_5

    .line 4496
    const-string v11, "bad Content-range rangeValues:[%s]"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-object v16, v5, v16

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4497
    new-instance v11, Lorg/apache/http/client/ClientProtocolException;

    const-string v14, "response status error"

    invoke-direct {v11, v14}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4503
    :cond_5
    const/4 v11, 0x0

    aget-object v11, v5, v11

    const-string v14, "-"

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4504
    .local v4, "fromTo":[Ljava/lang/String;
    array-length v11, v4

    const/4 v14, 0x2

    if-eq v11, v14, :cond_6

    .line 4505
    const-string v11, "bad Content-range fromTo:[%s]"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-object v16, v5, v16

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4506
    new-instance v11, Lorg/apache/http/client/ClientProtocolException;

    const-string v14, "response status error"

    invoke-direct {v11, v14}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4511
    :cond_6
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 4512
    .local v2, "from":J
    const-wide/16 v14, 0x0

    cmp-long v11, v2, v14

    if-eqz v11, :cond_7

    .line 4513
    const-string v11, "bad Content-range from:[%d]"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4514
    new-instance v11, Lorg/apache/http/client/ClientProtocolException;

    const-string v14, "response status error"

    invoke-direct {v11, v14}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4517
    :cond_7
    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 4518
    .local v12, "to":J
    sub-long v14, v12, v2

    const-wide/16 v16, 0x1

    add-long v6, v14, v16

    .line 4520
    .local v6, "partSize":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->handleContentPartsFdt(Ljava/io/DataInputStream;J)V

    .line 4521
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->read()I

    move-result v11

    const/4 v14, -0x1

    if-eq v11, v14, :cond_8

    .line 4522
    const-string v11, "read over"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v11, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4526
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$700(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->crid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->type:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkCancelFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4528
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFdtInstanceSavingStateSv;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->crid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v14 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFdtInstanceSavingStateSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Ljava/lang/String;)V

    invoke-static {v11, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$800(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;)V

    .line 4530
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->contentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->crid:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->notifyFdtInstanceSaveCompleted(Ljava/lang/String;)I

    .line 4535
    return-void
.end method

.method repairContentsNormalFdt([BJI)V
    .locals 10
    .param p1, "aFdtContent"    # [B
    .param p2, "aOffsetNow"    # J
    .param p4, "aLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
        }
    .end annotation

    .prologue
    .line 4623
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$700(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    move-result-object v6

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->crid:Ljava/lang/String;

    iget v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->type:I

    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v6, v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkCancelFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4627
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1, v6, p4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 4632
    .local v1, "compContent":[B
    const/4 v3, 0x0

    .line 4633
    .local v3, "isFirst":Z
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-nez v6, :cond_0

    .line 4634
    const/4 v3, 0x1

    .line 4637
    :cond_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->contentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->crid:Ljava/lang/String;

    invoke-virtual {v6, v7, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->saveFdtInstanceData(Ljava/lang/String;[BZ)I

    move-result v4

    .line 4640
    .local v4, "result":I
    if-eqz v4, :cond_2

    .line 4641
    const-string v6, "saveFdtInstanceData return %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4642
    const/16 v6, -0xa

    if-ne v4, v6, :cond_1

    .line 4643
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v5

    .line 4645
    .local v5, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;->crid:Ljava/lang/String;

    const v7, 0x7f04001a

    invoke-virtual {v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 4647
    const/4 v0, -0x7

    .line 4648
    .local v0, "cause":I
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(I)V

    throw v6
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4654
    .end local v0    # "cause":I
    .end local v1    # "compContent":[B
    .end local v3    # "isFirst":Z
    .end local v4    # "result":I
    .end local v5    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :catch_0
    move-exception v2

    .line 4655
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4656
    const/4 v0, -0x4

    .line 4657
    .restart local v0    # "cause":I
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(I)V

    throw v6

    .line 4650
    .end local v0    # "cause":I
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v1    # "compContent":[B
    .restart local v3    # "isFirst":Z
    .restart local v4    # "result":I
    :cond_1
    const/4 v0, -0x4

    .line 4651
    .restart local v0    # "cause":I
    :try_start_1
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(I)V

    throw v6
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4663
    .end local v0    # "cause":I
    :cond_2
    return-void
.end method
