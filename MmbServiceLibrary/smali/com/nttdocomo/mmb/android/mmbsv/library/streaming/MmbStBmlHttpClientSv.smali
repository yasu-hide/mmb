.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;
.super Ljava/lang/Object;
.source "MmbStBmlHttpClientSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;,
        Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;
    }
.end annotation


# static fields
.field private static final HTTP_CONNECTION_TIMEOUT:I = 0xa

.field private static final HTTP_RECEIVE_TIMEOUT:I = 0xa

.field private static final RESPONCE_CHUNK_SIZE:I = 0x1000


# instance fields
.field protected mListSession:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;",
            ">;"
        }
    .end annotation
.end field

.field protected mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 1
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->mListSession:Ljava/util/List;

    .line 100
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 105
    return-void
.end method

.method private declared-synchronized garbageSessionList()Z
    .locals 5

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 154
    .local v1, "removelst":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->mListSession:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;

    .line 155
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->getNotified()Z

    move-result v2

    .line 156
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 157
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "removelst":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;>;"
    .end local v2    # "ret":Z
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 160
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "removelst":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 161
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->mListSession:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 167
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    monitor-exit p0

    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public cancelHttpData()Z
    .locals 5

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 217
    .local v1, "result":Z
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->mListSession:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;

    .line 218
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->setCancel()Z

    move-result v2

    .line 219
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 220
    const/4 v1, 0x1

    goto :goto_0

    .line 227
    .end local v2    # "ret":Z
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;
    :cond_1
    return v1
.end method

.method public delete()Z
    .locals 5

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, "result":Z
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->mListSession:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;

    .line 186
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->setCancel()Z

    move-result v2

    .line 187
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 188
    const/4 v1, 0x1

    goto :goto_0

    .line 192
    .end local v2    # "ret":Z
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;
    :cond_1
    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->mListSession:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 194
    monitor-exit p0

    .line 199
    return v1

    .line 194
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "aClient"    # Lorg/apache/http/client/HttpClient;
    .param p2, "aMethod"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p3, "aSession"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "ret":Lorg/apache/http/HttpResponse;
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 331
    return-object v0
.end method

.method protected getAirplaneMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 280
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 307
    :goto_0
    return v2

    .line 292
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 298
    .local v0, "airplanemodeon":I
    if-eqz v0, :cond_1

    .line 299
    const/4 v2, 0x1

    .local v2, "ret":Z
    goto :goto_0

    .line 301
    .end local v2    # "ret":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "ret":Z
    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 257
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 262
    .local v0, "ret":Landroid/content/Context;
    return-object v0
.end method

.method public getHttpData(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;
    .param p2, "aClient"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->garbageSessionList()Z

    .line 127
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;

    .end local v0    # "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;
    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;)V

    .line 128
    .restart local v0    # "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;
    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->getHttpData(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;)V

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->mListSession:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    monitor-exit p0

    .line 137
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected preCancel(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;I)V
    .locals 0
    .param p1, "aSession"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;
    .param p2, "aDataOffset"    # I

    .prologue
    .line 350
    return-void
.end method

.method protected preHttpClient(Lorg/apache/http/client/HttpClient;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;)V
    .locals 0
    .param p1, "aClient"    # Lorg/apache/http/client/HttpClient;
    .param p2, "aSession"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;

    .prologue
    .line 241
    return-void
.end method
