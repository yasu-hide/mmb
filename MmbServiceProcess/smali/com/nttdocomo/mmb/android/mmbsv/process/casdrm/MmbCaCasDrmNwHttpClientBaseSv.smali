.class abstract Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;
.super Ljava/lang/Object;
.source "MmbCaCasDrmNwHttpClientBaseSv.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;",
        "Lorg/apache/http/client/ResponseHandler",
        "<[B>;"
    }
.end annotation


# static fields
.field private static final MMBTEST_LINE_SEPARATOR:Ljava/lang/String;

.field private static final MMBTEST_LOCK:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private final client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final futuretask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->MMBTEST_LINE_SEPARATOR:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->MMBTEST_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/DefaultHttpClient;J)V
    .locals 2
    .param p1, "aClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "aTime"    # J

    .prologue
    .line 136
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->futuretask:Ljava/util/concurrent/FutureTask;

    .line 141
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 142
    iput-wide p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->time:J

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;)Ljava/util/concurrent/FutureTask;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->futuretask:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method


# virtual methods
.method abstract abort()V
.end method

.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv<TT;>;"
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->handleRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 171
    .local v1, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v2, 0x0

    .line 173
    .local v2, "response":[B
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4, v1, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "response":[B
    check-cast v2, [B
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    .restart local v2    # "response":[B
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->check([B)Ljava/lang/Object;

    move-result-object v3

    .line 189
    .local v3, "result":Ljava/lang/Object;, "TT;"
    return-object v3

    .line 174
    .end local v2    # "response":[B
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    throw v0

    .line 179
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 286
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv<TT;>;"
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->futuretask:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 287
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->abort()V

    .line 291
    return-void
.end method

.method abstract check([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation
.end method

.method public checkResponseMainBody([B)Z
    .locals 3
    .param p1, "aResponse"    # [B

    .prologue
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 725
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-eq v1, v2, :cond_1

    .line 748
    :cond_0
    :goto_0
    return v0

    .line 732
    :cond_1
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    .line 739
    const/4 v2, 0x4

    aget-byte v2, p1, v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 748
    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/CancellationException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv<TT;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->futuretask:Ljava/util/concurrent/FutureTask;

    const-wide/16 v2, 0x64

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    .line 406
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public getNgType(B)I
    .locals 5
    .param p1, "aNgType"    # B

    .prologue
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv<TT;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 534
    const/high16 v0, -0x80000000

    .line 535
    .local v0, "result":I
    packed-switch p1, :pswitch_data_0

    .line 628
    :pswitch_0
    const-string v1, "NG response: Unknown type. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    :goto_0
    return v0

    .line 538
    :pswitch_1
    const/high16 v0, -0x3000000

    .line 539
    const-string v1, "NG response: Illegal request parameter. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 543
    :pswitch_2
    const v0, -0x3000001

    .line 544
    const-string v1, "NG response: Requested initial setup by non-contracted user. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 549
    :pswitch_3
    const v0, -0x3000002

    .line 550
    const-string v1, "NG response: Requested under initial setup incompleted. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 555
    :pswitch_4
    const v0, -0x3000003

    .line 556
    const-string v1, "NG response: Invalid KL. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 560
    :pswitch_5
    const v0, -0x3000004

    .line 561
    const-string v1, "NG response: Not purchased license. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 565
    :pswitch_6
    const v0, -0x3000005

    .line 566
    const-string v1, "NG response: Forbidden to publish license by terminal condition. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 571
    :pswitch_7
    const v0, -0x3000008

    .line 572
    const-string v1, "NG response: Server internal error. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 576
    :pswitch_8
    const v0, -0x3000009

    .line 577
    const-string v1, "NG response: Expired customer ID Identifier. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 581
    :pswitch_9
    const v0, -0x300000a

    .line 582
    const-string v1, "NG response: Invalid Km. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 586
    :pswitch_a
    const v0, -0x300000b

    .line 587
    const-string v1, "NG response: Not contracted basic subscription. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 591
    :pswitch_b
    const v0, -0x300000c

    .line 592
    const-string v1, "NG response: Customer ID suspended. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 596
    :pswitch_c
    const v0, -0x300000d

    .line 597
    const-string v1, "NG response: CAS client ID suspended. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 601
    :pswitch_d
    const v0, -0x300000e

    .line 602
    const-string v1, "NG response: Illegal request parameter. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 606
    :pswitch_e
    const v0, -0x300000f

    .line 607
    const-string v1, "NG response: Forbidden to publish license by regional constraint. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 612
    :pswitch_f
    const v0, -0x3000010

    .line 613
    const-string v1, "NG response: CRID not found. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 617
    :pswitch_10
    const v0, -0x3000011

    .line 618
    const-string v1, "NG response: CAS/DRM server temporary suspended (under maintenance). <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 623
    :pswitch_11
    const v0, -0x3000012

    .line 624
    const-string v1, "NG response: Compulsory cancellation. <%d>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public getRFC1123CurrentTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 425
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv<TT;>;"
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->time:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-static {v1, v2}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public getRequestMainBody()[B
    .locals 8

    .prologue
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv<TT;>;"
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 653
    const/4 v3, 0x5

    new-array v1, v3, [B

    .line 655
    .local v1, "result":[B
    new-array v2, v6, [B

    .line 656
    .local v2, "servicekind":[B
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 657
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 658
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 659
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getCaSystemId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 660
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 661
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 663
    aget-byte v3, v2, v4

    aput-byte v3, v1, v4

    .line 664
    aget-byte v3, v2, v5

    aput-byte v3, v1, v5

    .line 666
    aput-byte v5, v1, v6

    .line 668
    const/4 v3, 0x3

    aput-byte v4, v1, v3

    .line 670
    aput-byte v4, v1, v7

    .line 674
    return-object v1
.end method

.method abstract handleRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
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
    .line 69
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv<TT;>;"
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->handleResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)[B
    .locals 13
    .param p1, "aHttpresponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv<TT;>;"
    const/16 v10, 0x1f4

    const/4 v9, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 214
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 215
    .local v7, "status":I
    const/16 v8, 0xc8

    if-eq v8, v7, :cond_2

    .line 216
    const/16 v8, 0x190

    if-gt v8, v7, :cond_0

    if-le v10, v7, :cond_0

    .line 217
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const/high16 v8, -0x2000000

    invoke-direct {v3, v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(II)V

    .line 220
    .local v3, "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v8, "[%d] Network client error. <%d>"

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    throw v3

    .line 222
    .end local v3    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_0
    if-gt v10, v7, :cond_1

    const/16 v8, 0x258

    if-le v8, v7, :cond_1

    .line 223
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v8, -0x2000001

    invoke-direct {v3, v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(II)V

    .line 226
    .restart local v3    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v8, "[%d] Network server error. <%d>"

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    throw v3

    .line 229
    .end local v3    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_1
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v8, -0x2000002

    invoke-direct {v3, v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(II)V

    .line 233
    .restart local v3    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v8, "[%d] Network other error. <%d>"

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    throw v3

    .line 236
    .end local v3    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_2
    const/4 v0, 0x0

    .line 237
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 238
    .local v4, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 241
    .local v6, "result":[B
    const/16 v8, 0x400

    :try_start_0
    new-array v2, v8, [B

    .line 242
    .local v2, "buf":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 244
    :cond_3
    const/4 v8, -0x1

    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v4, v2, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .local v5, "len":I
    if-eq v8, v5, :cond_6

    .line 245
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 246
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;->futuretask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v8}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 247
    new-instance v3, Ljava/util/concurrent/CancellationException;

    const-string v8, "Cancelled."

    invoke-direct {v3, v8}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 248
    .local v3, "ex":Ljava/util/concurrent/CancellationException;
    const-string v8, "%s (read %d bytes)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/util/concurrent/CancellationException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    .end local v3    # "ex":Ljava/util/concurrent/CancellationException;
    .end local v5    # "len":I
    :catchall_0
    move-exception v8

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    if-eqz v4, :cond_4

    .line 255
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 257
    :cond_4
    if-eqz v0, :cond_5

    .line 258
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_5
    throw v8

    .line 252
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v5    # "len":I
    :cond_6
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 254
    if-eqz v4, :cond_7

    .line 255
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 257
    :cond_7
    if-eqz v1, :cond_8

    .line 258
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 267
    :cond_8
    return-object v6

    .line 254
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .end local v5    # "len":I
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v8

    goto :goto_0
.end method

.method public longerCrid([BI)[B
    .locals 3
    .param p1, "aCrid"    # [B
    .param p2, "aLength"    # I

    .prologue
    .line 452
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv<TT;>;"
    const/4 v2, 0x0

    invoke-static {p1, v2, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 453
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 454
    aget-byte v2, v1, v0

    if-nez v2, :cond_1

    .line 455
    const/16 v2, -0x80

    aput-byte v2, v1, v0

    .line 462
    :cond_0
    return-object v1

    .line 453
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public makeYoyaku(I)[B
    .locals 2
    .param p1, "aLength"    # I

    .prologue
    .line 695
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv<TT;>;"
    new-array v0, p1, [B

    .line 696
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 700
    return-object v0
.end method

.method public shorterCrid([B)[B
    .locals 5
    .param p1, "aValue"    # [B

    .prologue
    .line 483
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv<TT;>;"
    const/4 v1, 0x0

    .line 484
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 485
    const/16 v3, -0x80

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_0

    aget-byte v3, p1, v0

    if-nez v3, :cond_2

    .line 486
    :cond_0
    move v1, v0

    .line 490
    :cond_1
    const/4 v3, 0x0

    invoke-static {p1, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 494
    .local v2, "result":[B
    return-object v2

    .line 484
    .end local v2    # "result":[B
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 363
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv<TT;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv$1;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 379
    return-void
.end method
