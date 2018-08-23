.class public Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
.source "MmbVgLogSessionSv.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method


# virtual methods
.method public saveFcLog(IJLjava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 8
    .param p1, "aCategory"    # I
    .param p2, "aTimeMS"    # J
    .param p4, "aCrid"    # Ljava/lang/String;
    .param p5, "aLabel"    # Ljava/lang/String;
    .param p6, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    .line 137
    .local v7, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getLogModule()Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    move-result-object v0

    .local v0, "logmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;
    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 140
    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->saveFcLog(IJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 142
    .end local v0    # "logmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;
    .end local v7    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    :catch_0
    move-exception v6

    .line 144
    .local v6, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public saveStLog(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aCategory"    # I
    .param p2, "aTimeMS"    # J
    .param p4, "aCrid"    # Ljava/lang/String;
    .param p5, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    .line 89
    .local v2, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getLogModule()Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    move-result-object v1

    .line 92
    .local v1, "logmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->saveStLog(IJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-void

    .line 94
    .end local v1    # "logmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;
    .end local v2    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
