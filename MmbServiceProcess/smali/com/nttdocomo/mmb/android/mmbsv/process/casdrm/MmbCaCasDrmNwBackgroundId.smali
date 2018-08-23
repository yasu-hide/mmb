.class public Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;
.source "MmbCaCasDrmNwBackgroundId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv",
        "<[B>;"
    }
.end annotation


# instance fields
.field private post:Lorg/apache/http/client/methods/HttpPost;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/DefaultHttpClient;JLjava/lang/String;)V
    .locals 0
    .param p1, "aClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "aTime"    # J
    .param p4, "aUrl"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;J)V

    .line 92
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;->url:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method abort()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 278
    return-void
.end method

.method public bridge synthetic cancel()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->cancel()V

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
    .line 49
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;->check([B)[B

    move-result-object v0

    return-object v0
.end method

.method check([B)[B
    .locals 12
    .param p1, "aResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    const v11, -0x200000a

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "pfbkgrdid":[B
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;

    invoke-direct {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;)V

    .line 136
    .local v3, "responsedata":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;
    invoke-virtual {p0, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;->checkResponseData(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;[B)V

    .line 137
    const/4 v4, 0x0

    .line 139
    .local v4, "result":I
    :try_start_0
    iget-object v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->dispslResult:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 149
    packed-switch v4, :pswitch_data_0

    .line 247
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 250
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Unknown result type. <%s> (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->dispslResult:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    throw v1

    .line 140
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 145
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Result type format error. <%s> (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->dispslResult:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    throw v1

    .line 151
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :pswitch_0
    iget-object v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->pfBkgrdId:Ljava/lang/String;

    if-eqz v5, :cond_0

    const/16 v5, 0x20

    iget-object v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->pfBkgrdId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 153
    iget-object v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->pfBkgrdId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 254
    if-nez v2, :cond_8

    .line 256
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 259
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Failed to get PF background ID. <%s> (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x0

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    throw v1

    .line 156
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v5, -0x2000009

    invoke-direct {v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 159
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] PF background ID error. <%s> (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->pfBkgrdId:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    throw v1

    .line 165
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :pswitch_1
    iget-object v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    if-eqz v5, :cond_3

    .line 166
    const-string v5, "ETPF101"

    iget-object v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;->returnCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 168
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v5, -0x200000b

    invoke-direct {v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 171
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Timeout. <%s> (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;->returnCode:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    throw v1

    .line 174
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_1
    const-string v5, "ETPF302"

    iget-object v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;->returnCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v5, -0x200000b

    invoke-direct {v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 180
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Session timeout. <%s> (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;->returnCode:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    throw v1

    .line 185
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_2
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 188
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Unknown return code. <%s> (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;->returnCode:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    throw v1

    .line 194
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_3
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 197
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Seminormal info error. <%s> (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    throw v1

    .line 202
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :pswitch_2
    iget-object v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    if-eqz v5, :cond_7

    .line 203
    const-string v5, "ETPF703"

    iget-object v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;->returnCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 205
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const/high16 v5, -0x3000000

    invoke-direct {v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 208
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Illegal request parameter. <%s> (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;->returnCode:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    throw v1

    .line 211
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_4
    const-string v5, "ETPF801"

    iget-object v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;->returnCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 213
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v5, -0x200000c

    invoke-direct {v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 216
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Illegal session info. <%s> (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;->returnCode:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    throw v1

    .line 219
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_5
    const-string v5, "ETPF999"

    iget-object v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;->returnCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 221
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v5, -0x3000008

    invoke-direct {v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 224
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Unknown server internal error. <%s> (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;->returnCode:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    throw v1

    .line 229
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_6
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 232
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Unknown return code. <%s> (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;->returnCode:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    throw v1

    .line 238
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_7
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 241
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Error info error. <%s> (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    throw v1

    .line 266
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_8
    return-object v2

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 320
    .local p1, "aResponsedata":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<[B>.MmbCaCasDrmNwResponseData;"
    return-void
.end method

.method public bridge synthetic checkResponseMainBody([B)Z
    .locals 1
    .param p1, "x0"    # [B

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->checkResponseMainBody([B)Z

    move-result v0

    return v0
.end method

.method checkRootTag(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
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
    .line 286
    .local p1, "aResponsedata":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<[B>.MmbCaCasDrmNwResponseData;"
    const-string v1, "pfBkgrdId"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    instance-of v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 288
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;

    .line 290
    .local v0, "responsedata":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;
    iput-object p3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;->pfBkgrdId:Ljava/lang/String;

    .line 296
    .end local v0    # "responsedata":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId$MmbCaCasDrmNwResponseDataPfBkgrdId;
    :cond_0
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
    .line 308
    .local p1, "aResponsedata":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<[B>.MmbCaCasDrmNwResponseData;"
    return-void
.end method

.method public bridge synthetic getNgType(B)I
    .locals 1
    .param p1, "x0"    # B

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->getNgType(B)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRFC1123CurrentTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->getRFC1123CurrentTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestMainBody()[B
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->getRequestMainBody()[B

    move-result-object v0

    return-object v0
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
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v0, "nameValuePair":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "intrfcId"

    const-string v4, "IF_TPF_005"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "requestClass"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 115
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "Date"

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;->getRFC1123CurrentTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 118
    .local v1, "postentity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 122
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;->post:Lorg/apache/http/client/methods/HttpPost;

    return-object v2
.end method

.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)[B
    .locals 1
    .param p1, "x0"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->handleResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic longerCrid([BI)[B
    .locals 1
    .param p1, "x0"    # [B
    .param p2, "x1"    # I

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->longerCrid([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic makeYoyaku(I)[B
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->makeYoyaku(I)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shorterCrid([B)[B
    .locals 1
    .param p1, "x0"    # [B

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->shorterCrid([B)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic start()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->start()V

    return-void
.end method
