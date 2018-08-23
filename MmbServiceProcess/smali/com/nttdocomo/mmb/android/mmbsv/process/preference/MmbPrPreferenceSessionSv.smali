.class public Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
.source "MmbPrPreferenceSessionSv.java"


# static fields
.field private static mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;-><init>(Landroid/content/Context;)V

    .line 59
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public compareParentPassword(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aParentPassword"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1801
    const/4 v1, 0x0

    .line 1808
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->compareParentPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1821
    return v1

    .line 1810
    :catch_0
    move-exception v0

    .line 1811
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1812
    throw v0

    .line 1814
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 1815
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1816
    throw v0
.end method

.method public getAudioSound(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 924
    const/4 v1, 0x0

    .line 931
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAudioSound()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 940
    return v1

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 935
    throw v0
.end method

.method public getAutoAcquireLisence(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1485
    const/4 v1, 0x0

    .line 1492
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoAcquireLisence()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1501
    return v1

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1496
    throw v0
.end method

.method public getAutoCompletion(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1404
    const/4 v1, 0x0

    .line 1411
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoCompletion()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1420
    return v1

    .line 1413
    :catch_0
    move-exception v0

    .line 1414
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1415
    throw v0
.end method

.method public getAutoReception(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1233
    const/4 v1, 0x0

    .line 1240
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReception()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1249
    return v1

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1244
    throw v0
.end method

.method public getAutoReceptionForAutoReceive(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3123
    const/4 v1, 0x0

    .line 3130
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReceptionForAutoReceive()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3139
    return v1

    .line 3132
    :catch_0
    move-exception v0

    .line 3133
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3134
    throw v0
.end method

.method public getAutoReceptionForForceReceive(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3205
    const/4 v1, 0x0

    .line 3212
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReceptionForForceReceive()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3221
    return v1

    .line 3214
    :catch_0
    move-exception v0

    .line 3215
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3216
    throw v0
.end method

.method public getAutoReceptionForRecommend(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3042
    const/4 v1, 0x0

    .line 3049
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReceptionForRecommend()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3058
    return v1

    .line 3051
    :catch_0
    move-exception v0

    .line 3052
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3053
    throw v0
.end method

.method public getAutoRecommendInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2207
    const/4 v1, 0x0

    .line 2214
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoRecommendInfo()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2223
    return v1

    .line 2216
    :catch_0
    move-exception v0

    .line 2217
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2218
    throw v0
.end method

.method public getBmlBrowser(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 431
    const/4 v1, 0x1

    .line 438
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getBmlBrowser()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 447
    return v1

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 442
    throw v0
.end method

.method public getCaptionDisplay(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 598
    const/4 v1, 0x0

    .line 605
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getCaptionDisplay()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 614
    return v1

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 609
    throw v0
.end method

.method public getCaptionLanguage(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 679
    const/4 v1, 0x1

    .line 686
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getCaptionLanguage()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 695
    return v1

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 690
    throw v0
.end method

.method public getCompletionId(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 3
    .param p1, "aIdentification"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 280
    const-string v1, ""

    .line 287
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getCompletionId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 296
    return-object v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 291
    throw v0
.end method

.method public getCompletionThreshold(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    .locals 3
    .param p1, "aNetworkType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1916
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getCompletionThreshold(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1925
    .local v1, "threshold":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    return-object v1

    .line 1918
    .end local v1    # "threshold":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    :catch_0
    move-exception v0

    .line 1919
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1920
    throw v0
.end method

.method public getConfiguration(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 3
    .param p1, "aConfigType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2871
    const-string v1, ""

    .line 2878
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2891
    return-object v1

    .line 2880
    :catch_0
    move-exception v0

    .line 2881
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2882
    throw v0

    .line 2884
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 2885
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2886
    throw v0
.end method

.method public getContentSaveDevice(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    .locals 3
    .param p1, "aForApps"    # Z
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3283
    const/4 v1, 0x0

    .line 3290
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    if-eqz p1, :cond_0

    .line 3291
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentSaveDevice()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;

    move-result-object v1

    .line 3303
    :goto_0
    return-object v1

    .line 3293
    :cond_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentStorage()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 3296
    :catch_0
    move-exception v0

    .line 3297
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3298
    throw v0
.end method

.method public getContentSavePath(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3316
    const/4 v1, 0x0

    .line 3323
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentSavePath()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3332
    return-object v1

    .line 3325
    :catch_0
    move-exception v0

    .line 3326
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3327
    throw v0
.end method

.method public getEntityName(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 3
    .param p1, "aEntityId"    # Ljava/lang/String;
    .param p2, "aPackage"    # Ljava/lang/String;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2113
    const-string v1, ""

    .line 2120
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getEntityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2133
    return-object v1

    .line 2122
    :catch_0
    move-exception v0

    .line 2123
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2124
    throw v0

    .line 2126
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 2127
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2128
    throw v0
.end method

.method public getEpgUpdateTime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1323
    const/4 v1, 0x0

    .line 1330
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getEpgUpdateTime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1339
    return v1

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1334
    throw v0
.end method

.method public getFcCookieDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2568
    const/4 v1, 0x0

    .line 2575
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getFcCookieDelete()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2584
    return v1

    .line 2577
    :catch_0
    move-exception v0

    .line 2578
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2579
    throw v0
.end method

.method public getFcCookieSetting(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2325
    const/4 v1, 0x0

    .line 2332
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getFcCookieSetting()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2341
    return v1

    .line 2334
    :catch_0
    move-exception v0

    .line 2335
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2336
    throw v0
.end method

.method public getFcJavaScriptSetting(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2487
    const/4 v1, 0x0

    .line 2494
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getFcJavaScriptSetting()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2503
    return v1

    .line 2496
    :catch_0
    move-exception v0

    .line 2497
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2498
    throw v0
.end method

.method public getFcRefererSetting(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2406
    const/4 v1, 0x0

    .line 2413
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getFcRefererSetting()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2422
    return v1

    .line 2415
    :catch_0
    move-exception v0

    .line 2416
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2417
    throw v0
.end method

.method public getLastNetworkId(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1071
    const-string v1, ""

    .line 1078
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getLastNetworkId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1087
    return-object v1

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1082
    throw v0
.end method

.method public getLastServiceId(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 998
    const-string v1, ""

    .line 1005
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getLastServiceId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1014
    return-object v1

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1009
    throw v0
.end method

.method public getMobileInfoModelName(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2828
    const-string v1, ""

    .line 2835
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getMobileInfoModelName()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2844
    return-object v1

    .line 2837
    :catch_0
    move-exception v0

    .line 2838
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2839
    throw v0
.end method

.method public getMobileInfoOsVer(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2764
    const-string v1, ""

    .line 2771
    .local v1, "version":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getMobileInfoOsVer()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2780
    return-object v1

    .line 2773
    :catch_0
    move-exception v0

    .line 2774
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2775
    throw v0
.end method

.method public getMobileInfoSwVer(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2796
    const-string v1, ""

    .line 2803
    .local v1, "version":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getMobileInfoSwVer()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2812
    return-object v1

    .line 2805
    :catch_0
    move-exception v0

    .line 2806
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2807
    throw v0
.end method

.method public getNetworkInfoMcc(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2632
    const-string v1, ""

    .line 2639
    .local v1, "mcc":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getNetworkInfoMcc()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2648
    return-object v1

    .line 2641
    :catch_0
    move-exception v0

    .line 2642
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2643
    throw v0
.end method

.method public getNetworkInfoMnc(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2664
    const-string v1, ""

    .line 2671
    .local v1, "mnc":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getNetworkInfoMnc()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2680
    return-object v1

    .line 2673
    :catch_0
    move-exception v0

    .line 2674
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2675
    throw v0
.end method

.method public getNetworkInfoName(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2696
    const-string v1, ""

    .line 2703
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getNetworkInfoName()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2712
    return-object v1

    .line 2705
    :catch_0
    move-exception v0

    .line 2706
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2707
    throw v0
.end method

.method public getNetworkInfoType(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2732
    const/4 v1, -0x1

    .line 2739
    .local v1, "type":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getNetworkInfoType()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2748
    return v1

    .line 2741
    :catch_0
    move-exception v0

    .line 2742
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2743
    throw v0
.end method

.method public getParentalControl(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1566
    const/4 v1, 0x0

    .line 1573
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getParentalControl()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1582
    return v1

    .line 1575
    :catch_0
    move-exception v0

    .line 1576
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1577
    throw v0
.end method

.method public getParentalControlRate(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1679
    const/4 v1, 0x0

    .line 1686
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getParentalControlRate()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1695
    return v1

    .line 1688
    :catch_0
    move-exception v0

    .line 1689
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1690
    throw v0
.end method

.method public getPfBackgroundId(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 353
    const-string v1, ""

    .line 360
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getPfBackgroundId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 369
    return-object v1

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 364
    throw v0
.end method

.method public getSecureClock(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)J
    .locals 4
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2240
    const-wide/16 v2, -0x1

    .line 2247
    .local v2, "time":J
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 2260
    return-wide v2

    .line 2249
    :catch_0
    move-exception v0

    .line 2250
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2251
    throw v0

    .line 2253
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 2254
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2255
    throw v0
.end method

.method public getSuperImposeDisplay(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 760
    const/4 v1, 0x0

    .line 767
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSuperImposeDisplay()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 776
    return v1

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 771
    throw v0
.end method

.method public getSuperImposeLanguage(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 841
    const/4 v1, 0x1

    .line 848
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSuperImposeLanguage()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 857
    return v1

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 852
    throw v0
.end method

.method public getThumbnailSize(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1987
    const/4 v1, 0x0

    .line 1994
    .local v1, "thumbnail":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getThumbnailSize()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2003
    return-object v1

    .line 1996
    :catch_0
    move-exception v0

    .line 1997
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1998
    throw v0
.end method

.method public getUimIccId(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2600
    const-string v1, ""

    .line 2607
    .local v1, "iccid":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getUimIccId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2616
    return-object v1

    .line 2609
    :catch_0
    move-exception v0

    .line 2610
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2611
    throw v0
.end method

.method public getViewLogTransmission(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 517
    const/4 v1, 0x0

    .line 524
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getViewLogTransmission()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 533
    return v1

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 528
    throw v0
.end method

.method public initUserSetting(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2020
    const/4 v1, 0x0

    .line 2027
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->initUserSetting(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2036
    return v1

    .line 2029
    :catch_0
    move-exception v0

    .line 2030
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2031
    throw v0
.end method

.method public isParentPassword(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1757
    const/4 v1, 0x0

    .line 1764
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isParentPassword()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1777
    return v1

    .line 1766
    :catch_0
    move-exception v0

    .line 1767
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1768
    throw v0

    .line 1770
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 1771
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1772
    throw v0
.end method

.method public notifyApplicationMode(Z)V
    .locals 1
    .param p1, "aMode"    # Z

    .prologue
    .line 2974
    if-eqz p1, :cond_0

    .line 2976
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->changeApplicationMode()V

    .line 2978
    :cond_0
    return-void
.end method

.method public setAudioSound(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aAudioState"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 885
    const/4 v1, 0x0

    .line 892
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAudioSound(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 905
    return v1

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 896
    throw v0

    .line 898
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 899
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 900
    throw v0
.end method

.method public setAutoAcquireLisence(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aAutoAcquireLisence"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1447
    const/4 v1, 0x0

    .line 1454
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoAcquireLisence(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1467
    return v1

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1458
    throw v0

    .line 1460
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 1461
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1462
    throw v0
.end method

.method public setAutoCompletion(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aAutoCompletion"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1366
    const/4 v1, 0x0

    .line 1373
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoCompletion(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1386
    return v1

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1377
    throw v0

    .line 1379
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 1380
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1381
    throw v0
.end method

.method public setAutoReception(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aAutoReception"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1195
    const/4 v1, 0x0

    .line 1202
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoReception(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1215
    return v1

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1206
    throw v0

    .line 1208
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 1209
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1210
    throw v0
.end method

.method public setAutoReceptionForAutoReceive(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aAutoReception"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3085
    const/4 v1, 0x0

    .line 3092
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoReceptionForAutoReceive(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3105
    return v1

    .line 3094
    :catch_0
    move-exception v0

    .line 3095
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3096
    throw v0

    .line 3098
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 3099
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3100
    throw v0
.end method

.method public setAutoReceptionForForceReceive(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aAutoReception"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3167
    const/4 v1, 0x0

    .line 3174
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoReceptionForForceReceive(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3187
    return v1

    .line 3176
    :catch_0
    move-exception v0

    .line 3177
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3178
    throw v0

    .line 3180
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 3181
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3182
    throw v0
.end method

.method public setAutoReceptionForRecommend(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aAutoReception"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3004
    const/4 v1, 0x0

    .line 3011
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoReceptionForRecommend(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3024
    return v1

    .line 3013
    :catch_0
    move-exception v0

    .line 3014
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3015
    throw v0

    .line 3017
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 3018
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3019
    throw v0
.end method

.method public setAutoRecommendInfo(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aFlag"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2161
    const/4 v1, 0x0

    .line 2167
    .local v1, "result":I
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2171
    const/4 v2, 0x1

    .line 2189
    :goto_0
    return v2

    .line 2176
    :cond_0
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoRecommendInfo(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 2189
    goto :goto_0

    .line 2178
    :catch_0
    move-exception v0

    .line 2179
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2180
    throw v0

    .line 2182
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 2183
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2184
    throw v0
.end method

.method public setBmlBrowser(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aDisplay"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 394
    const/4 v1, 0x0

    .line 401
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setBmlBrowser(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 414
    return v1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 405
    throw v0

    .line 407
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 408
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 409
    throw v0
.end method

.method public setCaptionDisplay(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCaptionDisplay"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 560
    const/4 v1, 0x0

    .line 567
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setCaptionDisplay(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 580
    return v1

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 571
    throw v0

    .line 573
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 574
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 575
    throw v0
.end method

.method public setCaptionLanguage(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCaptionLanguage"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 641
    const/4 v1, 0x0

    .line 648
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setCaptionLanguage(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 661
    return v1

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 652
    throw v0

    .line 654
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 655
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 656
    throw v0
.end method

.method public setCompletionId(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aIdentification"    # Ljava/lang/String;
    .param p2, "aCpId"    # Ljava/lang/String;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 253
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setCompletionId(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 266
    return v1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 257
    throw v0

    .line 259
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 260
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 261
    throw v0
.end method

.method public setCompletionThreshold(IIILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aNetworkType"    # I
    .param p2, "aThresholdsize"    # I
    .param p3, "aThresholdrate"    # I
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1853
    const/4 v1, 0x0

    .line 1859
    .local v1, "result":I
    invoke-virtual {p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1863
    const/4 v2, 0x1

    .line 1881
    :goto_0
    return v2

    .line 1868
    :cond_0
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setCompletionThreshold(III)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 1881
    goto :goto_0

    .line 1870
    :catch_0
    move-exception v0

    .line 1871
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1872
    throw v0

    .line 1874
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 1875
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1876
    throw v0
.end method

.method public setContentSaveDevice(IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aContentType"    # I
    .param p2, "aSaveDevice"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3245
    const/4 v1, 0x0

    .line 3252
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setContentSaveDevice(II)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3265
    return v1

    .line 3254
    :catch_0
    move-exception v0

    .line 3255
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3256
    throw v0

    .line 3258
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 3259
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3260
    throw v0
.end method

.method public setEntityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aEntityId"    # Ljava/lang/String;
    .param p2, "aEntityName"    # Ljava/lang/String;
    .param p3, "aPackage"    # Ljava/lang/String;
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2069
    const/4 v1, 0x0

    .line 2076
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setEntityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2089
    return v1

    .line 2078
    :catch_0
    move-exception v0

    .line 2079
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2080
    throw v0

    .line 2082
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 2083
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2084
    throw v0
.end method

.method public setEpgUpdateTime(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aEpgUpdateTime"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1279
    const/4 v1, 0x0

    .line 1286
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setEpgUpdateTime(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 1303
    return v1

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1290
    throw v0

    .line 1292
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 1293
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1294
    throw v0

    .line 1296
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v0

    .line 1297
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1298
    throw v0
.end method

.method public setFcCookieDelete(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aFlag"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2530
    const/4 v1, 0x0

    .line 2537
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setFcCookieDelete(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2550
    return v1

    .line 2539
    :catch_0
    move-exception v0

    .line 2540
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2541
    throw v0

    .line 2543
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 2544
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2545
    throw v0
.end method

.method public setFcCookieSetting(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aFlag"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2287
    const/4 v1, 0x0

    .line 2294
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setFcCookieSetting(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2307
    return v1

    .line 2296
    :catch_0
    move-exception v0

    .line 2297
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2298
    throw v0

    .line 2300
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 2301
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2302
    throw v0
.end method

.method public setFcJavaScriptSetting(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aFlag"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2449
    const/4 v1, 0x0

    .line 2456
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setFcJavaScriptSetting(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2469
    return v1

    .line 2458
    :catch_0
    move-exception v0

    .line 2459
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2460
    throw v0

    .line 2462
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 2463
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2464
    throw v0
.end method

.method public setFcRefererSetting(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aFlag"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2368
    const/4 v1, 0x0

    .line 2375
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setFcRefererSetting(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2388
    return v1

    .line 2377
    :catch_0
    move-exception v0

    .line 2378
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2379
    throw v0

    .line 2381
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 2382
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2383
    throw v0
.end method

.method public setInitializeData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aInitData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2911
    const/4 v1, 0x0

    .line 2918
    .local v1, "ret":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setInitializeData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2919
    const/4 v1, 0x1

    .line 2927
    return v1

    .line 2920
    :catch_0
    move-exception v0

    .line 2921
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2922
    throw v0
.end method

.method public setLastNetworkId(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aNetworkId"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1037
    const/4 v1, 0x0

    .line 1044
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setLastNetworkId(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1057
    return v1

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1048
    throw v0

    .line 1050
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 1051
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1052
    throw v0
.end method

.method public setLastServiceId(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aServiceId"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 963
    const/4 v1, 0x0

    .line 970
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setLastServiceId(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 983
    return v1

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 974
    throw v0

    .line 976
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 977
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 978
    throw v0
.end method

.method public setParentPassword(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aParentPassword"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1718
    const/4 v1, 0x0

    .line 1725
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setParentPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1738
    return v1

    .line 1727
    :catch_0
    move-exception v0

    .line 1728
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1729
    throw v0

    .line 1731
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 1732
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1733
    throw v0
.end method

.method public setParentalControl(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aParentalControl"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1528
    const/4 v1, 0x0

    .line 1535
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setParentalControl(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1548
    return v1

    .line 1537
    :catch_0
    move-exception v0

    .line 1538
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1539
    throw v0

    .line 1541
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 1542
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1543
    throw v0
.end method

.method public setParentalControlRate(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aParentalControlRate"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1625
    const/4 v1, 0x0

    .line 1632
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setParentalControlRate(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1645
    return v1

    .line 1634
    :catch_0
    move-exception v0

    .line 1635
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1636
    throw v0

    .line 1638
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 1639
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1640
    throw v0
.end method

.method public setPfBackgroundId(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aPfId"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 318
    const/4 v1, 0x0

    .line 325
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setPfBackgroundId(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 338
    return v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 329
    throw v0

    .line 331
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 332
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 333
    throw v0
.end method

.method public setServerUrl(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 2
    .param p1, "aServerData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2952
    const/4 v0, 0x0

    .line 2954
    .local v0, "ret":I
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setServerUrl(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2955
    const/4 v0, 0x1

    .line 2960
    return v0
.end method

.method public setSuperImposeDisplay(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aSuperImposeDisplay"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 722
    const/4 v1, 0x0

    .line 729
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setSuperImposeDisplay(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 742
    return v1

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 733
    throw v0

    .line 735
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 736
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 737
    throw v0
.end method

.method public setSuperImposeLanguage(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aSuperImposeLanguage"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 803
    const/4 v1, 0x1

    .line 810
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setSuperImposeLanguage(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 823
    return v1

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 814
    throw v0

    .line 816
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 817
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 818
    throw v0
.end method

.method public setThumbnailSize(IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aWidth"    # I
    .param p2, "aHeight"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1952
    const/4 v1, 0x0

    .line 1959
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setThumbnailSize(II)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1972
    return v1

    .line 1961
    :catch_0
    move-exception v0

    .line 1962
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1963
    throw v0

    .line 1965
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 1966
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1967
    throw v0
.end method

.method public setViewLogTransmission(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aViewLogTransmission"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 472
    const/4 v1, 0x0

    .line 478
    .local v1, "result":I
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 482
    const/4 v2, 0x1

    .line 500
    :goto_0
    return v2

    .line 487
    :cond_0
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->mPrModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setViewLogTransmission(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 500
    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 491
    throw v0

    .line 493
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 494
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 495
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3345
    const-string v0, "MmbPrPreferenceSessionSv []"

    return-object v0
.end method
