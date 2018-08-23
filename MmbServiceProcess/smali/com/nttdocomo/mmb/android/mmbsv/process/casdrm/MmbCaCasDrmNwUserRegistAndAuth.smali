.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;
.source "MmbCaCasDrmNwUserRegistAndAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv",
        "<[B>;"
    }
.end annotation


# instance fields
.field private carrier:Ljava/lang/String;

.field private post:Lorg/apache/http/client/methods/HttpPost;

.field private rcvrType:Ljava/lang/String;

.field private uimid:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/DefaultHttpClient;JLcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;)V
    .locals 2
    .param p1, "aClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "aTime"    # J
    .param p4, "aInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;J)V

    .line 105
    iget-object v0, p4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;->mmbUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->url:Ljava/lang/String;

    .line 106
    iget-object v0, p4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;->mmbUimid:Ljava/lang/String;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->uimid:Ljava/lang/String;

    .line 107
    iget-object v0, p4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;->mmbCarrier:Ljava/lang/String;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->carrier:Ljava/lang/String;

    .line 108
    iget-object v0, p4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;->mmbRcvrType:Ljava/lang/String;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->rcvrType:Ljava/lang/String;

    .line 112
    return-void
.end method


# virtual methods
.method abort()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 264
    return-void
.end method

.method bridge synthetic check([B)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->check([B)[B

    move-result-object v0

    return-object v0
.end method

.method check([B)[B
    .locals 11
    .param p1, "aResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    const v10, -0x200000a

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 155
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;

    invoke-direct {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;)V

    .line 156
    .local v2, "responsedata":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<[B>.MmbCaCasDrmNwResponseData;"
    invoke-virtual {p0, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->checkResponseData(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;[B)V

    .line 157
    const/4 v3, 0x0

    .line 159
    .local v3, "result":I
    :try_start_0
    iget-object v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->dispslResult:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 169
    packed-switch v3, :pswitch_data_0

    .line 241
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 244
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v4, "[%d] Unknown result type. <%s> (%s)"

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->dispslResult:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    throw v1

    .line 160
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 165
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v4, "[%d] Result type format error. <%s> (%s)"

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->dispslResult:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    throw v1

    .line 174
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :pswitch_0
    iget-object v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    if-eqz v4, :cond_1

    .line 175
    const-string v4, "ETPF101"

    iget-object v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;->returnCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v4, -0x200000b

    invoke-direct {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 181
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v4, "[%d] Timeout. <%s> (%s)"

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;->returnCode:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    throw v1

    .line 186
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 189
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v4, "[%d] Unknown return code. <%s> (%s)"

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;->returnCode:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    throw v1

    .line 195
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 198
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v4, "[%d] Seminormal info error. <%s> (%s)"

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    throw v1

    .line 203
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :pswitch_1
    iget-object v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    if-eqz v4, :cond_4

    .line 204
    const-string v4, "ETPF703"

    iget-object v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;->returnCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const/high16 v4, -0x3000000

    invoke-direct {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 209
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v4, "[%d] Illegal request parameter. <%s> (%s)"

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;->returnCode:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    throw v1

    .line 212
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_2
    const-string v4, "ETPF999"

    iget-object v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;->returnCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 215
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v4, -0x3000008

    invoke-direct {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 218
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v4, "[%d] Unknown server internal error. <%s> (%s)"

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;->returnCode:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    throw v1

    .line 223
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_3
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 226
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v4, "[%d] Unknown return code. <%s> (%s)"

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;->returnCode:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    throw v1

    .line 232
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_4
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 235
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v4, "[%d] Error info error. <%s> (%s)"

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    throw v1

    .line 252
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :pswitch_2
    const/4 v4, 0x0

    return-object v4

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method checkErrorTag(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p2, "aTag"    # Ljava/lang/String;
    .param p3, "aText"    # Ljava/lang/String;
    .param p4, "aParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv",
            "<[B>.MmbCaCasDrmNwResponseData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "aResponsedata":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<[B>.MmbCaCasDrmNwResponseData;"
    return-void
.end method

.method checkRootTag(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p2, "aTag"    # Ljava/lang/String;
    .param p3, "aText"    # Ljava/lang/String;
    .param p4, "aParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv",
            "<[B>.MmbCaCasDrmNwResponseData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "aResponsedata":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<[B>.MmbCaCasDrmNwResponseData;"
    return-void
.end method

.method checkSemiNormalTag(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p2, "aTag"    # Ljava/lang/String;
    .param p3, "aText"    # Ljava/lang/String;
    .param p4, "aParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv",
            "<[B>.MmbCaCasDrmNwResponseData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "aResponsedata":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<[B>.MmbCaCasDrmNwResponseData;"
    return-void
.end method

.method handleRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    .local v0, "nameValuePair":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "intrfcId"

    const-string v4, "IF_TPF_001"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "requestClass"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "uimId"

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->uimid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "carrier"

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->carrier:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "rcvrType"

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->rcvrType:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 137
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "Date"

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->getRFC1123CurrentTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 140
    .local v1, "postentity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 144
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->post:Lorg/apache/http/client/methods/HttpPost;

    return-object v2
.end method
