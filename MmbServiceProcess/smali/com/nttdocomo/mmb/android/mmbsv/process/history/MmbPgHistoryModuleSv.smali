.class public Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
.source "MmbPgHistoryModuleSv.java"


# instance fields
.field private databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

    .line 68
    return-void
.end method


# virtual methods
.method public cleanupModule()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->closeController()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

    .line 131
    :cond_0
    return-void
.end method

.method public getHistory()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 254
    .local v1, "historydata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->getDataAll()Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 272
    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .line 260
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->initDataBase()V

    .line 261
    throw v0

    .line 263
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 265
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public saveHistory(ILjava/lang/String;Ljava/lang/String;IJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 9
    .param p1, "aCategory"    # I
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aTitle"    # Ljava/lang/String;
    .param p4, "aReason"    # I
    .param p5, "aTimeMS"    # J
    .param p7, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 184
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPgHistoryConstantsSv;->isCategory(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const-string v1, "param aCategory -> error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "param aCategory -> error"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_0
    invoke-static {p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPgHistoryConstantsSv;->isReason(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    const-string v1, "param aReason -> error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "param aReason -> error"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_1
    if-nez p2, :cond_2

    .line 197
    const-string v1, "param aCrid -> null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "param aCrid -> null"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_2
    if-nez p3, :cond_3

    .line 203
    const-string v1, "param aTitle -> null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "param aTitle -> null"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v1, v2, p5

    if-lez v1, :cond_4

    .line 209
    const-string v1, "param aTimeMS -> 0 > aTimeMS"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "param aTimeMS -> 0 > aTimeMS"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->setLogData(ILjava/lang/String;Ljava/lang/String;IJ)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 221
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->initDataBase()V

    .line 222
    throw v0

    .line 224
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 226
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startupModule()V
    .locals 3

    .prologue
    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->getInstance(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

    .line 92
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->initController()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
