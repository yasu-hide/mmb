.class abstract Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcInnerCallbackSv;
.super Ljava/lang/Object;
.source "MmbFcIndividualEventManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MmbFcInnerCallbackSv"
.end annotation


# instance fields
.field public mmbDestPid:I

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;I)V
    .locals 0
    .param p2, "aDestPid"    # I

    .prologue
    .line 178
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcInnerCallbackSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcInnerCallbackSv;->mmbDestPid:I

    .line 186
    return-void
.end method


# virtual methods
.method protected abstract doCallback(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcListenerInfoSv;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public notifyCallback()V
    .locals 10

    .prologue
    .line 206
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcInnerCallbackSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 208
    .local v1, "cbList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;>;"
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 210
    .local v5, "listCnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 212
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;

    .line 213
    .local v6, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;
    invoke-virtual {v1, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    .line 214
    .local v2, "cookie":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 215
    .local v7, "listenerInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcListenerInfoSv;
    instance-of v8, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcListenerInfoSv;

    if-eqz v8, :cond_0

    .line 216
    move-object v0, v2

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcListenerInfoSv;

    move-object v7, v0

    .line 218
    :cond_0
    iget v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcInnerCallbackSv;->mmbDestPid:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    if-eqz v7, :cond_2

    iget v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcInnerCallbackSv;->mmbDestPid:I

    iget v9, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcListenerInfoSv;->mmbSrcPid:I

    if-ne v8, v9, :cond_2

    .line 220
    :cond_1
    invoke-virtual {p0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcInnerCallbackSv;->doCallback(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcListenerInfoSv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v2    # "cookie":Ljava/lang/Object;
    .end local v6    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;
    .end local v7    # "listenerInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcListenerInfoSv;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v3

    .line 227
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 231
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v8

    :cond_3
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbFcInnerCallbackSv [getClass()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, ", mmbDestPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcInnerCallbackSv;->mmbDestPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
