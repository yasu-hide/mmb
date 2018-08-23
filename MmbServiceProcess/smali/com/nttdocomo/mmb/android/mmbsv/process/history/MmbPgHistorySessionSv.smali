.class public Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistorySessionSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
.source "MmbPgHistorySessionSv.java"


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
.method public saveHistory(ILjava/lang/String;Ljava/lang/String;IJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 11
    .param p1, "aCategory"    # I
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aTitle"    # Ljava/lang/String;
    .param p4, "aReason"    # I
    .param p5, "aTimeMS"    # J
    .param p7, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistorySessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v9

    .line 116
    .local v9, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getHistoryModule()Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;

    move-result-object v1

    .local v1, "historymoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;
    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    .line 119
    invoke-virtual/range {v1 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->saveHistory(ILjava/lang/String;Ljava/lang/String;IJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-void

    .line 121
    .end local v1    # "historymoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;
    .end local v9    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
