.class public Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
.source "MmbCaCasDrmClientSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv$MmbCaCasDrmEventCallerSv;
    }
.end annotation


# static fields
.field private static caSystemId:Ljava/lang/Integer;

.field static context:Landroid/content/Context;

.field static data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

.field static network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->context:Landroid/content/Context;

    .line 73
    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    .line 76
    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    .line 82
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->caSystemId:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;-><init>(Landroid/content/Context;)V

    .line 104
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 105
    sput-object p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->context:Landroid/content/Context;

    .line 110
    :cond_0
    return-void
.end method

.method private checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V
    .locals 2
    .param p1, "aEx"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    .prologue
    .line 2545
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    packed-switch v1, :pswitch_data_0

    .line 2558
    return-void

    .line 2548
    :pswitch_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2549
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2550
    throw v0

    .line 2545
    nop

    :pswitch_data_0
    .packed-switch -0x80000000
        :pswitch_0
    .end packed-switch
.end method

.method static getCaSystemId()I
    .locals 3

    .prologue
    .line 2971
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->caSystemId:Ljava/lang/Integer;

    monitor-enter v1

    .line 2972
    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->caSystemId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2973
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getCaSystemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->caSystemId:Ljava/lang/Integer;

    .line 2975
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2979
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->caSystemId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 2975
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addLicenseInfo(BLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 7
    .param p1, "aEntityId"    # B
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1976
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 1977
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v2, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 1979
    .local v2, "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 1980
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkCrid(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {v2, p3, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->addLicenseInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;BLjava/lang/String;)V

    .line 1982
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1995
    .local v3, "result":Ljava/lang/Integer;
    return-object v3

    .line 1983
    .end local v2    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
    .end local v3    # "result":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 1984
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1985
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1986
    throw v0

    .line 1987
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 1988
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1989
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1990
    throw v1
.end method

.method public autoGetLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 8
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 889
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    .line 893
    .local v1, "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkForeignMode()I

    move-result v4

    .line 894
    .local v4, "foreignMode":I
    if-nez v4, :cond_0

    .line 896
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkRequiresTierUpdatingAll(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    .end local v1    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v4    # "foreignMode":I
    :cond_0
    :goto_0
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 907
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v0, v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 909
    .local v0, "automanager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->autoGetLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 925
    .end local v0    # "automanager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;
    :goto_1
    return-void

    .line 898
    :catch_0
    move-exception v3

    .line 899
    .local v3, "err":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 910
    .end local v3    # "err":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 912
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :try_start_2
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 913
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 914
    :catch_2
    move-exception v5

    goto :goto_1

    .line 918
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_3
    move-exception v2

    .line 920
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method checkAuthority(Ljava/lang/String;)V
    .locals 5
    .param p1, "aAuthority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 2610
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 2616
    return-void

    .line 2618
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v1, -0x1

    const-string v2, "Authority is out of range."

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 2621
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s (%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2622
    throw v0
.end method

.method public checkCasdrmInvoked()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1567
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkCasdrmInvoked(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1571
    .local v0, "result":I
    return v0
.end method

.method checkCasdrmInvoked(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 7
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1597
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v2, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 1600
    .local v2, "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->checkCasdrmInvoked(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1601
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1614
    .local v3, "result":Ljava/lang/Integer;
    return-object v3

    .line 1602
    .end local v3    # "result":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 1603
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1604
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1605
    throw v0

    .line 1606
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 1607
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1608
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1609
    throw v1
.end method

.method checkCrid(Ljava/lang/String;)V
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2647
    if-eqz p1, :cond_0

    const/16 v3, 0xff

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 2648
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getCrid2Authority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2650
    .local v0, "authority":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkAuthority(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2661
    return-void

    .line 2651
    :catch_0
    move-exception v1

    .line 2652
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v3, "CRID format error."

    invoke-direct {v2, v5, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 2655
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2656
    throw v2

    .line 2663
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v3, "CRID format error."

    invoke-direct {v2, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 2666
    .restart local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2667
    throw v2
.end method

.method checkEntityid(B)V
    .locals 10
    .param p1, "aEntityid"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 2577
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getAllEntityId()[B

    move-result-object v2

    .line 2578
    .local v2, "entityids":[B
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-byte v1, v0, v4

    .line 2579
    .local v1, "entityid":B
    if-ne v1, p1, :cond_0

    .line 2583
    return-void

    .line 2578
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2586
    .end local v1    # "entityid":B
    :cond_1
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v6, -0x1

    const-string v7, "Entityid is out of range."

    invoke-direct {v3, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 2589
    .local v3, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v6, "[%d] %s (%d)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2590
    throw v3
.end method

.method public varargs checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V
    .locals 10
    .param p1, "aEntityid"    # B
    .param p2, "aCheckInfo"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 414
    :try_start_0
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v6, v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 418
    .local v6, "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 419
    if-eqz p2, :cond_1

    .line 420
    move-object v0, p2

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v4, v0, v3

    .line 421
    .local v4, "info":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;
    if-eqz v4, :cond_0

    .line 422
    iget-object v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkCrid(Ljava/lang/String;)V

    .line 420
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;
    .end local v3    # "i$":I
    .end local v4    # "info":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;
    .end local v5    # "len$":I
    :cond_1
    invoke-virtual {v6, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 438
    return-void

    .line 427
    .end local v6    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 429
    throw v1

    .line 430
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 431
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 433
    throw v2
.end method

.method checkPurchaseId(Ljava/lang/String;)V
    .locals 5
    .param p1, "aPurchaseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 2687
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x18

    if-gt v1, v2, :cond_0

    .line 2693
    return-void

    .line 2695
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v1, -0x1

    const-string v2, "PurchaseId is out of range."

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 2698
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s (%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2699
    throw v0
.end method

.method checkRequiresTierUpdating(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z
    .locals 7
    .param p1, "aEntityId"    # B
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2725
    const/4 v3, 0x0

    .line 2728
    .local v3, "result":Z
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 2729
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v2, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 2731
    .local v2, "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 2732
    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->checkRequiresTierUpdating(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 2745
    .end local v2    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    :goto_0
    return v3

    .line 2733
    :catch_0
    move-exception v0

    .line 2734
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 2735
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2737
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 2738
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2739
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2740
    throw v1
.end method

.method public checkRequiresTierUpdatingAll(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 2889
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 2890
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 2893
    .local v2, "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->checkRequiresTierUpdatingAll(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2907
    return-void

    .line 2894
    .end local v2    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    :catch_0
    move-exception v0

    .line 2895
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 2896
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2897
    throw v0

    .line 2898
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 2899
    .local v0, "err":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2900
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2901
    throw v1
.end method

.method checkSdCardChanged()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 2930
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    const-string v5, "SdCardVolumeId"

    invoke-virtual {v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->getPreferenceValueInt(Ljava/lang/String;I)I

    move-result v3

    .line 2935
    .local v3, "prevSdVolId":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v0

    .line 2936
    .local v0, "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkSdCardChanged(I)I

    move-result v2

    .line 2937
    .local v2, "nowSdVolId":I
    if-eq v2, v6, :cond_0

    .line 2943
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v1

    .line 2945
    .local v1, "ipcStub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->updatePurchaseHistory(Z)V

    .line 2948
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    const-string v5, "SdCardVolumeId"

    invoke-virtual {v4, v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->setPreferenceValue(Ljava/lang/String;I)V

    .line 2953
    .end local v1    # "ipcStub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    :cond_0
    return-void
.end method

.method checkStartupMode(Z)Z
    .locals 5
    .param p1, "aThrowFlag"    # Z

    .prologue
    .line 3089
    const/4 v2, 0x1

    .line 3090
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    .line 3091
    .local v1, "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getStartupMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 3093
    if-eqz p1, :cond_0

    .line 3095
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/16 v3, -0x16

    const-string v4, "CAS/DRM function is Not action for LIMITED MODE"

    invoke-direct {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 3099
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v0

    .line 3101
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    const/4 v2, 0x0

    .line 3106
    :cond_1
    return v2
.end method

.method public checkSupportCasFunction()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 954
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 955
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkSupportCasFunction()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 967
    return-void

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 958
    throw v0

    .line 959
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 961
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 962
    throw v1
.end method

.method public cleanupModule()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 223
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->secureAccess(Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 228
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->close()V

    .line 229
    sput-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    .line 230
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->shutdown()V

    .line 231
    sput-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    .line 233
    :try_start_1
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->uninitialize()V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->clearClient()V

    .line 244
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->checkServiceFatalException(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 236
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->clearClient()V

    throw v1

    .line 224
    :catch_1
    move-exception v0

    .line 225
    .restart local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->checkServiceFatalException(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 226
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 228
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catchall_1
    move-exception v1

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->close()V

    .line 229
    sput-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    .line 230
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->shutdown()V

    .line 231
    sput-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    .line 233
    :try_start_4
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->uninitialize()V
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 238
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->clearClient()V

    throw v1

    .line 234
    :catch_2
    move-exception v0

    .line 235
    .restart local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :try_start_5
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->checkServiceFatalException(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 236
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 238
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catchall_2
    move-exception v1

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->clearClient()V

    throw v1
.end method

.method public clearLicenseDeleteHistory(Ljava/lang/String;)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1510
    :try_start_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;-><init>()V

    .line 1512
    .local v2, "ldhDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;
    iput-object p1, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbCrid:Ljava/lang/String;

    .line 1513
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteLicenseDeleteHistoryByCrid(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1526
    return-void

    .line 1514
    .end local v2    # "ldhDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;
    :catch_0
    move-exception v0

    .line 1515
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1516
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1517
    throw v0

    .line 1518
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 1519
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1520
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1521
    throw v1
.end method

.method public countCridInfo()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 730
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 731
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 732
    .local v3, "general":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;->getRegisterableCridInfo()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 744
    .local v0, "cnt":I
    return v0

    .line 733
    .end local v0    # "cnt":I
    .end local v3    # "general":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
    :catch_0
    move-exception v1

    .line 734
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 735
    throw v1

    .line 736
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 737
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 738
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 739
    throw v2
.end method

.method deleteContractInfo(BLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 7
    .param p1, "aEntityid"    # B
    .param p2, "aAuthority"    # Ljava/lang/String;
    .param p3, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1835
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 1836
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v0, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 1838
    .local v0, "contractmanager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 1839
    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->deleteContractInfo(BLjava/lang/String;)V

    .line 1840
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1853
    .local v3, "result":Ljava/lang/Integer;
    return-object v3

    .line 1841
    .end local v0    # "contractmanager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .end local v3    # "result":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 1842
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1843
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1844
    throw v1

    .line 1845
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 1846
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1847
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1848
    throw v2
.end method

.method deletePremiumContractInfo(BLjava/lang/String;Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 10
    .param p1, "aEntityid"    # B
    .param p2, "aAuthority"    # Ljava/lang/String;
    .param p4, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 2197
    .local p3, "aPurchaseidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 2198
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v3, v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 2200
    .local v3, "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 2201
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkAuthority(Ljava/lang/String;)V

    .line 2202
    if-eqz p3, :cond_0

    .line 2203
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2204
    .local v4, "puid":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkPurchaseId(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2215
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .end local v4    # "puid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2216
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 2217
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2218
    throw v0

    .line 2207
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v3    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v6, -0x1

    const-string v7, "Invalid PurchaseId list."

    invoke-direct {v1, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 2210
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v6, "[%d] %s (%d)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2211
    throw v1
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2219
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    :catch_1
    move-exception v0

    .line 2220
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2221
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2222
    throw v1

    .line 2213
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    :cond_1
    :try_start_2
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->deletePremiumContractInfo(BLjava/lang/String;Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2214
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 2227
    .local v5, "result":Ljava/lang/Integer;
    return-object v5
.end method

.method getAccumulatedFlag(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2496
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 2497
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v0, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 2499
    .local v0, "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkCrid(Ljava/lang/String;)V

    .line 2500
    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getAccumulatedFlag(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 2512
    .local v3, "result":Ljava/lang/Integer;
    return-object v3

    .line 2501
    .end local v0    # "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .end local v3    # "result":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 2502
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 2503
    throw v1

    .line 2504
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 2505
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2506
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2507
    throw v2
.end method

.method public getLicenseDeleteStatus(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aLicenseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1466
    const/4 v2, 0x0

    .line 1468
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->checkLicenseDeleteHistory(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1480
    return v2

    .line 1469
    :catch_0
    move-exception v0

    .line 1470
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1471
    throw v0

    .line 1472
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 1473
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1474
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1475
    throw v1
.end method

.method public varargs getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V
    .locals 10
    .param p1, "aEntityid"    # B
    .param p2, "aLicenseInfo"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 664
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 665
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v6, v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 667
    .local v6, "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 668
    if-eqz p2, :cond_1

    .line 669
    move-object v0, p2

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v4, v0, v3

    .line 670
    .local v4, "info":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    if-eqz v4, :cond_0

    .line 671
    iget-object v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkCrid(Ljava/lang/String;)V

    .line 669
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 675
    .end local v0    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    .end local v3    # "i$":I
    .end local v4    # "info":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    .end local v5    # "len$":I
    :cond_1
    invoke-virtual {v6, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 687
    return-void

    .line 676
    .end local v6    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
    :catch_0
    move-exception v1

    .line 677
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 678
    throw v1

    .line 679
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 680
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 681
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 682
    throw v2
.end method

.method public getPurchaseStatus(BLjava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)I
    .locals 7
    .param p1, "aEntityid"    # B
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aInfobase"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1058
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 1059
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v0, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 1061
    .local v0, "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 1062
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkCrid(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getPurchaseStatus(BLjava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 1075
    .local v3, "result":I
    return v3

    .line 1064
    .end local v0    # "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .end local v3    # "result":I
    :catch_0
    move-exception v1

    .line 1065
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1066
    throw v1

    .line 1067
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 1068
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1069
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1070
    throw v2
.end method

.method public getPurchaseStatus(B[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Ljava/util/List;
    .locals 7
    .param p1, "aEntityid"    # B
    .param p2, "aPurchaseInfoList"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .param p3, "aInfobase"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B[",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1417
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 1418
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v0, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 1420
    .local v0, "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 1421
    invoke-virtual {v0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getPurchaseStatus(B[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1433
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-object v3

    .line 1422
    .end local v0    # "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 1423
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1424
    throw v1

    .line 1425
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 1426
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1427
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1428
    throw v2
.end method

.method public getPurchaseStatus(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;)V
    .locals 17
    .param p1, "aEntityid"    # B
    .param p2, "aCheckPurchaseInfoList"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1128
    const/4 v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 1131
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 1132
    if-eqz p2, :cond_1

    .line 1133
    move-object/from16 v2, p2

    .local v2, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move v9, v8

    .end local v2    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v4, v2, v9

    .line 1134
    .local v4, "checkPurchaseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    iget-object v13, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkCrid(Ljava/lang/String;)V

    .line 1135
    iget-object v13, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbMemberOf:[Ljava/lang/String;

    if-eqz v13, :cond_0

    .line 1136
    iget-object v3, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbMemberOf:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v8, 0x0

    .end local v9    # "i$":I
    .restart local v8    # "i$":I
    :goto_1
    if-ge v8, v11, :cond_0

    aget-object v12, v3, v8

    .line 1137
    .local v12, "memberOf":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkCrid(Ljava/lang/String;)V

    .line 1136
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1133
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "memberOf":Ljava/lang/String;
    :cond_0
    add-int/lit8 v8, v9, 0x1

    .restart local v8    # "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto :goto_0

    .line 1143
    .end local v4    # "checkPurchaseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    .end local v9    # "i$":I
    :cond_1
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v13, -0x1

    const-string v14, "Invalid PurchaseId list."

    invoke-direct {v7, v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 1146
    .local v7, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v13, "[%d] %s (%d)"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x0

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1147
    throw v7
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1154
    .end local v7    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_0
    move-exception v6

    .line 1155
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1156
    throw v6

    .line 1151
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v9    # "i$":I
    :cond_2
    :try_start_1
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v13

    sget-object v14, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v15, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v5, v13, v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 1153
    .local v5, "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getPurchaseStatusExt(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1165
    return-void

    .line 1157
    .end local v5    # "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .end local v9    # "i$":I
    :catch_1
    move-exception v6

    .line 1158
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1159
    .local v7, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1160
    throw v7
.end method

.method getServerCertificate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2352
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    const-string v2, "mmbtestca"

    const-string v3, "NONE"

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->getPreferenceValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2355
    .local v0, "result":Ljava/lang/String;
    const-string v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2356
    const/4 v0, 0x0

    .line 2361
    :cond_0
    return-object v0
.end method

.method public getSubscribedAuthorities()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 994
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v1, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 997
    .local v1, "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    :try_start_0
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getSubscribedAuthorities()Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1009
    .local v0, "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0

    .line 998
    .end local v0    # "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 999
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1000
    throw v2

    .line 1001
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v2

    .line 1002
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1003
    .local v3, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1004
    throw v3
.end method

.method getTierInfo(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    .locals 7
    .param p1, "aEntityid"    # B
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1929
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 1930
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v2, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 1932
    .local v2, "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 1933
    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getTierInfo(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1946
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    return-object v3

    .line 1934
    .end local v2    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    :catch_0
    move-exception v0

    .line 1935
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1936
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1937
    throw v0

    .line 1938
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 1939
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1940
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1941
    throw v1
.end method

.method getTierbit(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 7
    .param p1, "aEntityid"    # B
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1735
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 1736
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 1738
    .local v3, "setupsv":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 1739
    invoke-virtual {v3, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->getEmmTier(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1740
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1753
    .local v2, "result":Ljava/lang/Integer;
    return-object v2

    .line 1741
    .end local v2    # "result":Ljava/lang/Integer;
    .end local v3    # "setupsv":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    :catch_0
    move-exception v0

    .line 1742
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1743
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1744
    throw v0

    .line 1745
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 1746
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1747
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1748
    throw v1
.end method

.method hasBasicSubscription(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "aAuthority"    # Ljava/lang/String;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 2072
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 2073
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v0, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 2075
    .local v0, "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkAuthority(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->hasBasicSubscription(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 2089
    .local v3, "result":Ljava/lang/Boolean;
    return-object v3

    .line 2077
    .end local v0    # "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .end local v3    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 2078
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 2079
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2080
    throw v1

    .line 2081
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 2082
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2083
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2084
    throw v2
.end method

.method informEmmUpdated(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 6
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v3, 0x0

    .line 2424
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2427
    .local v2, "result":Ljava/lang/Integer;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 2428
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v0, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 2431
    .local v0, "contractmanager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->checkAndRunContractTermination(Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2442
    .end local v0    # "contractmanager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    :goto_0
    return-object v2

    .line 2432
    :catch_0
    move-exception v1

    .line 2433
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2435
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 2436
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method initializeCasdrm(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 7
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1640
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 1641
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v2, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 1643
    .local v2, "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->initializeCasdrm(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1644
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1657
    .local v3, "result":Ljava/lang/Integer;
    return-object v3

    .line 1645
    .end local v2    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    .end local v3    # "result":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 1646
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1647
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1648
    throw v0

    .line 1649
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 1650
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1651
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1652
    throw v1
.end method

.method initializeUseFlg()V
    .locals 4

    .prologue
    .line 3127
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getIndividualExportingCridList()Ljava/util/List;

    move-result-object v0

    .line 3129
    .local v0, "indivExptList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3130
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->initializeUseFlg()V

    .line 3137
    :goto_0
    return-void

    .line 3132
    :cond_0
    const-string v1, "Skip initializing use flag due to exporting contents: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public insertCridInfo(BLjava/lang/String;)V
    .locals 4
    .param p1, "aEntityid"    # B
    .param p2, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 790
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 791
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 792
    .local v2, "general":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 793
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkCrid(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;->insertCridInfo(BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 806
    return-void

    .line 795
    .end local v2    # "general":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 797
    throw v0

    .line 798
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 800
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 801
    throw v1
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 4
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 353
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkSdCardChanged()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 369
    :cond_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 359
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 360
    throw v0

    .line 361
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    .line 363
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 364
    throw v1
.end method

.method public notifyFirstSessionCreated()V
    .locals 8

    .prologue
    .line 265
    const/4 v6, 0x1

    :try_start_0
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->secureAccess(Z)V

    .line 267
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->initializeUseFlg()V

    .line 272
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    .line 273
    .local v5, "svc":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v0

    .line 274
    .local v0, "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkForeignMode()I

    move-result v4

    .line 275
    .local v4, "foreignMode":I
    if-nez v4, :cond_0

    .line 277
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v1, v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 279
    .local v1, "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->checkRequiresTierUpdatingAll(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    .end local v0    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v1    # "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .end local v4    # "foreignMode":I
    .end local v5    # "svc":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    :cond_0
    return-void

    .line 282
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    iget v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/4 v7, -0x7

    if-eq v6, v7, :cond_0

    .line 285
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 286
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 287
    throw v2

    .line 289
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    .line 291
    .local v3, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 292
    throw v3
.end method

.method public notifyLastSessionDeleted()V
    .locals 3

    .prologue
    .line 318
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->secureAccess(Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 321
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 322
    throw v0

    .line 323
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    .line 325
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 326
    throw v1
.end method

.method public notifyUpdatePurchaseHistory()V
    .locals 3

    .prologue
    .line 1231
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv$1;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;)V

    const-string v2, "ipcStub.updatePurchaseHistory"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1243
    return-void
.end method

.method rebuildPurchaseHistory(BLjava/lang/String;Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 16
    .param p1, "aEntityid"    # B
    .param p2, "aAuthority"    # Ljava/lang/String;
    .param p4, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 2121
    .local p3, "aPurchaseidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 2122
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v12

    sget-object v13, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v14, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v6, v12, v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 2125
    .local v6, "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 2126
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkAuthority(Ljava/lang/String;)V

    .line 2127
    if-eqz p3, :cond_1

    .line 2129
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    .line 2130
    .local v9, "puidListCnt":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2133
    .local v7, "phMaxCnt":I
    if-gt v9, v7, :cond_0

    .line 2134
    move-object/from16 v11, p3

    .line 2141
    .local v11, "targetPuidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2142
    .local v8, "puid":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkPurchaseId(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2153
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .end local v7    # "phMaxCnt":I
    .end local v8    # "puid":Ljava/lang/String;
    .end local v9    # "puidListCnt":I
    .end local v11    # "targetPuidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 2154
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 2155
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2156
    throw v3

    .line 2137
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v6    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .restart local v7    # "phMaxCnt":I
    .restart local v9    # "puidListCnt":I
    :cond_0
    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p3

    invoke-interface {v0, v12, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    .line 2138
    .restart local v11    # "targetPuidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "Ignore purchaseIDs over %dth. (%d)"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2157
    .end local v6    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .end local v7    # "phMaxCnt":I
    .end local v9    # "puidListCnt":I
    .end local v11    # "targetPuidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v3

    .line 2158
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2159
    .local v4, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2160
    throw v4

    .line 2145
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v6    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    :cond_1
    :try_start_2
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v12, -0x1

    const-string v13, "Invalid PurchaseId list."

    invoke-direct {v4, v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 2148
    .local v4, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v12, "[%d] %s (%d)"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x0

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2149
    throw v4

    .line 2151
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "phMaxCnt":I
    .restart local v9    # "puidListCnt":I
    .restart local v11    # "targetPuidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v6, v0, v1, v11, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->rebuildPurchaseHistory(BLjava/lang/String;Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2152
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    .line 2165
    .local v10, "result":Ljava/lang/Integer;
    return-object v10
.end method

.method registerWorkKey(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 7
    .param p1, "aEntityid"    # B
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1882
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 1883
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 1885
    .local v3, "setupsv":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 1886
    invoke-virtual {v3, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->getEmmKw(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1887
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1900
    .local v2, "result":Ljava/lang/Integer;
    return-object v2

    .line 1888
    .end local v2    # "result":Ljava/lang/Integer;
    .end local v3    # "setupsv":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    :catch_0
    move-exception v0

    .line 1889
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1890
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1891
    throw v0

    .line 1892
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 1893
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1894
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1895
    throw v1
.end method

.method public removeCridInfo(BLjava/lang/String;)V
    .locals 4
    .param p1, "aEntityid"    # B
    .param p2, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 849
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 850
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 851
    .local v2, "general":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 852
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkCrid(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;->removeCridInfo(BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 865
    return-void

    .line 854
    .end local v2    # "general":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 856
    throw v0

    .line 857
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 858
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 859
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 860
    throw v1
.end method

.method public removeLicenseInfo(BLjava/lang/String;)V
    .locals 6
    .param p1, "aEntityid"    # B
    .param p2, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 600
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 602
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 605
    .local v2, "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 606
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkCrid(Ljava/lang/String;)V

    .line 607
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->removeLicenseInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 619
    return-void

    .line 608
    .end local v2    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 610
    throw v0

    .line 611
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 613
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 614
    throw v1
.end method

.method removeLicenseInfoByLicenseDelete(BLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 7
    .param p1, "aEntityid"    # B
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2025
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 2026
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v2, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 2028
    .local v2, "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 2029
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkCrid(Ljava/lang/String;)V

    .line 2030
    invoke-virtual {v2, p3, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->removeLicenseInfoByLicenseDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;BLjava/lang/String;)V

    .line 2031
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 2044
    .local v3, "result":Ljava/lang/Integer;
    return-object v3

    .line 2032
    .end local v2    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
    .end local v3    # "result":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 2033
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 2034
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2035
    throw v0

    .line 2036
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 2037
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2038
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2039
    throw v1
.end method

.method removeReservedInfo()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 2397
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2401
    .local v0, "result":Ljava/lang/Integer;
    return-object v0
.end method

.method public requestBackgroundId(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1290
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 1291
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 1293
    .local v2, "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->requestBackgroundId(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1305
    return-void

    .line 1294
    .end local v2    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    :catch_0
    move-exception v0

    .line 1295
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1296
    throw v0

    .line 1297
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 1298
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1299
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1300
    throw v1
.end method

.method setCasDrmEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 2
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2252
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv$MmbCaCasDrmEventCallerSv;->setEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv;)V

    .line 2254
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2258
    .local v0, "result":Ljava/lang/Integer;
    return-object v0
.end method

.method setServerCertificate(ZLjava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "aMode"    # Z
    .param p2, "aStr"    # Ljava/lang/String;

    .prologue
    .line 2325
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2330
    .local v0, "result":Ljava/lang/Integer;
    return-object v0
.end method

.method setTierbitQuotaInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 7
    .param p1, "aInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1685
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 1687
    if-eqz p1, :cond_0

    .line 1688
    iget-byte v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;->mmbCaCasDrmEntityid:B

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 1689
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;->mmbCaCasDrmAuthority:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkAuthority(Ljava/lang/String;)V

    .line 1691
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v0, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 1693
    .local v0, "contractmanager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->setTierbitQuotaInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1694
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1707
    .local v3, "result":Ljava/lang/Integer;
    return-object v3

    .line 1695
    .end local v0    # "contractmanager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .end local v3    # "result":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 1696
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1697
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1698
    throw v1

    .line 1699
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 1700
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1701
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1702
    throw v2
.end method

.method public setupModule()V
    .locals 6

    .prologue
    .line 167
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    if-nez v3, :cond_0

    .line 168
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    sput-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    .line 171
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getCaSystemId()I

    .line 176
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->initializeUseFlg()V

    .line 179
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v0, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 181
    .local v0, "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->deleteUndeletedLicenseInfo()V

    .line 183
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkSdCardChanged()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    .end local v0    # "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    :cond_1
    return-void

    .line 185
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    iget v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/4 v4, -0x7

    if-eq v3, v4, :cond_1

    .line 188
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 189
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 190
    throw v1

    .line 192
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 195
    throw v2
.end method

.method public startupModule()V
    .locals 3

    .prologue
    .line 132
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    .line 136
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->newClient()V

    .line 137
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LISTENER_IMPL:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmMwClientListenerImpl;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->initialize(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->checkServiceFatalException(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 140
    throw v0
.end method

.method updateContractInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 7
    .param p1, "aPurchaseInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1782
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 1783
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v2, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 1785
    .local v2, "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    if-eqz p1, :cond_0

    .line 1786
    iget-byte v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbEntityId:B

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkEntityid(B)V

    .line 1787
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbAuthority:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkAuthority(Ljava/lang/String;)V

    .line 1788
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbPurchaseId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkPurchaseId(Ljava/lang/String;)V

    .line 1790
    :cond_0
    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->updateContractInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1791
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1804
    .local v3, "result":Ljava/lang/Integer;
    return-object v3

    .line 1792
    .end local v2    # "manager":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .end local v3    # "result":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 1793
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1794
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1795
    throw v0

    .line 1796
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v0

    .line 1797
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1798
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1799
    throw v1
.end method

.method public updatePurchaseHistory(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 5
    .param p1, "aDbFlag"    # Z
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1193
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkStartupMode(Z)Z

    .line 1194
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v0, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 1196
    .local v0, "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->complementPurchaseHistory(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1212
    .end local v0    # "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    :goto_0
    return-void

    .line 1197
    :catch_0
    move-exception v1

    .line 1199
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkError(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V

    .line 1200
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1201
    :catch_1
    move-exception v2

    goto :goto_0

    .line 1205
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_2
    move-exception v1

    .line 1207
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
