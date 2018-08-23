.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;
.super Ljava/lang/Object;
.source "MmbFcComplementTaskSv.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbFcHttpRepairSv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<[B>;"
    }
.end annotation


# instance fields
.field protected cacheControl:Ljava/lang/String;

.field protected callback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

.field protected final client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field protected connection:Ljava/lang/String;

.field protected contentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

.field protected contentLength:J

.field protected contentRange:Ljava/lang/String;

.field protected crid:Ljava/lang/String;

.field protected httpGet:Lorg/apache/http/client/methods/HttpGet;

.field private repairParts:Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

.field protected requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

.field protected responseNormal:Z

.field protected retryAfter:I

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

.field protected final translationBuffer:[B

.field protected type:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lorg/apache/http/impl/client/DefaultHttpClient;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;)V
    .locals 1
    .param p2, "aClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p3, "aRequestInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    .prologue
    .line 2431
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2408
    const v0, 0x14000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->translationBuffer:[B

    .line 2436
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 2437
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    .line 2438
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->contentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    .line 2443
    return-void
.end method

.method private checkParserNotNormal(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "aInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    .param p2, "aParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3342
    if-nez p2, :cond_0

    .line 3343
    const-string v4, "param aParser -> null"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3344
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v5, "param aParser -> null"

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3348
    :cond_0
    const/4 v1, 0x0

    .line 3349
    .local v1, "eventtype":I
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 3351
    const/4 v2, 0x0

    .line 3352
    .local v2, "tag":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3355
    .local v3, "text":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    if-eq v4, v1, :cond_5

    .line 3358
    const/4 v4, 0x3

    if-ne v4, v1, :cond_4

    .line 3359
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3362
    const-string v4, "returnCode"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3363
    iput-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->strReturnCode:Ljava/lang/String;

    .line 3377
    :cond_1
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 3365
    :cond_2
    const-string v4, "errorDetail"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3366
    iput-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->strErrorDetail:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3380
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3382
    .local v0, "err":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3383
    new-instance v4, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v4, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 3368
    .end local v0    # "err":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v4, "returnMessage"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3369
    iput-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->strReturnMessage:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3385
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 3387
    .local v0, "err":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3388
    new-instance v4, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v4, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 3373
    .end local v0    # "err":Ljava/io/IOException;
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x4

    if-ne v4, v1, :cond_1

    .line 3374
    :try_start_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_1

    .line 3395
    :cond_5
    return-void
.end method

.method private handleContentParts(Ljava/io/DataInputStream;Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;J)V
    .locals 15
    .param p1, "aIn"    # Ljava/io/DataInputStream;
    .param p2, "aParts"    # Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    .param p3, "aRemain"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3016
    const/4 v2, 0x0

    .line 3017
    .local v2, "eof":Z
    const/4 v9, 0x0

    .line 3018
    .local v9, "len":I
    const-wide/16 v6, 0x0

    .line 3019
    .local v6, "offsetNow":J
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->translationBuffer:[B

    .line 3020
    .local v4, "buf":[B
    :cond_0
    :goto_0
    if-nez v2, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v3, p3, v12

    if-lez v3, :cond_5

    .line 3021
    const/4 v8, 0x0

    .line 3022
    .local v8, "writeSize":I
    :goto_1
    if-nez v2, :cond_3

    const-wide/16 v12, 0x0

    cmp-long v3, p3, v12

    if-lez v3, :cond_3

    const v3, 0x14000

    if-ge v8, v3, :cond_3

    .line 3023
    const/4 v10, 0x0

    .line 3025
    .local v10, "readSize":I
    const v3, 0x14000

    sub-int/2addr v3, v8

    int-to-long v12, v3

    cmp-long v3, p3, v12

    if-gez v3, :cond_1

    .line 3026
    move-wide/from16 v0, p3

    long-to-int v10, v0

    .line 3030
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8, v10}, Ljava/io/DataInputStream;->read([BII)I

    move-result v9

    .line 3031
    const/4 v3, -0x1

    if-ne v9, v3, :cond_2

    const/4 v2, 0x1

    .line 3032
    :goto_3
    const/4 v3, 0x0

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 3033
    add-int/2addr v8, v9

    .line 3034
    int-to-long v12, v9

    sub-long p3, p3, v12

    .line 3035
    goto :goto_1

    .line 3028
    :cond_1
    const v3, 0x14000

    sub-int v10, v3, v8

    goto :goto_2

    .line 3031
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 3036
    .end local v10    # "readSize":I
    :cond_3
    if-lez v8, :cond_0

    .line 3038
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v12, 0x0

    cmp-long v3, p3, v12

    if-gtz v3, :cond_4

    .line 3040
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->changeState(I)V

    :cond_4
    move-object v3, p0

    move-object/from16 v5, p2

    .line 3043
    invoke-virtual/range {v3 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->repairContentsNormal([BLmmb/android/MmbFcContMw/MmbFcContMwMissingParts;JI)V

    .line 3044
    int-to-long v12, v8

    add-long/2addr v6, v12

    goto :goto_0

    .line 3047
    .end local v8    # "writeSize":I
    :cond_5
    if-eqz v2, :cond_6

    .line 3048
    const-string v3, "response data error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3049
    new-instance v3, Lorg/apache/http/client/ClientProtocolException;

    const-string v5, "response data error"

    invoke-direct {v3, v5}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3051
    :cond_6
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-boolean v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->isCompleteOnly:Z

    if-eqz v3, :cond_7

    .line 3052
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->contentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->crid:Ljava/lang/String;

    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->repairParts:Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    iget-object v11, v11, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->contentLocation:Ljava/lang/String;

    invoke-virtual {v3, v5, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->notifyRepairCompleted(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    :cond_7
    return-void
.end method


# virtual methods
.method check(Lorg/apache/http/client/methods/HttpUriRequest;[B)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    .locals 9
    .param p1, "aRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "aResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3279
    const/4 v2, 0x0

    .line 3282
    .local v2, "info":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;

    .end local v2    # "info":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;-><init>()V

    .line 3283
    .restart local v2    # "info":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    iput-boolean v7, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->crowdingFlag:Z

    .line 3284
    iput v7, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->retryAfter:I

    .line 3287
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->responseNormal:Z

    if-nez v4, :cond_0

    .line 3289
    const/4 v1, 0x0

    .line 3290
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v3, 0x0

    .line 3292
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 3293
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 3294
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 3295
    new-instance v4, Ljava/io/StringReader;

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, p2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3305
    invoke-direct {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->checkParserNotNormal(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3308
    iget-object v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->strReturnCode:Ljava/lang/String;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isCrowding(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3309
    iput-boolean v8, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->crowdingFlag:Z

    .line 3310
    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->retryAfter:I

    iput v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->retryAfter:I

    .line 3317
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    return-object v2

    .line 3296
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 3297
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3298
    new-instance v4, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v4, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 3299
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 3300
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3301
    new-instance v4, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v4, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method getRepair()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x7

    .line 2502
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->handleRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 2506
    .local v1, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v2, 0x0

    .line 2508
    .local v2, "response":[B
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5, v1, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "response":[B
    check-cast v2, [B
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2528
    .restart local v2    # "response":[B
    invoke-virtual {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->check(Lorg/apache/http/client/methods/HttpUriRequest;[B)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;

    move-result-object v3

    .line 2537
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    return-object v3

    .line 2509
    .end local v2    # "response":[B
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    :catch_0
    move-exception v0

    .line 2510
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    throw v0

    .line 2511
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :catch_1
    move-exception v0

    .line 2512
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 2513
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    const/4 v6, 0x0

    invoke-direct {v5, v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(IZ)V

    throw v5

    .line 2515
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 2516
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 2517
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    const/4 v6, 0x1

    invoke-direct {v5, v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(IZ)V

    throw v5

    .line 2519
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 2520
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 2521
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v4

    .line 2523
    .local v4, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->crid:Ljava/lang/String;

    const v6, 0x7f04001c

    invoke-virtual {v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 2525
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v5
.end method

.method protected handleMultiResponse(Lorg/apache/http/HttpResponse;Ljava/io/DataInputStream;Ljava/lang/String;)V
    .locals 26
    .param p1, "aResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "aIn"    # Ljava/io/DataInputStream;
    .param p3, "aBoundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2775
    const/16 v16, 0x0

    .line 2776
    .local v16, "partsCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->repairParts:Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v4, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    .local v4, "arr$":[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_b

    aget-object v15, v4, v12

    .line 2777
    .local v15, "parts":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    add-int/lit8 v16, v16, 0x1

    .line 2779
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v14

    .line 2783
    .local v14, "line":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v14

    .line 2788
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 2789
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[head]boundary error! header boundary="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " response="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2791
    new-instance v22, Lorg/apache/http/client/ClientProtocolException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "response boundary error! header boundary="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " response="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2869
    .end local v14    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2870
    .local v6, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2871
    new-instance v22, Lorg/apache/http/client/ClientProtocolException;

    const-string v23, "response status error"

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 2795
    .end local v6    # "err":Ljava/lang/NullPointerException;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_9

    .line 2796
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v14

    .line 2800
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Content-range:"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 2801
    const-string v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2802
    .local v7, "fields":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 2803
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bad Content-range:["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2804
    new-instance v22, Lorg/apache/http/client/ClientProtocolException;

    const-string v23, "response status error"

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2872
    .end local v7    # "fields":[Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 2873
    .local v6, "err":Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2874
    new-instance v22, Lorg/apache/http/client/ClientProtocolException;

    const-string v23, "response status error"

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 2810
    .end local v6    # "err":Ljava/lang/NumberFormatException;
    .restart local v7    # "fields":[Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_1
    const/16 v22, 0x1

    :try_start_2
    aget-object v22, v7, v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 2811
    .local v19, "values":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_2

    .line 2812
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bad Content-range value:["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v23, v7, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2813
    new-instance v22, Lorg/apache/http/client/ClientProtocolException;

    const-string v23, "response status error"

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 2818
    :cond_2
    const/4 v5, -0x1

    .line 2820
    .local v5, "dimentionIndex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_3

    .line 2821
    aget-object v22, v19, v11

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    const-string v23, "bytes"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 2822
    move v5, v11

    .line 2830
    :cond_3
    if-ltz v5, :cond_5

    add-int/lit8 v22, v5, 0x1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 2831
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bad Content-range dimention:["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v23, v7, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2832
    new-instance v22, Lorg/apache/http/client/ClientProtocolException;

    const-string v23, "response status error"

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 2820
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2834
    :cond_5
    add-int/lit8 v22, v5, 0x1

    aget-object v17, v19, v22

    .line 2835
    .local v17, "rangePerFileSize":Ljava/lang/String;
    const-string v22, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 2836
    .local v18, "rangeValues":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 2837
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bad Content-range rangeValues:["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    aget-object v23, v19, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2839
    new-instance v22, Lorg/apache/http/client/ClientProtocolException;

    const-string v23, "response status error"

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 2846
    :cond_6
    const/16 v22, 0x0

    aget-object v22, v18, v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2847
    .local v10, "fromTo":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 2848
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bad Content-range fromTo:["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v23, v18, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2849
    new-instance v22, Lorg/apache/http/client/ClientProtocolException;

    const-string v23, "response status error"

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 2854
    :cond_7
    const/16 v22, 0x0

    aget-object v22, v10, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 2855
    .local v8, "from":J
    const/16 v22, 0x1

    aget-object v22, v10, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 2856
    .local v20, "to":J
    iget-wide v0, v15, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    move-wide/from16 v22, v0

    cmp-long v22, v8, v22

    if-nez v22, :cond_8

    iget-wide v0, v15, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    move-wide/from16 v22, v0

    iget-wide v0, v15, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->size:J

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    const-wide/16 v24, 0x1

    sub-long v22, v22, v24

    cmp-long v22, v20, v22

    if-eqz v22, :cond_0

    .line 2857
    :cond_8
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Content-range from="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " parts.offset="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-wide v0, v15, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "parts.size"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-wide v0, v15, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->size:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2860
    new-instance v22, Lorg/apache/http/client/ClientProtocolException;

    const-string v23, "response status error"

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2878
    .end local v5    # "dimentionIndex":I
    .end local v7    # "fields":[Ljava/lang/String;
    .end local v8    # "from":J
    .end local v10    # "fromTo":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v17    # "rangePerFileSize":Ljava/lang/String;
    .end local v18    # "rangeValues":[Ljava/lang/String;
    .end local v19    # "values":[Ljava/lang/String;
    .end local v20    # "to":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;I)Z

    move-result v22

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->repairParts:Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 2880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    move-result-object v22

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->changeState(I)V

    .line 2882
    :cond_a
    iget-wide v0, v15, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->size:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->handleContentParts(Ljava/io/DataInputStream;Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;J)V

    .line 2776
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 2884
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "parts":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->read()I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    .line 2885
    const-string v22, "read over"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2891
    :cond_c
    return-void
.end method

.method handleRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3230
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 3232
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "Host"

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strHost:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3233
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "Range"

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRange:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "X-Reserve-Type"

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strReserveType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "X-Repair-Type"

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRepairType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3236
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "X-Repair-Id"

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRepairId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "X-Carrier-Id"

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strCarrierId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "X-Network-Circuit-Id"

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strNetworkCircuitId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3248
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    return-object v0
.end method

.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2331
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->handleResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)[B
    .locals 12
    .param p1, "aResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xc8

    const/4 v10, 0x2

    .line 2560
    const/4 v4, 0x0

    .line 2564
    .local v4, "result":[B
    :try_start_0
    const-string v7, "Cache-Control"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_0

    .line 2565
    const-string v7, "Cache-Control"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->cacheControl:Ljava/lang/String;

    .line 2571
    :goto_0
    const-string v7, "Content-Length"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_1

    .line 2572
    const-string v7, "Content-Length"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->contentLength:J

    .line 2579
    :goto_1
    const-string v7, "Content-Range"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_2

    .line 2580
    const-string v7, "Content-Range"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->contentRange:Ljava/lang/String;

    .line 2586
    :goto_2
    const-string v7, "Retry-After"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_3

    .line 2587
    const-string v7, "Retry-After"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->retryAfter:I

    .line 2594
    :goto_3
    const-string v7, "Connection"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_4

    .line 2595
    const-string v7, "Connection"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->connection:Ljava/lang/String;

    .line 2600
    :goto_4
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 2608
    .local v5, "status":I
    if-eq v11, v5, :cond_7

    const/16 v7, 0xce

    if-eq v7, v5, :cond_7

    .line 2609
    const/16 v7, 0x19c

    if-ne v7, v5, :cond_5

    .line 2610
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    const/4 v8, -0x6

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(I)V

    throw v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2655
    .end local v5    # "status":I
    :catch_0
    move-exception v3

    .line 2656
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v0, -0x5

    .line 2657
    .local v0, "cause":I
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(I)V

    throw v7

    .line 2567
    .end local v0    # "cause":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->cacheControl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2658
    :catch_1
    move-exception v3

    .line 2659
    .local v3, "e":Ljava/lang/IllegalStateException;
    const/4 v0, -0x5

    .line 2660
    .restart local v0    # "cause":I
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(I)V

    throw v7

    .line 2575
    .end local v0    # "cause":I
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    const-wide/16 v8, 0x1

    :try_start_2
    iput-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->contentLength:J

    goto :goto_1

    .line 2582
    :cond_2
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->contentRange:Ljava/lang/String;

    goto :goto_2

    .line 2590
    :cond_3
    const/4 v7, -0x2

    iput v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->retryAfter:I

    goto :goto_3

    .line 2597
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->connection:Ljava/lang/String;

    goto :goto_4

    .line 2613
    .restart local v5    # "status":I
    :cond_5
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    if-eqz v7, :cond_6

    .line 2614
    const-string v7, "Reserve[%s] Repair[%s] Carrier[%s] Network[%s]"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-object v10, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strReserveType:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-object v10, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRepairType:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-object v10, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strCarrierId:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-object v10, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strNetworkCircuitId:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2619
    :cond_6
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v6

    .line 2620
    .local v6, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->crid:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedHttpStatus(Ljava/lang/String;I)V

    .line 2622
    new-instance v7, Lorg/apache/http/client/ClientProtocolException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "response status error["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2627
    .end local v6    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :cond_7
    const/16 v7, 0xce

    if-ne v7, v5, :cond_8

    .line 2628
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->responseNormal:Z

    .line 2629
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->handleResponseBodyNormal(Lorg/apache/http/HttpResponse;)V

    .line 2665
    :goto_5
    return-object v4

    .line 2631
    :cond_8
    if-ne v11, v5, :cond_b

    .line 2633
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v6

    .line 2634
    .restart local v6    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->crid:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedHttpStatus(Ljava/lang/String;I)V

    .line 2636
    const-string v7, "Content-Type"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 2638
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 2639
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2641
    .local v2, "contentTypeParts":[Ljava/lang/String;
    array-length v7, v2

    if-ne v7, v10, :cond_9

    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "application/xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "charset=UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2644
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->responseNormal:Z

    .line 2645
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->handleResponseBodyError(Lorg/apache/http/HttpResponse;)[B

    move-result-object v4

    goto :goto_5

    .line 2647
    :cond_9
    new-instance v7, Lorg/apache/http/client/ClientProtocolException;

    const-string v8, "contentType error "

    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2650
    .end local v2    # "contentTypeParts":[Ljava/lang/String;
    :cond_a
    new-instance v7, Lorg/apache/http/client/ClientProtocolException;

    const-string v8, "contentType null"

    invoke-direct {v7, v8}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2653
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v6    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :cond_b
    new-instance v7, Lorg/apache/http/client/ClientProtocolException;

    const-string v8, "response status error"

    invoke-direct {v7, v8}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method handleResponseBodyError(Lorg/apache/http/HttpResponse;)[B
    .locals 9
    .param p1, "aResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3079
    const/4 v0, 0x0

    .line 3080
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 3081
    .local v3, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 3084
    .local v5, "result":[B
    const v6, 0x14000

    :try_start_0
    new-array v2, v6, [B

    .line 3085
    .local v2, "buf":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3086
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 3087
    :goto_0
    const/4 v6, -0x1

    const/4 v7, 0x0

    array-length v8, v2

    invoke-virtual {v3, v2, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .local v4, "len":I
    if-eq v6, v4, :cond_2

    .line 3088
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3092
    .end local v4    # "len":I
    :catchall_0
    move-exception v6

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    if-eqz v3, :cond_0

    .line 3093
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 3095
    :cond_0
    if-eqz v0, :cond_1

    .line 3096
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    throw v6

    .line 3090
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v4    # "len":I
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 3092
    if-eqz v3, :cond_3

    .line 3093
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 3095
    :cond_3
    if-eqz v1, :cond_4

    .line 3096
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3103
    :cond_4
    return-object v5

    .line 3092
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .end local v4    # "len":I
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method handleResponseBodyNormal(Lorg/apache/http/HttpResponse;)V
    .locals 21
    .param p1, "aResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2687
    const-string v17, "Content-Type"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 2688
    .local v14, "strContentType":Ljava/lang/String;
    if-nez v14, :cond_0

    .line 2689
    new-instance v17, Lorg/apache/http/client/ClientProtocolException;

    const-string v18, "range error"

    invoke-direct/range {v17 .. v18}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2691
    :cond_0
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, "multipart/byteranges"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    .line 2697
    .local v13, "multipart":Z
    const/4 v6, 0x0

    .line 2699
    .local v6, "dsIn":Ljava/io/DataInputStream;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 2700
    .local v11, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v17, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2701
    .end local v6    # "dsIn":Ljava/io/DataInputStream;
    .local v7, "dsIn":Ljava/io/DataInputStream;
    if-nez v13, :cond_2

    .line 2702
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->handleSingleResponse(Lorg/apache/http/HttpResponse;Ljava/io/DataInputStream;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2736
    :goto_0
    if-eqz v7, :cond_1

    .line 2738
    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2747
    :cond_1
    :goto_1
    return-void

    .line 2704
    :cond_2
    :try_start_3
    const-string v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2705
    .local v5, "contentTypeArray":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 2706
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "response header="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2707
    new-instance v17, Lorg/apache/http/client/ClientProtocolException;

    const-string v18, "response header error"

    invoke-direct/range {v17 .. v18}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2729
    .end local v5    # "contentTypeArray":[Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v6, v7

    .line 2730
    .end local v7    # "dsIn":Ljava/io/DataInputStream;
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v6    # "dsIn":Ljava/io/DataInputStream;
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :goto_2
    :try_start_4
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 2732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 2734
    :cond_3
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2736
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :catchall_0
    move-exception v17

    :goto_3
    if-eqz v6, :cond_4

    .line 2738
    :try_start_5
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2741
    :cond_4
    :goto_4
    throw v17

    .line 2709
    .end local v6    # "dsIn":Ljava/io/DataInputStream;
    .restart local v5    # "contentTypeArray":[Ljava/lang/String;
    .restart local v7    # "dsIn":Ljava/io/DataInputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :cond_5
    const/4 v15, 0x0

    .line 2710
    .local v15, "trimedBoundary":Ljava/lang/String;
    move-object v2, v5

    .local v2, "arr$":[Ljava/lang/String;
    :try_start_6
    array-length v12, v2

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_5
    if-ge v10, v12, :cond_6

    aget-object v9, v2, v10

    .line 2711
    .local v9, "field":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 2712
    .local v16, "trimedField":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, "boundary"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2713
    move-object/from16 v15, v16

    .line 2717
    .end local v9    # "field":Ljava/lang/String;
    .end local v16    # "trimedField":Ljava/lang/String;
    :cond_6
    if-nez v15, :cond_8

    .line 2718
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "response header="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2719
    new-instance v17, Lorg/apache/http/client/ClientProtocolException;

    const-string v18, "response header error"

    invoke-direct/range {v17 .. v18}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2736
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "contentTypeArray":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "trimedBoundary":Ljava/lang/String;
    :catchall_1
    move-exception v17

    move-object v6, v7

    .end local v7    # "dsIn":Ljava/io/DataInputStream;
    .restart local v6    # "dsIn":Ljava/io/DataInputStream;
    goto :goto_3

    .line 2710
    .end local v6    # "dsIn":Ljava/io/DataInputStream;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v5    # "contentTypeArray":[Ljava/lang/String;
    .restart local v7    # "dsIn":Ljava/io/DataInputStream;
    .restart local v9    # "field":Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v12    # "len$":I
    .restart local v15    # "trimedBoundary":Ljava/lang/String;
    .restart local v16    # "trimedField":Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2721
    .end local v9    # "field":Ljava/lang/String;
    .end local v16    # "trimedField":Ljava/lang/String;
    :cond_8
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2722
    .local v3, "boundaryArray":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v17, 0x0

    aget-object v17, v3, v17

    const-string v18, "boundary"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 2723
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "bad multiparts boundary="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2724
    new-instance v17, Lorg/apache/http/client/ClientProtocolException;

    const-string v18, "bad multiparts boundary"

    invoke-direct/range {v17 .. v18}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2726
    :cond_a
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "--"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v18, v3, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2727
    .local v4, "boundaryValue":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->handleMultiResponse(Lorg/apache/http/HttpResponse;Ljava/io/DataInputStream;Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 2739
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "boundaryArray":[Ljava/lang/String;
    .end local v4    # "boundaryValue":Ljava/lang/String;
    .end local v5    # "contentTypeArray":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "trimedBoundary":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 2740
    .local v8, "e":Ljava/io/IOException;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2739
    .end local v7    # "dsIn":Ljava/io/DataInputStream;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v6    # "dsIn":Ljava/io/DataInputStream;
    :catch_2
    move-exception v8

    .line 2740
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v8, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2729
    .end local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto/16 :goto_2
.end method

.method protected handleSingleResponse(Lorg/apache/http/HttpResponse;Ljava/io/DataInputStream;)V
    .locals 20
    .param p1, "aResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "aIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2915
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v15, "Range"

    invoke-virtual {v14, v15}, Lorg/apache/http/client/methods/HttpGet;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 2916
    .local v10, "strReqRangeTmp":Ljava/lang/String;
    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->contentRange:Ljava/lang/String;

    if-nez v14, :cond_1

    .line 2917
    :cond_0
    const-string v14, "range null"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2918
    new-instance v14, Lorg/apache/http/client/ClientProtocolException;

    const-string v15, "range error"

    invoke-direct {v14, v15}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2920
    :cond_1
    const-string v14, "="

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2921
    .local v9, "strReqRange":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->contentRange:Ljava/lang/String;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2923
    .local v11, "strRspRange":[Ljava/lang/String;
    array-length v14, v9

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    array-length v14, v11

    const/4 v15, 0x2

    if-eq v14, v15, :cond_3

    .line 2924
    :cond_2
    const-string v14, "response range error request.length=%d response.length=%d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    array-length v0, v9

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    array-length v0, v11

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2926
    new-instance v14, Lorg/apache/http/client/ClientProtocolException;

    const-string v15, "response range error"

    invoke-direct {v14, v15}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2933
    :cond_3
    const/4 v14, 0x0

    aget-object v14, v11, v14

    const-string v15, "bytes"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 2934
    const-string v14, "bad Content-range dimention:[%s]"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, v11, v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2935
    new-instance v14, Lorg/apache/http/client/ClientProtocolException;

    const-string v15, "response range error"

    invoke-direct {v14, v15}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2941
    :cond_4
    const/4 v14, 0x1

    aget-object v14, v11, v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2942
    .local v8, "rangeValues":[Ljava/lang/String;
    array-length v14, v8

    const/4 v15, 0x2

    if-eq v14, v15, :cond_5

    .line 2943
    const-string v14, "bad Content-range rangeValues:[%s]"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v8, v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2944
    new-instance v14, Lorg/apache/http/client/ClientProtocolException;

    const-string v15, "response status error"

    invoke-direct {v14, v15}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2950
    :cond_5
    const/4 v14, 0x0

    aget-object v14, v8, v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2951
    .local v4, "fromTo":[Ljava/lang/String;
    array-length v14, v4

    const/4 v15, 0x2

    if-eq v14, v15, :cond_6

    .line 2952
    const-string v14, "bad Content-range fromTo:[%s]"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v8, v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2953
    new-instance v14, Lorg/apache/http/client/ClientProtocolException;

    const-string v15, "response status error"

    invoke-direct {v14, v15}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2958
    :cond_6
    const/4 v14, 0x0

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2959
    .local v2, "from":J
    const/4 v14, 0x1

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 2960
    .local v12, "to":J
    sub-long v14, v12, v2

    const-wide/16 v16, 0x1

    add-long v6, v14, v16

    .line 2961
    .local v6, "partSize":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->repairParts:Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    iget-object v14, v14, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    const/4 v15, 0x0

    aget-object v5, v14, v15

    .line 2962
    .local v5, "part":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-boolean v14, v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->isCompleteOnly:Z

    if-eqz v14, :cond_7

    .line 2963
    iget-wide v14, v5, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    cmp-long v14, v2, v14

    if-eqz v14, :cond_8

    .line 2964
    const-string v14, "Content-range from=%d parts.offset=%d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget-wide v0, v5, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2965
    new-instance v14, Lorg/apache/http/client/ClientProtocolException;

    const-string v15, "response status error"

    invoke-direct {v14, v15}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2968
    :cond_7
    const/4 v14, 0x1

    aget-object v14, v9, v14

    const/4 v15, 0x0

    aget-object v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 2969
    const-string v14, "response range error request=%s response=%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, v9, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    aget-object v17, v8, v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2971
    new-instance v14, Lorg/apache/http/client/ClientProtocolException;

    const-string v15, "response range error"

    invoke-direct {v14, v15}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2975
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2976
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->changeState(I)V

    .line 2978
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->repairParts:Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    iget-object v14, v14, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->handleContentParts(Ljava/io/DataInputStream;Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;J)V

    .line 2979
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->read()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    .line 2980
    const-string v14, "read over"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2986
    :cond_a
    return-void
.end method

.method repairContentsNormal([BLmmb/android/MmbFcContMw/MmbFcContMwMissingParts;JI)V
    .locals 9
    .param p1, "aCompContent"    # [B
    .param p2, "aParts"    # Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    .param p3, "aOffsetNow"    # J
    .param p5, "aLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
        }
    .end annotation

    .prologue
    .line 3136
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$700(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    move-result-object v5

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->crid:Ljava/lang/String;

    iget v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->type:I

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v5, v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkCancel(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3137
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3138
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->checkStartDecoding()V

    .line 3147
    :cond_0
    :try_start_0
    new-instance v3, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    invoke-direct {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;-><init>()V

    .line 3148
    .local v3, "repairOneParts":Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->repairParts:Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->contentLocation:Ljava/lang/String;

    iput-object v5, v3, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->contentLocation:Ljava/lang/String;

    .line 3149
    const/4 v5, 0x1

    new-array v5, v5, [Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    iput-object v5, v3, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    .line 3150
    iget-object v5, v3, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    const/4 v6, 0x0

    new-instance v7, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    invoke-direct {v7}, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;-><init>()V

    aput-object v7, v5, v6

    .line 3151
    iget-object v5, v3, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-wide v6, p2, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    add-long/2addr v6, p3

    iput-wide v6, v5, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    .line 3152
    iget-object v5, v3, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    int-to-long v6, p5

    iput-wide v6, v5, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->size:J

    .line 3153
    const/4 v5, 0x0

    invoke-static {p1, v5, p5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 3159
    .local v1, "compContent":[B
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->contentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->crid:Ljava/lang/String;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->requestInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    iget-boolean v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->isCompleteOnly:Z

    invoke-virtual {v5, v6, v3, v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->saveLossBlockData(Ljava/lang/String;Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;[BZ)I

    move-result v4

    .line 3163
    .local v4, "result":I
    if-eqz v4, :cond_1

    .line 3164
    const-string v5, "saveLossBlockData return %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3165
    const/4 v0, -0x4

    .line 3166
    .local v0, "cause":I
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(I)V

    throw v5
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3168
    .end local v0    # "cause":I
    .end local v1    # "compContent":[B
    .end local v3    # "repairOneParts":Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .end local v4    # "result":I
    :catch_0
    move-exception v2

    .line 3169
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3170
    const/4 v0, -0x4

    .line 3171
    .restart local v0    # "cause":I
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(I)V

    throw v5

    .line 3177
    .end local v0    # "cause":I
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v1    # "compContent":[B
    .restart local v3    # "repairOneParts":Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .restart local v4    # "result":I
    :cond_1
    return-void
.end method

.method setParam(Ljava/lang/String;ILmmb/android/MmbFcContMw/MmbFcContMwRepairParts;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 0
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aRepairParts"    # Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2471
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->crid:Ljava/lang/String;

    .line 2472
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->type:I

    .line 2473
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->repairParts:Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    .line 2474
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 2479
    return-void
.end method
