.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;
.super Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;
.source "MmbCaCasDrmMwCasAuthenticateProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseProcess"
.end annotation


# instance fields
.field private mResReceiveData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

.field private mResSender:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

.field private mResType:B

.field final synthetic this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;


# direct methods
.method constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;B)V
    .locals 1
    .param p2, "aListener"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;
    .param p3, "aSender"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;
    .param p4, "aType"    # B

    .prologue
    .line 235
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;

    .line 236
    invoke-direct {p0, p2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;)V

    .line 239
    if-nez p3, :cond_0

    .line 240
    const-string v0, "null == aSender"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 244
    :cond_0
    iput-object p3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;->mResSender:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

    .line 245
    iput-byte p4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;->mResType:B

    .line 247
    return-void
.end method


# virtual methods
.method varargs action([Ljava/lang/Object;)I
    .locals 8
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 278
    aget-object v4, p1, v7

    check-cast v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    iput-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;->mResReceiveData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .line 279
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;->mResReceiveData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v1

    .line 281
    .local v1, "casResultData":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;

    iget-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->access$100(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;)I

    move-result v5

    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getData()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->createAuthenticateData(ILjava/lang/Object;)[B

    move-result-object v0

    .line 284
    .local v0, "authenticateData":[B
    iget-byte v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;->mResType:B

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v3

    .line 288
    .local v3, "tvData":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    :try_start_0
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;->mResSender:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

    invoke-interface {v4, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;->send(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    const/4 v4, 0x2

    return v4

    .line 289
    :catch_0
    move-exception v2

    .line 290
    .local v2, "ex":Ljava/io/IOException;
    const-string v4, "IOException"

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 291
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method varargs onCanExecute([Ljava/lang/Object;)Z
    .locals 6
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 259
    aget-object v0, p1, v1

    check-cast v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .line 260
    .local v0, "tvData":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->access$000(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;)B

    move-result v3

    iget-object v4, v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mType:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_0

    .line 261
    const-string v3, "mType != tvData.mType[0]"

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 262
    const-string v3, "mType == %d, tvData.mType[0] == %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->access$000(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mType:[B

    aget-byte v5, v5, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 266
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
