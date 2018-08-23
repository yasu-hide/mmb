.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientContractManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$1;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckAndRunContractTerminationThread;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByPurchaseIdHelper2Sv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelper2Sv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

.field private network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

.field private service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V
    .locals 0
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;
    .param p3, "aNetwork"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 124
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    .line 125
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;B)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .param p1, "x1"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->checkContractTermination(B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;BLjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .param p1, "x1"    # B
    .param p2, "x2"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->runContractTermination(BLjava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .param p1, "x1"    # B
    .param p2, "x2"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->isTierInfoExpired(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    .param p1, "x1"    # B
    .param p2, "x2"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->requiresExtTierUpdating(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;)Z

    move-result v0

    return v0
.end method

.method private checkContractTermination(B)Ljava/util/List;
    .locals 10
    .param p1, "aEntityId"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
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
    .line 1230
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1233
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v8, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->queryPurchaseHistoryForBasicSubscriptionList(B)Ljava/util/List;

    move-result-object v0

    .line 1234
    .local v0, "authorityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 1282
    :cond_0
    return-object v6

    .line 1244
    :cond_1
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getTierInfo(B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;

    move-result-object v7

    .line 1251
    .local v7, "tierinfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;-><init>()V

    .line 1252
    .local v4, "query":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;
    iput p1, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;->mmbEntityId:I

    .line 1253
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v8, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->queryQuotaTierbit(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;)Ljava/util/List;

    move-result-object v5

    .line 1255
    .local v5, "resdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;

    .line 1256
    .local v1, "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;
    iget-object v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;->mmbAuthority:Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1268
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;->mmbQuotaInfo:[B

    array-length v8, v8

    if-ge v2, v8, :cond_2

    .line 1269
    iget-object v8, v7, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbTierbit:[B

    aget-byte v8, v8, v2

    iget-object v9, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;->mmbQuotaInfo:[B

    aget-byte v9, v9, v2

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    .line 1270
    iget-object v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;->mmbAuthority:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1268
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private deleteAllLicenseInfoByAuthority(BLjava/lang/String;)V
    .locals 3
    .param p1, "aEntityId"    # B
    .param p2, "aAuthority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1414
    const/4 v0, 0x0

    .line 1415
    .local v0, "baAuthority":[B
    invoke-static {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1416
    invoke-static {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->deleteAllLicenseInfo(B[B)V

    .line 1419
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;

    invoke-direct {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;-><init>(ILjava/lang/String;)V

    .line 1421
    .local v1, "ldDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteLicenseDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;)I

    .line 1425
    return-void
.end method

.method private getFcPurchaseStatus(BLjava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "aEntityid"    # B
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aMemberOfs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1620
    array-length v5, p3

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    .line 1621
    .local v0, "cridList":[Ljava/lang/String;
    aput-object p2, v0, v4

    .line 1622
    array-length v5, p3

    invoke-static {p3, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1623
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->checkPurchaseHistory([Ljava/lang/String;)Z

    move-result v2

    .line 1625
    .local v2, "hasCrid":Z
    if-eqz v2, :cond_0

    .line 1654
    :goto_0
    return v3

    .line 1639
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toByte(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getLicenseInfo(B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1640
    :catch_0
    move-exception v1

    .line 1641
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    iget v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/4 v5, -0x8

    if-eq v3, v5, :cond_1

    .line 1642
    throw v1

    :cond_1
    move v3, v4

    .line 1648
    goto :goto_0
.end method

.method private getFcPurchaseStatus(BLjava/lang/String;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)Ljava/util/List;
    .locals 26
    .param p1, "aEntityid"    # B
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aPurchaseInfoList"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "[",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;",
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
    .line 1685
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1686
    .local v20, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 1687
    .local v3, "checkLicense":Z
    const/4 v14, 0x0

    .line 1689
    .local v14, "licenseInfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    move-object/from16 v2, p3

    .local v2, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_8

    aget-object v19, v2, v9

    .line 1690
    .local v19, "purchaseInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    move-object/from16 v0, v19

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->id:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1691
    .local v18, "purchaseId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->checkPurchaseHistory(Ljava/lang/String;)Z

    move-result v7

    .line 1693
    .local v7, "hasPurchaseId":Z
    if-eqz v7, :cond_0

    .line 1698
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1689
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1705
    :cond_0
    if-nez v3, :cond_1

    .line 1708
    const/4 v3, 0x1

    .line 1709
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toByte(Ljava/lang/String;)[B

    move-result-object v22

    move/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getLicenseInfo(B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1718
    :cond_1
    if-nez v14, :cond_2

    .line 1720
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1712
    :catch_0
    move-exception v5

    .line 1713
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    iget v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v22, v0

    const/16 v23, -0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 1714
    throw v5

    .line 1723
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_2
    iget-object v0, v14, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toHexString([B)Ljava/lang/String;

    move-result-object v13

    .line 1725
    .local v13, "licenseId":Ljava/lang/String;
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;->getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;

    move-result-object v15

    .line 1727
    .local v15, "liiSlistHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v17

    .line 1728
    .local v17, "metadataModSv":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;->execute(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1730
    .local v12, "licenseHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;>;"
    if-nez v12, :cond_3

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    .line 1732
    .local v4, "contentsModSv":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v15, v4, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;->execute(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1734
    .end local v4    # "contentsModSv":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_3
    if-nez v12, :cond_4

    .line 1736
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/16 v22, -0x1

    const-string v23, "LicenseInformation not found."

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 1739
    .local v6, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v22, "[%d] %s (%s)"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    iget v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    aput-object v13, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1740
    throw v6

    .line 1743
    .end local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1744
    .local v16, "metaCnt":I
    const/4 v10, 0x0

    .line 1745
    .local v10, "isPurchased":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v8, v0, :cond_5

    .line 1746
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;

    invoke-virtual/range {v22 .. v22}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;->getPurchaseIdRef()Ljava/lang/String;

    move-result-object v21

    .line 1747
    .local v21, "wpurchaseId":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1749
    const/4 v10, 0x1

    .line 1753
    .end local v21    # "wpurchaseId":Ljava/lang/String;
    :cond_5
    if-eqz v10, :cond_7

    .line 1754
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1745
    .restart local v21    # "wpurchaseId":Ljava/lang/String;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1758
    .end local v21    # "wpurchaseId":Ljava/lang/String;
    :cond_7
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1764
    .end local v7    # "hasPurchaseId":Z
    .end local v8    # "i":I
    .end local v10    # "isPurchased":Z
    .end local v12    # "licenseHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;>;"
    .end local v13    # "licenseId":Ljava/lang/String;
    .end local v15    # "liiSlistHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;
    .end local v16    # "metaCnt":I
    .end local v17    # "metadataModSv":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    .end local v18    # "purchaseId":Ljava/lang/String;
    .end local v19    # "purchaseInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :cond_8
    return-object v20
.end method

.method private getPackagePurchaseStatus(Ljava/lang/String;)I
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1995
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v2

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->checkPurchaseHistory([Ljava/lang/String;)Z

    move-result v0

    .line 1997
    .local v0, "hasCrid":Z
    if-eqz v0, :cond_0

    .line 2008
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private getPackagePurchaseStatus([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)Ljava/util/List;
    .locals 8
    .param p1, "aPurchaseInfoList"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;",
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
    .line 2035
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2036
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, p1

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 2037
    .local v5, "purchaseInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    iget-object v4, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->id:Ljava/lang/String;

    .line 2039
    .local v4, "purchaseId":Ljava/lang/String;
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v7, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->checkPurchaseHistory(Ljava/lang/String;)Z

    move-result v1

    .line 2040
    .local v1, "hasPurchaseId":Z
    if-eqz v1, :cond_0

    .line 2042
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2036
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2048
    :cond_0
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2054
    .end local v1    # "hasPurchaseId":Z
    .end local v4    # "purchaseId":Ljava/lang/String;
    .end local v5    # "purchaseInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :cond_1
    return-object v6
.end method

.method private getPuidLicenseAquired(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhRebuildBuilderSv;)Ljava/util/List;
    .locals 11
    .param p1, "phBuilder"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhRebuildBuilderSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhRebuildBuilderSv;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2072
    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhRebuildBuilderSv;->phSearcher:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;

    iget-object v9, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;->result:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;

    iget-object v6, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;->mmbLtDaoList:Ljava/util/List;

    .line 2073
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2074
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2075
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;

    .line 2076
    .local v1, "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    iget-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;->mmbCrid:Ljava/lang/String;

    .line 2077
    .local v0, "crid":Ljava/lang/String;
    iget v9, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;->mmbEntityId:I

    int-to-byte v3, v9

    .line 2078
    .local v3, "entityId":B
    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2081
    :try_start_0
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toByte(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v3, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getLicenseInfo(B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;

    move-result-object v5

    .line 2085
    .local v5, "license":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    if-eqz v5, :cond_0

    iget-object v9, v5, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    if-eqz v9, :cond_0

    .line 2088
    iget-object v9, v5, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2097
    .end local v5    # "license":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :cond_1
    iget-object v9, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;->mmbLicenseId:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2098
    iget-object v9, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;->mmbPurchaseIdRef:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2089
    :catch_0
    move-exception v2

    .line 2090
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    iget v9, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/4 v10, -0x8

    if-eq v9, v10, :cond_2

    .line 2091
    throw v2

    .line 2093
    :cond_2
    const/4 v9, 0x0

    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2104
    .end local v0    # "crid":Ljava/lang/String;
    .end local v1    # "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "entityId":B
    :cond_3
    return-object v8
.end method

.method private getRtPurchaseStatus(BLjava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .param p1, "aEntityid"    # B
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aMemberOfs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1796
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->checkPurchaseHistory([Ljava/lang/String;)Z

    move-result v3

    .line 1798
    .local v3, "hasCrid":Z
    if-eqz v3, :cond_0

    .line 1803
    const/4 v12, 0x1

    .line 1860
    :goto_0
    return v12

    .line 1813
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getTierInfo(B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;

    move-result-object v11

    .line 1816
    .local v11, "tierInfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;

    iget-object v12, v11, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbExtTier:[B

    invoke-direct {v2, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;-><init>([B)V

    .line 1817
    .local v2, "extTier":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;
    iget-object v12, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;->mmbProgramIds:[I

    array-length v12, v12

    if-nez v12, :cond_1

    .line 1825
    const/4 v12, 0x0

    goto :goto_0

    .line 1829
    :cond_1
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelper2Sv;->getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelper2Sv;

    move-result-object v6

    .line 1831
    .local v6, "liiSlistHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelper2Sv;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v8

    .line 1832
    .local v8, "metadataModSv":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    move-object/from16 v0, p2

    invoke-virtual {v6, v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelper2Sv;->execute(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1834
    .local v5, "licenseHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;>;"
    if-nez v5, :cond_2

    .line 1836
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v12, -0x1

    const-string v13, "LicenseInformation not found."

    invoke-direct {v1, v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 1839
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v12, "[%d] %s (%s)"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object p2, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1840
    throw v1

    .line 1844
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1845
    .local v7, "metaCnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_4

    .line 1846
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;->getRtProgramId()I

    move-result v10

    .line 1847
    .local v10, "programId":I
    invoke-virtual {v2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;->findProgramId(I)I

    move-result v9

    .line 1848
    .local v9, "pos":I
    if-ltz v9, :cond_3

    .line 1853
    const/4 v12, 0x1

    goto :goto_0

    .line 1845
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1860
    .end local v9    # "pos":I
    .end local v10    # "programId":I
    :cond_4
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private getRtPurchaseStatus(B[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)Ljava/util/List;
    .locals 25
    .param p1, "aEntityid"    # B
    .param p2, "aPurchaseInfoList"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B[",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;",
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
    .line 1893
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1894
    .local v19, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 1895
    .local v3, "checkTierInfo":Z
    const/4 v5, 0x0

    .line 1896
    .local v5, "extTier":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;
    move-object/from16 v2, p2

    .local v2, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_7

    aget-object v18, v2, v8

    .line 1897
    .local v18, "purchaseInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    move-object/from16 v0, v18

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->id:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1898
    .local v17, "purchaseId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->checkPurchaseHistory(Ljava/lang/String;)Z

    move-result v6

    .line 1899
    .local v6, "hasPurchaseId":Z
    if-eqz v6, :cond_0

    .line 1904
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1896
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1911
    :cond_0
    if-nez v3, :cond_1

    .line 1915
    const/4 v3, 0x1

    .line 1916
    invoke-static/range {p1 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getTierInfo(B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;

    move-result-object v20

    .line 1919
    .local v20, "tierInfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;

    .end local v5    # "extTier":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;
    move-object/from16 v0, v20

    iget-object v0, v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbExtTier:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;-><init>([B)V

    .line 1922
    .end local v20    # "tierInfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    .restart local v5    # "extTier":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;
    :cond_1
    if-eqz v5, :cond_2

    iget-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;->mmbProgramIds:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 1927
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1932
    :cond_2
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByPurchaseIdHelper2Sv;->getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByPurchaseIdHelper2Sv;

    move-result-object v12

    .line 1934
    .local v12, "liiSlistHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByPurchaseIdHelper2Sv;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v14

    .line 1935
    .local v14, "metadataModSv":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    move-object/from16 v0, v17

    invoke-virtual {v12, v14, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByPurchaseIdHelper2Sv;->execute(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1937
    .local v11, "licenseHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;>;"
    if-nez v11, :cond_3

    .line 1939
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/16 v21, -0x1

    const-string v22, "LicenseInformation not found."

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 1942
    .local v4, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v21, "[%d] %s (%s)"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    iget v0, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    aput-object v17, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1943
    throw v4

    .line 1947
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1948
    .local v13, "metaCnt":I
    const/4 v9, 0x0

    .line 1949
    .local v9, "isPurchaed":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v13, :cond_4

    .line 1950
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;

    invoke-virtual/range {v21 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;->getRtProgramId()I

    move-result v16

    .line 1951
    .local v16, "programId":I
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;->findProgramId(I)I

    move-result v15

    .line 1952
    .local v15, "pos":I
    if-ltz v15, :cond_5

    .line 1954
    const/4 v9, 0x1

    .line 1958
    .end local v15    # "pos":I
    .end local v16    # "programId":I
    :cond_4
    if-eqz v9, :cond_6

    .line 1959
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1949
    .restart local v15    # "pos":I
    .restart local v16    # "programId":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1963
    .end local v15    # "pos":I
    .end local v16    # "programId":I
    :cond_6
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1969
    .end local v6    # "hasPurchaseId":Z
    .end local v7    # "i":I
    .end local v9    # "isPurchaed":Z
    .end local v11    # "licenseHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;>;"
    .end local v12    # "liiSlistHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByPurchaseIdHelper2Sv;
    .end local v13    # "metaCnt":I
    .end local v14    # "metadataModSv":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    .end local v17    # "purchaseId":Ljava/lang/String;
    .end local v18    # "purchaseInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :cond_7
    return-object v19
.end method

.method static getThreadName(Ljava/lang/Class;B)Ljava/lang/String;
    .locals 4
    .param p1, "aEntityId"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;B)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2122
    .local p0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "%s-%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isTierInfoExpired(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;)Z
    .locals 7
    .param p1, "aEntityid"    # B
    .param p2, "aInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1572
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->TIME_ZONE_TOKYO:Ljava/util/TimeZone;

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 1574
    .local v0, "limitCalendar":Ljava/util/Calendar;
    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbLimit:[B

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getDate([B)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1575
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 1576
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 1577
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 1578
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 1579
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1582
    .local v2, "limitTime":J
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getSecureClock(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v4

    .line 1584
    .local v4, "scTime":J
    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v1, 0x1

    .line 1589
    .local v1, "result":Z
    :cond_0
    return v1
.end method

.method private requiresExtTierUpdating(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;)Z
    .locals 19
    .param p1, "aEntityid"    # B
    .param p2, "aInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1496
    const/4 v10, 0x0

    .line 1497
    .local v10, "result":Z
    move-object/from16 v8, p2

    .line 1498
    .local v8, "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    if-eqz v8, :cond_3

    iget-object v13, v8, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbExtTier:[B

    if-eqz v13, :cond_3

    .line 1500
    :try_start_0
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;

    iget-object v13, v8, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbExtTier:[B

    invoke-direct {v6, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;-><init>([B)V

    .line 1502
    .local v6, "exttier":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;
    const/16 v13, 0x29

    iget-object v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;->mmbProgramIds:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v13, v0, :cond_3

    .line 1503
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v9

    .line 1504
    .local v9, "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getCasDrmExtTierDateMax()I

    move-result v3

    .line 1505
    .local v3, "dateMax":I
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClockForCasdrm()J

    move-result-wide v14

    .line 1506
    .local v14, "scTime":J
    const-wide/16 v16, 0x0

    cmp-long v13, v16, v14

    if-lez v13, :cond_0

    .line 1507
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v13, -0x1000000

    const-string v16, "Failed to get secure clock."

    move-object/from16 v0, v16

    invoke-direct {v5, v13, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 1511
    .local v5, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v13, "[%d] %s (%d)"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1512
    throw v5
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    .end local v3    # "dateMax":I
    .end local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v6    # "exttier":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;
    .end local v9    # "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v14    # "scTime":J
    :catch_0
    move-exception v4

    .line 1534
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v13, -0x3

    invoke-direct {v5, v13, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1536
    .restart local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v13, "[%d] %s (%d)"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1537
    throw v5

    .line 1515
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v3    # "dateMax":I
    .restart local v6    # "exttier":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;
    .restart local v9    # "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .restart local v14    # "scTime":J
    :cond_0
    :try_start_1
    sget-object v13, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->TIME_ZONE_TOKYO:Ljava/util/TimeZone;

    invoke-static {v13}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 1517
    .local v11, "scCalendar":Ljava/util/Calendar;
    invoke-virtual {v11, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1518
    const/16 v13, 0xb

    const/16 v16, 0x17

    move/from16 v0, v16

    invoke-virtual {v11, v13, v0}, Ljava/util/Calendar;->set(II)V

    .line 1519
    const/16 v13, 0xc

    const/16 v16, 0x3b

    move/from16 v0, v16

    invoke-virtual {v11, v13, v0}, Ljava/util/Calendar;->set(II)V

    .line 1520
    const/16 v13, 0xd

    const/16 v16, 0x3b

    move/from16 v0, v16

    invoke-virtual {v11, v13, v0}, Ljava/util/Calendar;->set(II)V

    .line 1521
    const/16 v13, 0xe

    const/16 v16, 0x3e7

    move/from16 v0, v16

    invoke-virtual {v11, v13, v0}, Ljava/util/Calendar;->set(II)V

    .line 1522
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    .line 1523
    .local v12, "scDate":Ljava/util/Date;
    const/4 v2, 0x0

    .line 1524
    .local v2, "dateCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v13, 0x29

    if-ge v7, v13, :cond_2

    .line 1525
    iget-object v13, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;->mmbExpireDates:[Ljava/util/Date;

    aget-object v13, v13, v7

    invoke-virtual {v12, v13}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    if-eqz v13, :cond_1

    .line 1526
    add-int/lit8 v2, v2, 0x1

    .line 1524
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1529
    :cond_2
    if-gt v3, v2, :cond_3

    .line 1530
    const/4 v10, 0x1

    .line 1543
    .end local v2    # "dateCount":I
    .end local v3    # "dateMax":I
    .end local v6    # "exttier":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;
    .end local v7    # "i":I
    .end local v9    # "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v11    # "scCalendar":Ljava/util/Calendar;
    .end local v12    # "scDate":Ljava/util/Date;
    .end local v14    # "scTime":J
    :cond_3
    return v10
.end method

.method private requiresTierUpdating(I)Z
    .locals 1
    .param p1, "aPurchaseType"    # I

    .prologue
    .line 1451
    packed-switch p1, :pswitch_data_0

    .line 1459
    const/4 v0, 0x0

    .line 1465
    .local v0, "result":Z
    :goto_0
    return v0

    .line 1456
    .end local v0    # "result":Z
    :pswitch_0
    const/4 v0, 0x1

    .line 1457
    .restart local v0    # "result":Z
    goto :goto_0

    .line 1451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private runContractTermination(BLjava/util/List;)V
    .locals 20
    .param p1, "aEntityid"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1312
    .local p2, "aAuthorityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;

    const/16 v16, 0x0

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v8, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;-><init>(ILjava/lang/String;)V

    .line 1314
    .local v8, "ldDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    invoke-direct {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;-><init>()V

    .line 1315
    .local v12, "phDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;

    invoke-direct {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;-><init>()V

    .line 1316
    .local v11, "miDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;-><init>()V

    .line 1317
    .local v10, "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;

    invoke-direct {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;-><init>()V

    .line 1318
    .local v9, "ldhDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;
    const/4 v5, 0x0

    .line 1319
    .local v5, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1320
    .local v2, "authority":Ljava/lang/String;
    sget-object v16, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1324
    :try_start_0
    iput-object v2, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;->mmbAuthority:Ljava/lang/String;

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->insertLicenseDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;)I

    .line 1328
    iput-object v2, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbAuthority:Ljava/lang/String;

    .line 1329
    iput-object v2, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;->mmbAuthority:Ljava/lang/String;

    .line 1330
    iput-object v2, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;->mmbAuthority:Ljava/lang/String;

    .line 1331
    iput-object v2, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbAuthority:Ljava/lang/String;

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteAllPurchaseHistoryByAuthority(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;)I

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteAllMessageIdByAuthority(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;)I

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteAllLicenseTargetByAuthority(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;)I

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteAllLicenseDeleteHistoryByAuthority(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->deleteAllLicenseInfoByAuthority(BLjava/lang/String;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1346
    sget-object v16, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1336
    :catch_0
    move-exception v4

    .line 1338
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    move-object v5, v4

    goto :goto_1

    .line 1342
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v4

    .line 1344
    .restart local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    move-object v5, v4

    .line 1346
    sget-object v16, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catchall_0
    move-exception v16

    sget-object v17, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v16

    .line 1349
    .end local v2    # "authority":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    .line 1350
    throw v5

    .line 1355
    :cond_1
    const/4 v6, 0x0

    .line 1356
    .local v6, "ex2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->getPurchaseHistoryCount()I

    move-result v13

    .line 1357
    .local v13, "purchasecount":I
    if-nez v13, :cond_3

    .line 1360
    const/16 v15, 0x200

    .line 1361
    .local v15, "scheduletypes":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v14

    .line 1366
    .local v14, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    const/16 v16, 0x200

    :try_start_2
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->pauseRepeatSchedule(I)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1374
    if-eqz v6, :cond_3

    .line 1375
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v16, -0x1000005

    const-string v17, "Failed to stop the background process"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1379
    .local v3, "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v16, "[%d] %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    throw v3

    .line 1367
    .end local v3    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_2
    move-exception v4

    .line 1368
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    move-object v6, v4

    .line 1374
    if-eqz v6, :cond_3

    .line 1375
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v16, -0x1000005

    const-string v17, "Failed to stop the background process"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1379
    .restart local v3    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v16, "[%d] %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    throw v3

    .line 1369
    .end local v3    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_3
    move-exception v4

    .line 1370
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    move-object v6, v4

    .line 1374
    if-eqz v6, :cond_3

    .line 1375
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v16, -0x1000005

    const-string v17, "Failed to stop the background process"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1379
    .restart local v3    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v16, "[%d] %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    throw v3

    .line 1371
    .end local v3    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_4
    move-exception v4

    .line 1372
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    move-object v6, v4

    .line 1374
    if-eqz v6, :cond_3

    .line 1375
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v16, -0x1000005

    const-string v17, "Failed to stop the background process"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1379
    .restart local v3    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v16, "[%d] %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    throw v3

    .line 1374
    .end local v3    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catchall_1
    move-exception v16

    if-eqz v6, :cond_2

    .line 1375
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v16, -0x1000005

    const-string v17, "Failed to stop the background process"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1379
    .restart local v3    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v16, "[%d] %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    throw v3

    .end local v3    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_2
    throw v16

    .line 1388
    .end local v14    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    .end local v15    # "scheduletypes":I
    :cond_3
    return-void
.end method


# virtual methods
.method public checkAndRunContractTermination(B)V
    .locals 1
    .param p1, "aEntityId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 610
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckAndRunContractTerminationThread;

    invoke-direct {v0, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckAndRunContractTerminationThread;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;B)V

    .line 611
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 616
    return-void
.end method

.method public checkAndRunContractTermination(Z)V
    .locals 1
    .param p1, "aTierUpdates"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 581
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckAndRunContractTerminationThread;

    invoke-direct {v0, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckAndRunContractTerminationThread;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;Z)V

    .line 582
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 587
    return-void
.end method

.method public checkRequiresTierUpdating(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z
    .locals 11
    .param p1, "aEntityId"    # B
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1104
    const/4 v5, 0x0

    .line 1105
    .local v5, "result":Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v7

    .line 1106
    .local v7, "threadGroup":Ljava/lang/ThreadGroup;
    invoke-virtual {v7}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v9

    new-array v8, v9, [Ljava/lang/Thread;

    .line 1107
    .local v8, "threads":[Ljava/lang/Thread;
    invoke-virtual {v7, v8}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    .line 1111
    const/4 v1, 0x1

    .line 1112
    .local v1, "check":Z
    const-class v9, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;

    invoke-static {v9, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getThreadName(Ljava/lang/Class;B)Ljava/lang/String;

    move-result-object v4

    .line 1114
    .local v4, "mthreadname":Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/Thread;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 1115
    .local v6, "thread":Ljava/lang/Thread;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1116
    const/4 v1, 0x0

    .line 1120
    .end local v6    # "thread":Ljava/lang/Thread;
    :cond_0
    if-eqz v1, :cond_1

    .line 1121
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;

    const/4 v9, 0x1

    invoke-direct {v6, p0, p1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;BZ)V

    .line 1123
    .local v6, "thread":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v9

    iget-object v10, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v9, v6, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->startBackgroundJobThread(Ljava/lang/Thread;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1128
    .end local v6    # "thread":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;
    :cond_1
    return v5

    .line 1114
    .local v6, "thread":Ljava/lang/Thread;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public checkRequiresTierUpdatingAll(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 5
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1150
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getAllEntityId()[B

    move-result-object v0

    .line 1152
    .local v0, "allEntityId":[B
    move-object v1, v0

    .local v1, "arr$":[B
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v2, v1, v3

    .line 1153
    .local v2, "entityid":B
    invoke-virtual {p0, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->checkRequiresTierUpdating(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z

    .line 1152
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1159
    .end local v2    # "entityid":B
    :cond_0
    return-void
.end method

.method public complementPurchaseHistory(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 2
    .param p1, "aDbFlag"    # Z
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 548
    if-eqz p1, :cond_0

    .line 550
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhBroadcastComplementBuilderSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhBroadcastComplementBuilderSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 556
    .local v0, "phBuilder":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhComplementBuilderSv;
    :goto_0
    invoke-virtual {v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhComplementBuilderSv;->build(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 560
    return-void

    .line 553
    .end local v0    # "phBuilder":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhComplementBuilderSv;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhSavedComplementBuilderSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhSavedComplementBuilderSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .restart local v0    # "phBuilder":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhComplementBuilderSv;
    goto :goto_0
.end method

.method public deleteContractInfo(BLjava/lang/String;)V
    .locals 8
    .param p1, "aEntityId"    # B
    .param p2, "aAuthority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 373
    if-nez p2, :cond_0

    .line 375
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getAllAuthorities(B)Ljava/util/List;

    move-result-object v0

    .line 376
    .local v0, "authorityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 377
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v3, -0x1

    const-string v4, "Authorities not found."

    invoke-direct {v1, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 380
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    throw v1

    .line 385
    .end local v0    # "authorityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 386
    .restart local v0    # "authorityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->runContractTermination(BLjava/util/List;)V

    .line 391
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 393
    .local v2, "setupmgr":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->getEmmTier(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 398
    return-void
.end method

.method public deletePremiumContractInfo(BLjava/lang/String;Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 4
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
            ")V"
        }
    .end annotation

    .prologue
    .line 425
    .local p3, "aPurchaseidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deletePurchaseHistoryByPurchaseIdList(Ljava/util/List;)I

    .line 427
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteLicenseTargetByPurchaseIdList(Ljava/util/List;)I

    .line 430
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 432
    .local v0, "setupsv":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    invoke-virtual {v0, p1, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->getEmmTier(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 436
    return-void
.end method

.method public deleteUndeletedLicenseInfo()V
    .locals 6

    .prologue
    .line 1063
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->queryLicenseDelete()Ljava/util/List;

    move-result-object v3

    .line 1064
    .local v3, "ldDaoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;

    .line 1067
    .local v2, "ldDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;
    :try_start_0
    iget v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;->mmbEntityid:I

    int-to-byte v4, v4

    iget-object v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;->mmbAuthority:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->deleteAllLicenseInfoByAuthority(BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1068
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/16 v5, -0x13

    if-eq v4, v5, :cond_0

    .line 1071
    throw v0

    .line 1078
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v2    # "ldDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;
    :cond_1
    return-void
.end method

.method public getAccumulatedFlag(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1187
    if-nez p1, :cond_0

    .line 1188
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v3, -0x1

    const-string v4, "Invalid CRID."

    invoke-direct {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 1191
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1192
    throw v0

    .line 1195
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toByte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->searchAccumulatedCrId([B)Z

    move-result v1

    .line 1197
    .local v1, "isAccumulate":Z
    if-eqz v1, :cond_1

    .line 1198
    const/4 v2, 0x1

    .line 1205
    .local v2, "result":I
    :goto_0
    return v2

    .line 1200
    .end local v2    # "result":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public getAllAuthorities(B)Ljava/util/List;
    .locals 6
    .param p1, "aEntityid"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1036
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;-><init>()V

    .line 1037
    .local v3, "query":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;
    iput p1, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;->mmbEntityId:I

    .line 1038
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->queryQuotaTierbit(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;)Ljava/util/List;

    move-result-object v2

    .line 1040
    .local v2, "qtDaoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1041
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;

    .line 1042
    .local v1, "qtDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;
    iget-object v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;->mmbAuthority:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1047
    .end local v1    # "qtDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;
    :cond_0
    return-object v4
.end method

.method public getPurchaseStatus(BLjava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)I
    .locals 10
    .param p1, "aEntityid"    # B
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aInfobase"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
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

    .line 723
    const/4 v2, 0x0

    .line 727
    .local v2, "result":I
    if-nez p2, :cond_0

    .line 728
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v3, "Invalid CRID."

    invoke-direct {v1, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 731
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    throw v1

    .line 735
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    if-nez p3, :cond_1

    .line 736
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v3, "Invalid MmbFcPgInfoMwInformationBase."

    invoke-direct {v1, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 739
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    throw v1

    .line 743
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;

    invoke-direct {v0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)V

    .line 746
    .local v0, "cInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$1;->$SwitchMap$mmb$android$MmbFcPgInfoMw$MmbFcPgInfoMw$MmbFcPgInfoMwInformationType:[I

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;->getContentInfoBase()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v4

    iget-object v4, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    invoke-virtual {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 761
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v3, "Invalid information type."

    invoke-direct {v1, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 764
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;->getContentInfoBase()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v5

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    throw v1

    .line 749
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :pswitch_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;->getMemberOf()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getFcPurchaseStatus(BLjava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 772
    :goto_0
    return v2

    .line 753
    :pswitch_1
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;->getMemberOf()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getRtPurchaseStatus(BLjava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 754
    goto :goto_0

    .line 757
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getPackagePurchaseStatus(Ljava/lang/String;)I

    move-result v2

    .line 758
    goto :goto_0

    .line 746
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPurchaseStatus(B[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Ljava/util/List;
    .locals 10
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
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 806
    if-nez p2, :cond_0

    .line 807
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v3, "Invalid MmbFcPgInfoMwPurchaseInformation."

    invoke-direct {v1, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 810
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    throw v1

    .line 814
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    if-nez p3, :cond_1

    .line 815
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v3, "Invalid MmbFcPgInfoMwInformationBase."

    invoke-direct {v1, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 818
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 819
    throw v1

    .line 822
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;

    invoke-direct {v0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)V

    .line 825
    .local v0, "cInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$1;->$SwitchMap$mmb$android$MmbFcPgInfoMw$MmbFcPgInfoMw$MmbFcPgInfoMwInformationType:[I

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;->getContentInfoBase()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v4

    iget-object v4, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    invoke-virtual {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 840
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v3, "Invalid information type."

    invoke-direct {v1, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 843
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;->getContentInfoBase()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v5

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    throw v1

    .line 828
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :pswitch_0
    iget-object v3, p3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->crid:Ljava/lang/String;

    invoke-direct {p0, p1, v3, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getFcPurchaseStatus(BLjava/lang/String;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)Ljava/util/List;

    move-result-object v2

    .line 851
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return-object v2

    .line 832
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getRtPurchaseStatus(B[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)Ljava/util/List;

    move-result-object v2

    .line 833
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 836
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getPackagePurchaseStatus([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)Ljava/util/List;

    move-result-object v2

    .line 837
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 825
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPurchaseStatusExt(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;)V
    .locals 20
    .param p1, "aEntityid"    # B
    .param p2, "aCheckPurchaseInfoList"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 884
    const/4 v7, 0x0

    .line 887
    .local v7, "extTier":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->queryPurchaseHistoryAll()Ljava/util/Set;

    move-result-object v2

    .line 890
    .local v2, "allPurchaseCrids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v3, p2

    .local v3, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move v9, v8

    .end local v3    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_7

    aget-object v5, v3, v9

    .line 891
    .local v5, "checkPurchaseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    if-eqz v2, :cond_2

    .line 893
    iget-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 899
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbPurchaseStatus:I

    .line 890
    .end local v9    # "i$":I
    :goto_1
    add-int/lit8 v8, v9, 0x1

    .restart local v8    # "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto :goto_0

    .line 905
    :cond_0
    iget-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbMemberOf:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 906
    iget-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbMemberOf:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v8, 0x0

    .end local v9    # "i$":I
    .restart local v8    # "i$":I
    :goto_2
    if-ge v8, v11, :cond_2

    aget-object v13, v4, v8

    .line 907
    .local v13, "memberOf":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 913
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbPurchaseStatus:I

    goto :goto_1

    .line 906
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 926
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "memberOf":Ljava/lang/String;
    :cond_2
    iget-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbContentInfoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    move-object/from16 v18, v0

    sget-object v19, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->INFORMATION_TYPE_REALTIME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 932
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbPurchaseStatus:I

    goto :goto_1

    .line 939
    :cond_3
    iget-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbLicenseId:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    iget-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbLicenseId:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 945
    :cond_4
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbPurchaseStatus:I

    goto :goto_1

    .line 951
    :cond_5
    if-nez v7, :cond_9

    .line 952
    const/16 v17, 0x0

    .line 954
    .local v17, "tierInfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getTierInfo(B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 961
    :cond_6
    if-nez v17, :cond_8

    .line 963
    const-string v18, "tier info not found"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1017
    .end local v5    # "checkPurchaseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    .end local v17    # "tierInfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    :cond_7
    return-void

    .line 955
    .restart local v5    # "checkPurchaseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    .restart local v17    # "tierInfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    :catch_0
    move-exception v6

    .line 956
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getErrorCode()I

    move-result v18

    const/16 v19, -0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 958
    throw v6

    .line 969
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_8
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;

    .end local v7    # "extTier":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;
    move-object/from16 v0, v17

    iget-object v0, v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbExtTier:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;-><init>([B)V

    .line 973
    .end local v17    # "tierInfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    .restart local v7    # "extTier":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;
    :cond_9
    iget-object v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;->mmbProgramIds:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 980
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbPurchaseStatus:I

    goto/16 :goto_1

    .line 985
    :cond_a
    const/4 v15, 0x0

    .line 988
    .local v15, "purchaseStatus":I
    iget-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbLicenseId:[Ljava/lang/String;

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v11, v4

    .restart local v11    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_3
    if-ge v8, v11, :cond_b

    aget-object v12, v4, v8

    .line 990
    .local v12, "licenseId":Ljava/lang/String;
    invoke-static {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->checkLicenseId(Ljava/lang/String;)V

    .line 992
    invoke-static {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getRtProgramId(Ljava/lang/String;)I

    move-result v16

    .line 993
    .local v16, "rtProgramId":I
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmEmmExtTierInfoSv;->findProgramId(I)I

    move-result v14

    .line 994
    .local v14, "pos":I
    if-ltz v14, :cond_c

    .line 999
    const/4 v15, 0x1

    .line 1010
    .end local v12    # "licenseId":Ljava/lang/String;
    .end local v14    # "pos":I
    .end local v16    # "rtProgramId":I
    :cond_b
    iput v15, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbPurchaseStatus:I

    goto/16 :goto_1

    .line 988
    .restart local v12    # "licenseId":Ljava/lang/String;
    .restart local v14    # "pos":I
    .restart local v16    # "rtProgramId":I
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public getSubscribedAuthorities()Ljava/util/List;
    .locals 5
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
    .line 685
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->queryAllPurchaseHistoryForBasicSubscriptionList()Ljava/util/List;

    move-result-object v3

    .line 688
    .local v3, "phDaoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 689
    .local v0, "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    .line 690
    .local v2, "phDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    iget-object v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbAuthority:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 696
    .end local v2    # "phDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    :cond_0
    return-object v0
.end method

.method public getTierInfo(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    .locals 6
    .param p1, "aEntityid"    # B
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 457
    const/4 v2, 0x0

    .line 460
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getTierInfo(B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;

    move-result-object v1

    .line 463
    .local v1, "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;-><init>()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    :try_start_1
    iget-byte v4, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbEntityId:B

    iput-byte v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmEntityid:B

    .line 465
    iget-object v4, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbExtTier:[B

    iput-object v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmExtier:[B

    .line 466
    iget-object v4, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbLimit:[B

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getDate([B)Ljava/util/Date;

    move-result-object v4

    iput-object v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmLimit:Ljava/util/Date;

    .line 467
    iget-object v4, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbTierbit:[B

    iput-object v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmTierbit:[B

    .line 468
    iget v4, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbUpdateNo:I

    iput v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmUpdateNo:I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 479
    .end local v1    # "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    .restart local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    :cond_0
    return-object v2

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :goto_0
    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/4 v5, -0x8

    if-eq v4, v5, :cond_0

    .line 472
    throw v0

    .line 470
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    .restart local v1    # "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    .restart local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    .restart local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    goto :goto_0
.end method

.method public hasBasicSubscription(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z
    .locals 7
    .param p1, "aAuthority"    # Ljava/lang/String;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 641
    if-nez p1, :cond_0

    .line 642
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v3, -0x1

    const-string v4, "Invalid authority."

    invoke-direct {v1, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 645
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    throw v1

    .line 650
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;-><init>()V

    .line 651
    .local v0, "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    iput-object p1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbAuthority:Ljava/lang/String;

    .line 652
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->queryPurchaseHistoryForBasicSubscription(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;)V

    .line 654
    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbPurchaseId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 655
    const/4 v2, 0x1

    .line 663
    .local v2, "result":Z
    :goto_0
    return v2

    .line 657
    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public rebuildPurchaseHistory(BLjava/lang/String;Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
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
            ")V"
        }
    .end annotation

    .prologue
    .line 507
    .local p3, "aPurchaseidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhRebuildBuilderSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v1, v4, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhRebuildBuilderSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;BLjava/lang/String;Ljava/util/List;)V

    .line 509
    .local v1, "phBuilder":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhRebuildBuilderSv;
    invoke-virtual {v1, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhRebuildBuilderSv;->build(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 512
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getPuidLicenseAquired(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhRebuildBuilderSv;)Ljava/util/List;

    move-result-object v3

    .line 513
    .local v3, "puidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 514
    .local v2, "puid":Ljava/lang/String;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->updatePurchaseHistory(Ljava/lang/String;Z)I

    goto :goto_0

    .line 519
    .end local v2    # "puid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setTierbitQuotaInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 10
    .param p1, "aQuotaInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
    if-nez p1, :cond_0

    .line 156
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v3, "Invalid MmbCaCasDrmTierbitQuotaInfoSv."

    invoke-direct {v1, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 159
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    throw v1

    .line 163
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;->mmbCaCasDrmAuthority:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 164
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v3, "Invalid authority."

    invoke-direct {v1, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 167
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    throw v1

    .line 171
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_1
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;->mmbCaCasDrmTierbit:[B

    if-nez v3, :cond_2

    .line 172
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v3, "Invalid tierbit."

    invoke-direct {v1, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 175
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    throw v1

    .line 179
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_2
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;->mmbCaCasDrmTierbit:[B

    array-length v3, v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_3

    .line 180
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v3, "Invalid tierbit size. (must be 16)"

    invoke-direct {v1, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 183
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%d, %s)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;->mmbCaCasDrmTierbit:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p1, v4, v9

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    throw v1

    .line 188
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_3
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;-><init>()V

    .line 189
    .local v0, "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;
    iget-byte v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;->mmbCaCasDrmEntityid:B

    iput v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;->mmbEntityId:I

    .line 190
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;->mmbCaCasDrmAuthority:Ljava/lang/String;

    iput-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;->mmbAuthority:Ljava/lang/String;

    .line 191
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;->mmbCaCasDrmTierbit:[B

    iput-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;->mmbQuotaInfo:[B

    .line 192
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->insertQuotaTierbit(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;)I

    move-result v2

    .line 193
    .local v2, "result":I
    const/high16 v3, -0x80000000

    if-eq v3, v2, :cond_4

    if-nez v2, :cond_5

    .line 194
    :cond_4
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v3, -0x1000004

    const-string v4, "Database error."

    invoke-direct {v1, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 197
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%d)"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    throw v1

    .line 203
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_5
    return-void
.end method

.method public updateContractInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 29
    .param p1, "aPurchaseInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/16 v25, -0x1

    const-string v26, "Invalid MmbCaCasDrmPurchaseInfoSv."

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 231
    .local v11, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v25, "[%d] %s (%s)"

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    iget v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const/16 v28, 0x0

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    throw v11

    .line 235
    .end local v11    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbAuthority:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 236
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/16 v25, -0x1

    const-string v26, "Invalid authority."

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 239
    .restart local v11    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v25, "[%d] %s (%s)"

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    iget v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    aput-object p1, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    throw v11

    .line 243
    .end local v11    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbPurchaseId:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_2

    .line 244
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/16 v25, -0x1

    const-string v26, "Invalid purchaseId."

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 247
    .restart local v11    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v25, "[%d] %s (%s)"

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    iget v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    aput-object p1, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    throw v11

    .line 252
    .end local v11    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_2
    const/16 v17, 0x0

    .line 253
    .local v17, "liRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;>;"
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;->getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;

    move-result-object v18

    .line 256
    .local v18, "liSlistHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbPurchaseId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;->execute(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 267
    :goto_0
    if-eqz v17, :cond_4

    .line 268
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;

    .line 269
    .local v16, "liRecord":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;
    const/4 v15, 0x0

    .line 270
    .local v15, "ldhExistence":Z
    invoke-virtual/range {v16 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;->getLicenseId()Ljava/lang/String;

    move-result-object v19

    .line 272
    .local v19, "licenseId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->checkLicenseDeleteHistory(Ljava/lang/String;)Z

    move-result v15

    .line 273
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v15, v0, :cond_3

    .line 274
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;

    invoke-direct {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;-><init>()V

    .line 276
    .local v14, "ldhDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;
    move-object/from16 v0, v19

    iput-object v0, v14, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbLicenseId:Ljava/lang/String;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteLicenseDeleteHistory(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;)I

    goto :goto_1

    .line 257
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "ldhDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;
    .end local v15    # "ldhExistence":Z
    .end local v16    # "liRecord":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;
    .end local v19    # "licenseId":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 258
    .local v9, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v25, "Throw exception from search fcContents"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbPurchaseId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;->execute(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    goto :goto_0

    .line 262
    :catch_1
    move-exception v10

    .line 263
    .local v10, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v25, "Throw exception from search metadata"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 283
    .end local v9    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v10    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->getPurchaseHistoryCount()I

    move-result v6

    .line 286
    .local v6, "beforecount":I
    new-instance v20, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbEntityId:B

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbAuthority:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbPurchaseId:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;BLjava/lang/String;Ljava/lang/String;)V

    .line 289
    .local v20, "phBuilder":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->build(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 291
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->mmbPhDao:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbPurchaseType:I

    move/from16 v21, v0

    .line 294
    .local v21, "purchaseType":I
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->requiresTierUpdating(I)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 295
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    move-object/from16 v27, v0

    invoke-direct/range {v24 .. v27}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 297
    .local v24, "setupsv":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbEntityId:B

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->getEmmTier(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    .end local v24    # "setupsv":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    :cond_5
    const/16 v25, 0x4

    move/from16 v0, v25

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 302
    invoke-virtual/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->saveDb()V

    .line 306
    :cond_6
    const/16 v25, 0x4

    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 308
    invoke-virtual/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->saveDb()V

    .line 312
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->getPurchaseHistoryCount()I

    move-result v5

    .line 317
    .local v5, "aftercount":I
    const/4 v12, 0x0

    .line 318
    .local v12, "ex2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    if-nez v6, :cond_a

    if-lez v5, :cond_a

    .line 321
    const/16 v23, 0x200

    .line 323
    .local v23, "scheduletypes":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v22

    .line 328
    .local v22, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    const/16 v25, 0x200

    :try_start_3
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->resumeRepeatSchedule(I)V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 336
    if-eqz v12, :cond_a

    .line 337
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v25, -0x1000005

    const-string v26, "Failed to stop the background process"

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v7, v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .local v7, "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v25, "[%d] %s"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    iget v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    throw v7

    .line 300
    .end local v5    # "aftercount":I
    .end local v7    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v12    # "ex2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v22    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    .end local v23    # "scheduletypes":I
    :catchall_0
    move-exception v25

    const/16 v26, 0x4

    move/from16 v0, v26

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 302
    invoke-virtual/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->saveDb()V

    :cond_8
    throw v25

    .line 329
    .restart local v5    # "aftercount":I
    .restart local v12    # "ex2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .restart local v22    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    .restart local v23    # "scheduletypes":I
    :catch_2
    move-exception v8

    .line 330
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    move-object v12, v8

    .line 336
    if-eqz v12, :cond_a

    .line 337
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v25, -0x1000005

    const-string v26, "Failed to stop the background process"

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v7, v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .restart local v7    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v25, "[%d] %s"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    iget v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    throw v7

    .line 331
    .end local v7    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_3
    move-exception v8

    .line 332
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    move-object v12, v8

    .line 336
    if-eqz v12, :cond_a

    .line 337
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v25, -0x1000005

    const-string v26, "Failed to stop the background process"

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v7, v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .restart local v7    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v25, "[%d] %s"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    iget v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    throw v7

    .line 333
    .end local v7    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_4
    move-exception v8

    .line 334
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    move-object v12, v8

    .line 336
    if-eqz v12, :cond_a

    .line 337
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v25, -0x1000005

    const-string v26, "Failed to stop the background process"

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v7, v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .restart local v7    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v25, "[%d] %s"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    iget v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    throw v7

    .line 336
    .end local v7    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catchall_1
    move-exception v25

    if-eqz v12, :cond_9

    .line 337
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v25, -0x1000005

    const-string v26, "Failed to stop the background process"

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v7, v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .restart local v7    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v25, "[%d] %s"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    iget v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    throw v7

    .end local v7    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_9
    throw v25

    .line 350
    .end local v22    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    .end local v23    # "scheduletypes":I
    :cond_a
    return-void
.end method
