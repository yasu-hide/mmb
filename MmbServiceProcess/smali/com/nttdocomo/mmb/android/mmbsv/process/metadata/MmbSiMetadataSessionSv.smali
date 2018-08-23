.class public Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
.source "MmbSiMetadataSessionSv.java"


# static fields
.field private static final MMB_META_LOCK:Ljava/lang/Object;


# instance fields
.field private gatherMmbSiInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->MMB_META_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->gatherMmbSiInfo:Z

    .line 71
    return-void
.end method


# virtual methods
.method public checkDatabaseVersion(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 2
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->checkDatabaseVersion()I

    move-result v0

    .line 1135
    .local v0, "result":I
    return v0
.end method

.method public gatherMmbSiInfSvByFragmentVersionFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 5
    .param p1, "aFragmentVersion"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    if-nez p1, :cond_0

    .line 306
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 309
    :cond_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->MMB_META_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 310
    :try_start_0
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->gatherMmbSiInfo:Z

    if-ne v4, v1, :cond_1

    .line 311
    const-string v1, "Just do it"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    monitor-exit v2

    .line 350
    :goto_0
    return-void

    .line 317
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->gatherMmbSiInfo:Z

    .line 318
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 324
    const-string v1, "application not mmbi"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 328
    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p2, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setProgress(II)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 345
    :goto_1
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->gatherMmbSiInfo:Z

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 331
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 345
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_1
    move-exception v1

    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->gatherMmbSiInfo:Z

    throw v1

    .line 332
    :catch_1
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 334
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 340
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->gatherMmbSiInfSvByFragmentVersionFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method public gatherMmbSiInfSvByPeriodFromNet(JJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 9
    .param p1, "aStartTime"    # J
    .param p3, "aEndTime"    # J
    .param p5, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 221
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->MMB_META_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 222
    :try_start_0
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->gatherMmbSiInfo:Z

    if-ne v3, v1, :cond_0

    .line 223
    const-string v1, "Just do it"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    monitor-exit v2

    .line 262
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->gatherMmbSiInfo:Z

    .line 230
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    if-eqz p5, :cond_1

    :try_start_1
    invoke-virtual {p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    const-string v1, "application not mmbi"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setProgress(II)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 257
    :goto_1
    iput-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->gatherMmbSiInfo:Z

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 243
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 257
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_1
    move-exception v1

    iput-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->gatherMmbSiInfo:Z

    throw v1

    .line 244
    :catch_1
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 246
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 252
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->gatherMmbSiInfSvByPeriodFromNet(JJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method public gatherMmbSiInfSvFromAir(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 1
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->gatherMmbSiInfSvFromAir(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 387
    return-void
.end method

.method public gatherMmbSiInfSvFromNet(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 5
    .param p1, "aGatherType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->MMB_META_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 137
    :try_start_0
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->gatherMmbSiInfo:Z

    if-ne v4, v1, :cond_0

    .line 138
    const-string v1, "Just do it"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    monitor-exit v2

    .line 177
    :goto_0
    return-void

    .line 144
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->gatherMmbSiInfo:Z

    .line 145
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    const-string v1, "application not mmbi"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p2, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setProgress(II)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    :goto_1
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->gatherMmbSiInfo:Z

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 158
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 172
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_1
    move-exception v1

    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->gatherMmbSiInfo:Z

    throw v1

    .line 159
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 161
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->gatherMmbSiInfSvFromNet(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method public getDictionary(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 2
    .param p1, "aDictionaryType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getDictionary(I)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public getDictionaryNameFromTermId(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 2
    .param p1, "aTermId"    # Ljava/lang/String;
    .param p2, "aLanguage"    # Ljava/lang/String;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getDictionaryNameFromTermId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public getDictionaryTermIdFromName(ILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    .locals 2
    .param p1, "aDictionaryType"    # I
    .param p2, "aTag"    # Ljava/lang/String;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 937
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getDictionaryTermIdFromName(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 943
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getFragmentVersion(IJJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)J
    .locals 8
    .param p1, "aContentType"    # I
    .param p2, "aStartTime"    # J
    .param p4, "aEndTime"    # J
    .param p6, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1101
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getFragmentVersion(IJJ)J

    move-result-wide v6

    .line 1107
    .local v6, "result":J
    return-wide v6
.end method

.method public getLogoImage(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "aUri"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getLogoImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1072
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public initDictionary(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 1
    .param p1, "aDictionaryType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->initDictionary(I)V

    .line 774
    return-void
.end method

.method public initMmbSiInfSv(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 1
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->initMmbSiInfSv()V

    .line 97
    return-void
.end method

.method public searchMmbSiInfSvByCridFromNet(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;
    .locals 3
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;"
        }
    .end annotation

    .prologue
    .line 980
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 981
    const-string v1, "application not mmbi"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 982
    const/4 v0, 0x0

    .line 991
    :goto_0
    return-object v0

    .line 985
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->searchMmbSiInfSvByCridFromNet(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;

    move-result-object v0

    .line 991
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;
    goto :goto_0
.end method

.method public searchMmbSiInfSvByFreewordFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    .locals 3
    .param p1, "aFreeword"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1028
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1029
    const-string v1, "application not mmbi"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1030
    const/4 v0, 0x0

    .line 1039
    :goto_0
    return-object v0

    .line 1033
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->searchMmbSiInfSvByFreewordFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;

    move-result-object v0

    .line 1039
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public updateDatabaseVersion(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 2
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->updateDatabaseVersion()I

    move-result v0

    .line 1162
    .local v0, "result":I
    return v0
.end method

.method public updateDictionary(ILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 1
    .param p1, "aDictionaryType"    # I
    .param p2, "aPath"    # Ljava/lang/String;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->updateDictionary(ILjava/lang/String;)V

    .line 646
    return-void
.end method
