.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientLicenseManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/util/concurrent/locks/ReentrantLock;

.field protected static manualRunCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

.field protected network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

.field protected service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->manualRunCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V
    .locals 1
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aDataSv"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;
    .param p3, "aHttpSv"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    .line 83
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 86
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    .line 128
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 129
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    .line 130
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    .line 134
    return-void
.end method

.method private isEncrypted(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Z
    .locals 9
    .param p1, "aMetadatainfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .prologue
    .line 581
    const/4 v5, 0x1

    .line 583
    .local v5, "result":Z
    if-eqz p1, :cond_0

    iget-object v7, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-nez v7, :cond_1

    :cond_0
    move v6, v5

    .line 613
    .end local v5    # "result":Z
    .local v6, "result":I
    :goto_0
    return v6

    .line 590
    .end local v6    # "result":I
    .restart local v5    # "result":Z
    :cond_1
    iget-object v7, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v3, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .line 591
    .local v3, "keywordList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    iget-object v7, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v7, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    if-nez v7, :cond_2

    move v6, v5

    .line 595
    .restart local v6    # "result":I
    goto :goto_0

    .line 599
    .end local v6    # "result":I
    :cond_2
    move-object v0, v3

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v2, v0, v1

    .line 600
    .local v2, "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    if-eqz v2, :cond_3

    iget-object v7, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 599
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 604
    :cond_4
    iget-object v7, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    const-string v8, "other"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "encrypted:OFF"

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 606
    const/4 v5, 0x0

    .end local v2    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    :cond_5
    move v6, v5

    .line 613
    .restart local v6    # "result":I
    goto :goto_0
.end method

.method private setRmpiInfoSv(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;)V
    .locals 10
    .param p1, "aRmpiInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;
    .param p2, "aMwRmpiInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    .prologue
    const/4 v9, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 1101
    new-array v1, v9, [B

    .line 1102
    .local v1, "allZero":[B
    new-array v0, v9, [B

    .line 1103
    .local v0, "allFull":[B
    const/4 v6, 0x0

    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 1104
    const/4 v6, -0x1

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 1105
    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbStartDate:[B

    if-nez v6, :cond_0

    .line 1106
    iput-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmStartDate:Ljava/util/Date;

    .line 1121
    :goto_0
    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbPeriodDate:[B

    if-nez v6, :cond_3

    .line 1122
    iput-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmPeriodDate:Ljava/util/Date;

    .line 1137
    :goto_1
    iget-wide v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbSpanSec:J

    iput-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmSpanSec:J

    .line 1138
    iget v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbLimitCount:I

    iput v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmLimitCount:I

    .line 1139
    iget v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbLimitCountInfo:I

    iput v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmLimitCountInfo:I

    .line 1140
    iget-byte v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbCanTrickPlay:B

    iput-byte v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmCanTrickPlay:B

    .line 1141
    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbDisableTrickPlaySpan:[B

    if-nez v6, :cond_6

    .line 1142
    iput-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmDisableTrickPlaySpan:[B

    .line 1148
    :goto_2
    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbOutputControlInfo:[B

    if-nez v6, :cond_7

    .line 1149
    iput-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmOutputControlInfo:[B

    .line 1155
    :goto_3
    iget v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbRatingInfo:I

    iput v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmRatingInfo:I

    .line 1159
    return-void

    .line 1108
    :cond_0
    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbStartDate:[B

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbStartDate:[B

    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1110
    :cond_1
    iput-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmStartDate:Ljava/util/Date;

    goto :goto_0

    .line 1112
    :cond_2
    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbStartDate:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getDate([B)Ljava/util/Date;

    move-result-object v4

    .line 1115
    .local v4, "startDate":Ljava/util/Date;
    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbStartDate:[B

    invoke-static {v6, v7, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getTime(Ljava/util/Date;[B)Ljava/util/Date;

    move-result-object v5

    .line 1118
    .local v5, "startDateTime":Ljava/util/Date;
    iput-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmStartDate:Ljava/util/Date;

    goto :goto_0

    .line 1124
    .end local v4    # "startDate":Ljava/util/Date;
    .end local v5    # "startDateTime":Ljava/util/Date;
    :cond_3
    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbPeriodDate:[B

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbPeriodDate:[B

    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1126
    :cond_4
    iput-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmPeriodDate:Ljava/util/Date;

    goto :goto_1

    .line 1128
    :cond_5
    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbPeriodDate:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getDate([B)Ljava/util/Date;

    move-result-object v2

    .line 1131
    .local v2, "periodDate":Ljava/util/Date;
    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbPeriodDate:[B

    invoke-static {v6, v7, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getTime(Ljava/util/Date;[B)Ljava/util/Date;

    move-result-object v3

    .line 1134
    .local v3, "periodDateTime":Ljava/util/Date;
    iput-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmPeriodDate:Ljava/util/Date;

    goto :goto_1

    .line 1144
    .end local v2    # "periodDate":Ljava/util/Date;
    .end local v3    # "periodDateTime":Ljava/util/Date;
    :cond_6
    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbDisableTrickPlaySpan:[B

    iget-object v7, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbDisableTrickPlaySpan:[B

    array-length v7, v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    iput-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmDisableTrickPlaySpan:[B

    goto :goto_2

    .line 1151
    :cond_7
    iget-object v6, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbOutputControlInfo:[B

    iget-object v7, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbOutputControlInfo:[B

    array-length v7, v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    iput-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmOutputControlInfo:[B

    goto :goto_3
.end method

.method private setUseStateInfoSv(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;)V
    .locals 8
    .param p1, "aStateInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;
    .param p2, "aMwUseStateInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x5

    .line 1180
    iget-boolean v4, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbUseFlag:Z

    iput-boolean v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;->mmbCaCasDrmUseFlag:Z

    .line 1181
    iget-object v4, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbUseStartDate:[B

    if-nez v4, :cond_0

    .line 1182
    iput-object v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;->mmbCaCasDrmUseStartDate:Ljava/util/Date;

    .line 1201
    :goto_0
    iget v4, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbUseCount:I

    iput v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;->mmbCaCasDrmUseCount:I

    .line 1205
    return-void

    .line 1184
    :cond_0
    new-array v1, v5, [B

    .line 1185
    .local v1, "allZero":[B
    new-array v0, v5, [B

    .line 1186
    .local v0, "allFull":[B
    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 1187
    const/4 v4, -0x1

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 1188
    iget-object v4, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbUseStartDate:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbUseStartDate:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1190
    :cond_1
    iput-object v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;->mmbCaCasDrmUseStartDate:Ljava/util/Date;

    goto :goto_0

    .line 1192
    :cond_2
    iget-object v4, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbUseStartDate:[B

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getDate([B)Ljava/util/Date;

    move-result-object v2

    .line 1195
    .local v2, "startDate":Ljava/util/Date;
    iget-object v4, p2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbUseStartDate:[B

    invoke-static {v4, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getTime(Ljava/util/Date;[B)Ljava/util/Date;

    move-result-object v3

    .line 1198
    .local v3, "startDateTime":Ljava/util/Date;
    iput-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;->mmbCaCasDrmUseStartDate:Ljava/util/Date;

    goto :goto_0
.end method


# virtual methods
.method public addLicenseInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;BLjava/lang/String;)V
    .locals 58
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .param p2, "aEntityId"    # B
    .param p3, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 163
    if-nez p3, :cond_0

    .line 164
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v5, -0x1

    const-string v6, "Argument error."

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 167
    .local v24, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s (%d, %s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x3

    const/16 v55, 0x0

    aput-object v55, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    throw v24

    .line 172
    .end local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toByte(Ljava/lang/String;)[B

    move-result-object v13

    .line 175
    .local v13, "byteCrid":[B
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->setConflictStatus()V

    .line 179
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v14

    .line 180
    .local v14, "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v49

    .line 182
    .local v49, "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 185
    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConnectionInfo()I

    move-result v15

    .line 186
    .local v15, "connectioninfo":I
    const/4 v5, 0x3

    if-ne v5, v15, :cond_1

    .line 188
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v5, -0x1000002

    const-string v6, "Out of range."

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 191
    .restart local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s (%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    throw v24
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    .end local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v15    # "connectioninfo":I
    .end local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :catch_0
    move-exception v22

    .line 462
    .local v22, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :try_start_1
    move-object/from16 v0, v22

    iget v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    sparse-switch v5, :sswitch_data_0

    .line 539
    :goto_0
    throw v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    .end local v22    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catchall_0
    move-exception v5

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->resetConflictStatus()V

    throw v5

    .line 195
    .restart local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v15    # "connectioninfo":I
    .restart local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 198
    invoke-virtual/range {v49 .. v49}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClockForCasdrm()J

    move-result-wide v52

    .line 199
    .local v52, "scTime":J
    const-wide/16 v56, 0x0

    cmp-long v5, v56, v52

    if-lez v5, :cond_2

    .line 200
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v5, -0x1000000

    const-string v6, "Failed to get secure clock."

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 204
    .restart local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s (%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x2

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    throw v24
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    .end local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v15    # "connectioninfo":I
    .end local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v52    # "scTime":J
    :catch_1
    move-exception v22

    .line 541
    .local v22, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_3
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v6, -0x1

    move-object/from16 v0, v22

    invoke-direct {v5, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    .end local v22    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v15    # "connectioninfo":I
    .restart local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .restart local v52    # "scTime":J
    :cond_2
    :try_start_4
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 211
    new-instance v16, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)V

    .line 213
    .local v16, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;
    invoke-virtual/range {v16 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->isAccumulated()Z

    move-result v5

    if-nez v5, :cond_3

    .line 215
    new-instance v38, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;-><init>(Ljava/lang/String;)V

    .line 216
    .local v38, "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteLicenseTarget(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;)I

    .line 217
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v5, -0x1000008

    const-string v6, "Content is not accumulated."

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 220
    .restart local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s (%d, %s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x3

    aput-object p3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    throw v24
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 542
    .end local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v15    # "connectioninfo":I
    .end local v16    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;
    .end local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v38    # "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    .end local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v52    # "scTime":J
    :catch_2
    move-exception v22

    .line 543
    .local v22, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :try_start_5
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v6, -0x1000003

    move-object/from16 v0, v22

    invoke-direct {v5, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 224
    .end local v22    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    .restart local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v15    # "connectioninfo":I
    .restart local v16    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;
    .restart local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .restart local v52    # "scTime":J
    :cond_3
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 227
    invoke-virtual/range {v16 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->loadContentInfo()V

    .line 229
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 232
    invoke-virtual/range {v49 .. v49}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getParentalControl()I

    move-result v44

    .line 233
    .local v44, "pcontrol":I
    const/4 v5, 0x1

    move/from16 v0, v44

    if-ne v5, v0, :cond_4

    .line 238
    invoke-virtual/range {v49 .. v49}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getParentalControlRate()I

    move-result v48

    .line 239
    .local v48, "prate":I
    move-object/from16 v0, v16

    move/from16 v1, v44

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->checkParentalControl(II)V

    .line 242
    .end local v48    # "prate":I
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 245
    invoke-virtual/range {v16 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->getContentInfoBase()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->isEncrypted(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 247
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/16 v5, -0x15

    const-string v6, "License is unnecessary."

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 251
    .restart local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s (%d, %s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x3

    aput-object p3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    throw v24
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 544
    .end local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v15    # "connectioninfo":I
    .end local v16    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;
    .end local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v44    # "pcontrol":I
    .end local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v52    # "scTime":J
    :catch_3
    move-exception v22

    .line 545
    .local v22, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_7
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v6, -0x3

    move-object/from16 v0, v22

    invoke-direct {v5, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 255
    .end local v22    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v15    # "connectioninfo":I
    .restart local v16    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;
    .restart local v44    # "pcontrol":I
    .restart local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .restart local v52    # "scTime":J
    :cond_5
    :try_start_8
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 258
    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkForeignMode()I

    move-result v25

    .line 260
    .local v25, "foreignmode":I
    invoke-virtual/range {v16 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->loadLicenseInfo()V

    .line 261
    if-eqz v25, :cond_6

    .line 266
    invoke-virtual/range {v16 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->isLicenseIssueAbroadEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 267
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v5, -0x1000001

    const-string v6, "License cannot be issued abroad."

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 271
    .restart local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s (%d, %s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x3

    aput-object p3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    throw v24
    :try_end_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 546
    .end local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v15    # "connectioninfo":I
    .end local v16    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;
    .end local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v25    # "foreignmode":I
    .end local v44    # "pcontrol":I
    .end local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v52    # "scTime":J
    :catch_4
    move-exception v22

    .line 548
    .local v22, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_9
    throw v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 278
    .end local v22    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v15    # "connectioninfo":I
    .restart local v16    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;
    .restart local v25    # "foreignmode":I
    .restart local v44    # "pcontrol":I
    .restart local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .restart local v52    # "scTime":J
    :cond_6
    :try_start_a
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 281
    const/4 v5, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 285
    .local v37, "licensesavemax":I
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getLicenseCount()I

    move-result v36

    .line 287
    .local v36, "licensecount":I
    sub-int v12, v37, v36

    .line 288
    .local v12, "availableCnt":I
    if-gtz v12, :cond_9

    .line 294
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getAllEntityId()[B

    move-result-object v23

    .line 295
    .local v23, "entityids":[B
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_1
    move-object/from16 v0, v23

    array-length v5, v0

    move/from16 v0, v28

    if-ge v0, v5, :cond_7

    .line 296
    aget-byte v5, v23, v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v52

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->deleteInvalidLicense(BJ)I

    move-result v5

    add-int/2addr v12, v5

    .line 297
    if-lez v12, :cond_8

    .line 301
    :cond_7
    if-gtz v12, :cond_9

    .line 303
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/16 v5, -0xa

    const-string v6, "License maximum number excess."

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 307
    .restart local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s (%d, %d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x2

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x3

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    throw v24
    :try_end_a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 549
    .end local v12    # "availableCnt":I
    .end local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v15    # "connectioninfo":I
    .end local v16    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;
    .end local v23    # "entityids":[B
    .end local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v25    # "foreignmode":I
    .end local v28    # "i":I
    .end local v36    # "licensecount":I
    .end local v37    # "licensesavemax":I
    .end local v44    # "pcontrol":I
    .end local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v52    # "scTime":J
    :catch_5
    move-exception v22

    .line 550
    .local v22, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_b
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v6, -0x80000000

    move-object/from16 v0, v22

    invoke-direct {v5, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 295
    .end local v22    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .restart local v12    # "availableCnt":I
    .restart local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v15    # "connectioninfo":I
    .restart local v16    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;
    .restart local v23    # "entityids":[B
    .restart local v25    # "foreignmode":I
    .restart local v28    # "i":I
    .restart local v36    # "licensecount":I
    .restart local v37    # "licensesavemax":I
    .restart local v44    # "pcontrol":I
    .restart local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .restart local v52    # "scTime":J
    :cond_8
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 313
    .end local v23    # "entityids":[B
    .end local v28    # "i":I
    :cond_9
    :try_start_c
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 316
    invoke-virtual/range {v49 .. v49}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getNetworkInfoMcc()Ljava/lang/String;

    move-result-object v7

    .line 318
    .local v7, "areacode":Ljava/lang/String;
    const-string v5, "000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 320
    if-nez v25, :cond_c

    .line 322
    const-string v7, "JPN"

    .line 330
    :cond_a
    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getCasDrmServerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 332
    .local v9, "serverurl":Ljava/lang/String;
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_d

    .line 333
    :cond_b
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v5, -0x1

    const-string v6, "Server URL setting is missing."

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 336
    .restart local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s (%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v55

    aput-object v55, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    throw v24
    :try_end_c
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 551
    .end local v7    # "areacode":Ljava/lang/String;
    .end local v9    # "serverurl":Ljava/lang/String;
    .end local v12    # "availableCnt":I
    .end local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v15    # "connectioninfo":I
    .end local v16    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;
    .end local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v25    # "foreignmode":I
    .end local v36    # "licensecount":I
    .end local v37    # "licensesavemax":I
    .end local v44    # "pcontrol":I
    .end local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v52    # "scTime":J
    :catch_6
    move-exception v22

    .line 552
    .local v22, "e":Ljava/lang/NumberFormatException;
    :try_start_d
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v6, -0x80000000

    move-object/from16 v0, v22

    invoke-direct {v5, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 325
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "areacode":Ljava/lang/String;
    .restart local v12    # "availableCnt":I
    .restart local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v15    # "connectioninfo":I
    .restart local v16    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;
    .restart local v25    # "foreignmode":I
    .restart local v36    # "licensecount":I
    .restart local v37    # "licensesavemax":I
    .restart local v44    # "pcontrol":I
    .restart local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .restart local v52    # "scTime":J
    :cond_c
    :try_start_e
    const-string v7, "ERR"

    goto :goto_2

    .line 340
    .restart local v9    # "serverurl":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 343
    const/4 v5, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 346
    .local v43, "msgidMax":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    const/4 v6, 0x1

    move/from16 v0, v43

    invoke-virtual {v5, v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteOverMessageId(II)I

    .line 348
    new-instance v19, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;

    invoke-direct/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;-><init>()V

    .line 349
    .local v19, "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;
    move/from16 v0, p2

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;->mmbEntityId:I

    .line 350
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;->mmbCrId:Ljava/lang/String;

    .line 351
    invoke-static/range {p3 .. p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getCrid2Authority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;->mmbAuthority:Ljava/lang/String;

    .line 352
    move-wide/from16 v0, v52

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;->mmbSavedTime:J

    .line 353
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->getMessageId(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;

    .line 355
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 358
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;->mmbMessageId:[B

    invoke-static {v13, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getRequestLicenseInfo([B[B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;

    move-result-object v8

    .line 362
    .local v8, "licenseinfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 365
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;->mmbMessageId:[B

    move-object/from16 v5, p3

    move/from16 v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;-><init>(Ljava/lang/String;[BLjava/lang/String;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;Ljava/lang/String;B)V

    .line 369
    .local v4, "requestdata":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    move-object/from16 v0, p1

    invoke-virtual {v5, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->getLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;

    move-result-object v51

    .line 375
    .local v51, "responsedata":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 378
    iget-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbCrid:Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, v51

    iget-object v10, v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCrId:[B

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 379
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/16 v5, -0xe

    const-string v6, "Requests and responses with CRID mismatch."

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 383
    .restart local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s (Req<%s>, Res<%s>)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x2

    iget-object v0, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v55, v0

    aput-object v55, v6, v10

    const/4 v10, 0x3

    move-object/from16 v0, v51

    iget-object v0, v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCrId:[B

    move-object/from16 v55, v0

    aput-object v55, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    throw v24

    .line 389
    .end local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_e
    iget-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbMessageId:[B

    move-object/from16 v0, v51

    iget-object v6, v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbMessageId:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_f

    .line 391
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/16 v5, -0xf

    const-string v6, "MessageId check error."

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 395
    .restart local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s (%d, %s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x3

    aput-object p3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    throw v24

    .line 400
    .end local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_f
    invoke-static/range {v51 .. v51}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->registerLicense(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;)V
    :try_end_e
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 405
    :try_start_f
    invoke-static/range {p3 .. p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toByte(Ljava/lang/String;)[B

    move-result-object v5

    move/from16 v0, p2

    invoke-static {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getLicenseInfo(B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :try_end_f
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_f .. :try_end_f} :catch_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_f .. :try_end_f} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_f .. :try_end_f} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v33

    .line 412
    .local v33, "license":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :try_start_10
    move-object/from16 v0, v33

    iget-object v5, v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    if-nez v5, :cond_10

    .line 413
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v5, -0x8

    const-string v6, "License not found."

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 416
    .restart local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s (%d, %s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x3

    aput-object p3, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    throw v24

    .line 408
    .end local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v33    # "license":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :catch_7
    move-exception v22

    .line 409
    .local v22, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v22

    .line 420
    .end local v22    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v33    # "license":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :cond_10
    move-object/from16 v0, v33

    iget-object v5, v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toHexString([B)Ljava/lang/String;

    move-result-object v35

    .line 421
    .local v35, "licenseId":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->searchPurchaseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 424
    .local v50, "purchaseId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteMessageId(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;)I

    .line 427
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->checkLicenseDeleteHistory(Ljava/lang/String;)Z

    move-result v31

    .line 428
    .local v31, "ldhExistence":Z
    const/4 v5, 0x1

    move/from16 v0, v31

    if-ne v0, v5, :cond_11

    .line 429
    new-instance v30, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;

    invoke-direct/range {v30 .. v30}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;-><init>()V

    .line 431
    .local v30, "ldhDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbLicenseId:Ljava/lang/String;

    .line 432
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteLicenseDeleteHistory(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;)I

    .line 436
    .end local v30    # "ldhDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;
    :cond_11
    new-instance v38, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;

    invoke-direct/range {v38 .. v38}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;-><init>()V

    .line 437
    .restart local v38    # "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    move-object/from16 v0, v35

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;->mmbLicenseId:Ljava/lang/String;

    .line 438
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteLicenseTargetAcquiringLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;)I

    .line 442
    invoke-virtual/range {v49 .. v49}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClockForCasdrm()J

    move-result-wide v52

    .line 443
    const-wide/16 v56, 0x0

    cmp-long v5, v56, v52

    if-lez v5, :cond_12

    .line 444
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v5, -0x1000000

    const-string v6, "Failed to get secure clock."

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 448
    .restart local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s (%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v55

    aput-object v55, v6, v10

    const/4 v10, 0x2

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    throw v24

    .line 453
    .end local v24    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_12
    invoke-virtual/range {v16 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->getMemberOf()[Ljava/lang/String;

    move-result-object v39

    .line 454
    .local v39, "memberof":[Ljava/lang/String;
    move-object/from16 v0, v39

    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 455
    .local v18, "cridList":[Ljava/lang/String;
    const/4 v5, 0x0

    aput-object p3, v18, v5

    .line 456
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v39

    array-length v10, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    invoke-static {v0, v5, v1, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-wide/from16 v0, v52

    move-object/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->updatePurchaseHistory(J[Ljava/lang/String;)I

    .line 459
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    const/4 v6, 0x1

    move-object/from16 v0, v50

    invoke-virtual {v5, v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->updatePurchaseHistory(Ljava/lang/String;Z)I
    :try_end_10
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->resetConflictStatus()V

    .line 560
    return-void

    .line 466
    .end local v4    # "requestdata":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;
    .end local v7    # "areacode":Ljava/lang/String;
    .end local v8    # "licenseinfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;
    .end local v9    # "serverurl":Ljava/lang/String;
    .end local v12    # "availableCnt":I
    .end local v14    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v15    # "connectioninfo":I
    .end local v16    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;
    .end local v18    # "cridList":[Ljava/lang/String;
    .end local v19    # "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;
    .end local v25    # "foreignmode":I
    .end local v31    # "ldhExistence":Z
    .end local v33    # "license":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    .end local v35    # "licenseId":Ljava/lang/String;
    .end local v36    # "licensecount":I
    .end local v37    # "licensesavemax":I
    .end local v38    # "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    .end local v39    # "memberof":[Ljava/lang/String;
    .end local v43    # "msgidMax":I
    .end local v44    # "pcontrol":I
    .end local v49    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v50    # "purchaseId":Ljava/lang/String;
    .end local v51    # "responsedata":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;
    .end local v52    # "scTime":J
    .restart local v22    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :sswitch_0
    const/16 v41, 0x0

    .line 467
    .local v41, "metaLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :try_start_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v17

    .line 468
    .local v17, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v41

    .line 470
    if-eqz v41, :cond_15

    .line 471
    move-object/from16 v11, v41

    .local v11, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    array-length v0, v11

    move/from16 v32, v0

    .local v32, "len$":I
    const/16 v29, 0x0

    .local v29, "i$":I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_15

    aget-object v40, v11, v29

    .line 473
    .local v40, "metaLicense":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    move-object/from16 v0, v40

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    iget v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->countsLimit:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_14

    .line 474
    const-wide v26, 0x7fffffffffffffffL

    .line 476
    .local v26, "expirationDate":J
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;->getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;

    move-result-object v47

    .line 478
    .local v47, "pgSlistHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;->execute(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v46

    .line 481
    .local v46, "pgRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;>;"
    if-eqz v46, :cond_13

    .line 482
    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;

    .line 484
    .local v45, "pgRecord":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;
    invoke-virtual/range {v45 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;->getPeriodAvailabilityEnd()J

    move-result-wide v26

    .line 487
    .end local v45    # "pgRecord":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;
    :cond_13
    new-instance v30, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;

    invoke-direct/range {v30 .. v30}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;-><init>()V

    .line 489
    .restart local v30    # "ldhDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;
    move-object/from16 v0, v40

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbLicenseId:Ljava/lang/String;

    .line 490
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbCrid:Ljava/lang/String;

    .line 491
    move/from16 v0, p2

    move-object/from16 v1, v30

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbEntityId:I

    .line 492
    invoke-static/range {p3 .. p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getCrid2Authority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    iput-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbAuthority:Ljava/lang/String;

    .line 493
    move-wide/from16 v0, v26

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbExpirationDate:J

    .line 495
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->insertLicenseDeleteHistory(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;)I

    .line 497
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->getLicenseDeleteHistoryCount()I

    move-result v34

    .line 498
    .local v34, "licenseDeleteHistoryCnt":I
    const/16 v5, 0xfa0

    move/from16 v0, v34

    if-le v0, v5, :cond_14

    .line 499
    move/from16 v0, v34

    add-int/lit16 v0, v0, -0xfa0

    move/from16 v20, v0

    .line 501
    .local v20, "deleteCnt":I
    const/16 v21, 0x0

    .line 502
    .local v21, "deletedCnt":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteOverLicenseDeleteHistoryByIndefinitePeriod(I)I

    move-result v21

    .line 504
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_14

    .line 505
    sub-int v20, v20, v21

    .line 506
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteOverLicenseDeleteHistoryByNearPeriod(I)I

    .line 471
    .end local v20    # "deleteCnt":I
    .end local v21    # "deletedCnt":I
    .end local v26    # "expirationDate":J
    .end local v30    # "ldhDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;
    .end local v34    # "licenseDeleteHistoryCnt":I
    .end local v46    # "pgRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;>;"
    .end local v47    # "pgSlistHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;
    :cond_14
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_3

    .line 514
    .end local v11    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .end local v29    # "i$":I
    .end local v32    # "len$":I
    .end local v40    # "metaLicense":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :cond_15
    new-instance v19, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    invoke-direct/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;-><init>()V

    .line 515
    .local v19, "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbCrid:Ljava/lang/String;

    .line 516
    new-instance v38, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;-><init>(Ljava/lang/String;)V

    .line 517
    .restart local v38    # "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deletePurchaseHistory(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;)I

    .line 518
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteLicenseTarget(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;)I

    goto/16 :goto_0

    .line 525
    .end local v17    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v19    # "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    .end local v38    # "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    .end local v41    # "metaLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :sswitch_1
    new-instance v42, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;

    invoke-direct/range {v42 .. v42}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;-><init>()V

    .line 526
    .local v42, "midao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;->mmbCrId:Ljava/lang/String;

    .line 527
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteMessageId(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;)I

    goto/16 :goto_0

    .line 531
    .end local v42    # "midao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;
    :sswitch_2
    new-instance v54, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->network:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    invoke-direct {v5, v6, v10, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v54

    move/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;B)V

    .line 534
    .local v54, "thread":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v5

    move-object/from16 v0, v54

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-object/from16 v0, v54

    invoke-virtual {v5, v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->startBackgroundJobThread(Ljava/lang/Thread;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 462
    :sswitch_data_0
    .sparse-switch
        -0x3000012 -> :sswitch_2
        -0x3000004 -> :sswitch_0
        -0xf -> :sswitch_1
        -0xe -> :sswitch_1
        -0xd -> :sswitch_1
        -0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public checkAndDeleteInvalidLicense(BLjava/lang/String;JLjava/lang/StringBuilder;)Z
    .locals 5
    .param p1, "aEntityid"    # B
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aTime"    # J
    .param p5, "aOutput"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1322
    const/4 v2, 0x0

    .line 1324
    .local v2, "result":Z
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1327
    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;-><init>()V

    .line 1328
    .local v1, "licenseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    iput-object p2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    .line 1329
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V

    .line 1331
    iget-object v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmLicenseId:[B
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 1333
    const/4 v2, 0x0

    .line 1356
    :goto_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1361
    .end local v1    # "licenseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    :goto_1
    return v2

    .line 1336
    .restart local v1    # "licenseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->isValidLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1338
    iget-object v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmLicenseId:[B

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    const/4 v2, 0x1

    goto :goto_0

    .line 1346
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->removeLicenseInfoByLicenseDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;BLjava/lang/String;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1347
    const/4 v2, 0x0

    goto :goto_0

    .line 1350
    .end local v1    # "licenseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const/4 v3, -0x8

    :try_start_2
    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    if-eq v3, v4, :cond_2

    .line 1352
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1356
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .restart local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_2
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1
.end method

.method protected checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 5
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 681
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x1000007

    const-string v2, "Cancelled."

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 685
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s"

    const/4 v2, 0x2

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

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    throw v0

    .line 691
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    return-void
.end method

.method public varargs checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V
    .locals 13
    .param p1, "aEntityid"    # B
    .param p2, "aCheckInfo"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 923
    if-nez p2, :cond_0

    .line 924
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v6, "Argument error."

    invoke-direct {v0, v8, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 927
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v6, "[%d] %s (%d, %s)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v11

    const/4 v8, 0x0

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 929
    throw v0

    .line 932
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;-><init>()V

    .line 933
    .local v2, "licenseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    const-wide/high16 v4, -0x8000000000000000L

    .line 934
    .local v4, "scTime":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p2

    if-ge v1, v6, :cond_8

    .line 937
    aget-object v6, p2, v1

    if-eqz v6, :cond_1

    aget-object v6, p2, v1

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 938
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v6, "Argument error."

    invoke-direct {v0, v8, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 941
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v6, "[%d] %s (%d, %s)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 943
    throw v0

    .line 947
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_2
    aget-object v6, p2, v1

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmMetadatainfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->isEncrypted(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Z

    move-result v6

    if-ne v9, v6, :cond_7

    .line 948
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    .line 950
    .local v3, "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getStartupMode()I

    move-result v6

    if-eqz v6, :cond_3

    .line 951
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/16 v6, -0x16

    const-string v7, "CAS/DRM function is Not action for LIMITED MODE"

    invoke-direct {v0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 955
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v0

    .line 959
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_3
    aget-object v6, p2, v1

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    iput-object v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    .line 960
    new-array v6, v9, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    aput-object v2, v6, v10

    invoke-virtual {p0, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V

    .line 962
    iget-object v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmLicenseId:[B

    if-eqz v6, :cond_6

    .line 965
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    .line 966
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClockForCasdrm()J

    move-result-wide v4

    .line 967
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    .line 968
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v6, -0x1000000

    const-string v7, "Failed to get secure clock."

    invoke-direct {v0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 972
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v6, "[%d] %s (%d)"

    new-array v7, v12, [Ljava/lang/Object;

    iget v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 973
    throw v0

    .line 977
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_4
    invoke-virtual {p0, v2, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->isValidLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;J)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 979
    aget-object v6, p2, v1

    iput-short v9, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    .line 934
    .end local v3    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 983
    .restart local v3    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :cond_5
    aget-object v6, p2, v1

    iput-short v11, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    goto :goto_1

    .line 988
    :cond_6
    aget-object v6, p2, v1

    iput-short v10, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    goto :goto_1

    .line 992
    .end local v3    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :cond_7
    aget-object v6, p2, v1

    iput-short v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    goto :goto_1

    .line 1000
    :cond_8
    return-void
.end method

.method public deleteInvalidLicense(BJ)I
    .locals 24
    .param p1, "aEntityId"    # B
    .param p2, "aTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1226
    sget-object v21, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1229
    :try_start_0
    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, v21

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->deleteInvalidLicenseInfo(BLjava/util/Date;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1233
    .local v4, "baCridList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 1234
    .local v5, "cntCrid":I
    if-gtz v5, :cond_0

    .line 1235
    const/4 v5, 0x0

    .line 1292
    sget-object v21, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v6, v5

    .line 1297
    .end local v5    # "cntCrid":I
    .local v6, "cntCrid":I
    :goto_0
    return v6

    .line 1244
    .end local v6    # "cntCrid":I
    .restart local v5    # "cntCrid":I
    :cond_0
    :try_start_1
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;-><init>()V

    .line 1246
    .local v8, "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    move/from16 v0, p1

    iput v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbEntityId:I

    .line 1247
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v5, :cond_3

    .line 1248
    const-wide v12, 0x7fffffffffffffffL

    .line 1249
    .local v12, "expirationDate":J
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;

    .line 1250
    .local v14, "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;
    iget-object v0, v14, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;->mmbCrId:[B

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toString([B)Ljava/lang/String;

    move-result-object v7

    .line 1251
    .local v7, "crid":Ljava/lang/String;
    iput-object v7, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbCrid:Ljava/lang/String;

    .line 1252
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbAcquireLicense:Z

    .line 1253
    new-instance v17, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v17, "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    iget-object v0, v14, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;->mmbLicenseId:[B

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toHexString([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;->mmbLicenseId:Ljava/lang/String;

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deletePurchaseHistoryAcquiringLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;)I

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteLicenseTargetAcquiringLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;)I

    .line 1261
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;->getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;

    move-result-object v20

    .line 1263
    .local v20, "pgSlistHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;->execute(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 1265
    .local v19, "pgRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;>;"
    if-eqz v19, :cond_1

    .line 1266
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;

    .line 1267
    .local v18, "pgRecord":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;
    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;->getPeriodAvailabilityEnd()J

    move-result-wide v12

    .line 1270
    .end local v18    # "pgRecord":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;
    :cond_1
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;

    invoke-direct {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;-><init>()V

    .line 1272
    .local v15, "ldhDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;
    iget-object v0, v14, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;->mmbLicenseId:[B

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toHexString([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbLicenseId:Ljava/lang/String;

    .line 1273
    iput-object v7, v15, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbCrid:Ljava/lang/String;

    .line 1274
    move/from16 v0, p1

    iput v0, v15, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbEntityId:I

    .line 1275
    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getCrid2Authority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbAuthority:Ljava/lang/String;

    .line 1276
    iput-wide v12, v15, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbExpirationDate:J

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->insertLicenseDeleteHistory(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;)I

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->getLicenseDeleteHistoryCount()I

    move-result v16

    .line 1281
    .local v16, "licenseDeleteHistoryCnt":I
    const/16 v21, 0xfa0

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 1282
    move/from16 v0, v16

    add-int/lit16 v9, v0, -0xfa0

    .line 1283
    .local v9, "deleteCnt":I
    const/4 v10, 0x0

    .line 1284
    .local v10, "deletedCnt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteOverLicenseDeleteHistoryByIndefinitePeriod(I)I

    move-result v10

    .line 1285
    if-le v9, v10, :cond_2

    .line 1286
    sub-int/2addr v9, v10

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteOverLicenseDeleteHistoryByNearPeriod(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1247
    .end local v9    # "deleteCnt":I
    .end local v10    # "deletedCnt":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1292
    .end local v7    # "crid":Ljava/lang/String;
    .end local v12    # "expirationDate":J
    .end local v14    # "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;
    .end local v15    # "ldhDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;
    .end local v16    # "licenseDeleteHistoryCnt":I
    .end local v17    # "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    .end local v19    # "pgRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;>;"
    .end local v20    # "pgSlistHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;
    :cond_3
    sget-object v21, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v6, v5

    .line 1297
    .end local v5    # "cntCrid":I
    .restart local v6    # "cntCrid":I
    goto/16 :goto_0

    .line 1292
    .end local v4    # "baCridList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;>;"
    .end local v6    # "cntCrid":I
    .end local v8    # "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    .end local v11    # "i":I
    :catchall_0
    move-exception v21

    sget-object v22, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v21
.end method

.method public varargs getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V
    .locals 12
    .param p1, "aEntityid"    # B
    .param p2, "aLicenseInfo"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1026
    if-nez p2, :cond_0

    .line 1027
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v4, "Argument error."

    invoke-direct {v1, v9, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 1030
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v4, "[%d] %s (%d, %s)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v11

    const/4 v6, 0x3

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1032
    throw v1

    .line 1036
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_5

    .line 1039
    aget-object v4, p2, v2

    if-eqz v4, :cond_1

    aget-object v4, p2, v2

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 1040
    :cond_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v4, "Argument error."

    invoke-direct {v1, v9, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 1043
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v4, "[%d] %s (%d, %s)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v11

    const/4 v6, 0x3

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1045
    throw v1

    .line 1049
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_2
    :try_start_0
    aget-object v4, p2, v2

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toByte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getLicenseInfo(B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;

    move-result-object v3

    .line 1053
    .local v3, "license":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    if-nez v4, :cond_3

    .line 1054
    aget-object v4, p2, v2

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmLicenseId:[B

    .line 1059
    :goto_1
    aget-object v4, p2, v2

    iget-byte v5, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbVersionNo:B

    iput-byte v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmVersionNo:B

    .line 1060
    aget-object v4, p2, v2

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;-><init>()V

    iput-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmRmpi:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;

    .line 1061
    aget-object v4, p2, v2

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmRmpi:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;

    iget-object v5, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    invoke-direct {p0, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->setRmpiInfoSv(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;)V

    .line 1062
    aget-object v4, p2, v2

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;-><init>()V

    iput-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmUseSatate:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;

    .line 1063
    aget-object v4, p2, v2

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmUseSatate:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;

    iget-object v5, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbUseState:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;

    invoke-direct {p0, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->setUseStateInfoSv(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;)V

    .line 1036
    .end local v3    # "license":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1056
    .restart local v3    # "license":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :cond_3
    aget-object v4, p2, v2

    iget-object v5, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    array-length v6, v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmLicenseId:[B
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1065
    .end local v3    # "license":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/4 v5, -0x8

    if-eq v4, v5, :cond_4

    .line 1067
    throw v0

    .line 1070
    :cond_4
    aget-object v4, p2, v2

    iput-object v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmLicenseId:[B

    .line 1071
    aget-object v4, p2, v2

    iput-byte v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmVersionNo:B

    .line 1072
    aget-object v4, p2, v2

    iput-object v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmRmpi:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;

    .line 1073
    aget-object v4, p2, v2

    iput-object v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmUseSatate:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;

    goto :goto_2

    .line 1079
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_5
    return-void
.end method

.method public hasLicense(BLjava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 5
    .param p1, "aEntityId"    # B
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aOutput"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1469
    :try_start_0
    invoke-static {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toByte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getLicenseInfo(B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;

    move-result-object v1

    .line 1471
    .local v1, "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    if-eqz v3, :cond_0

    .line 1473
    iget-object v3, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1474
    const/4 v2, 0x1

    .line 1489
    .end local v1    # "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    .local v2, "result":Z
    :goto_0
    return v2

    .line 1477
    .end local v2    # "result":Z
    .restart local v1    # "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0

    .line 1479
    .end local v1    # "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    .end local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 1480
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/4 v4, -0x8

    if-eq v3, v4, :cond_1

    .line 1481
    throw v0

    .line 1484
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public isValidLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;J)Z
    .locals 12
    .param p1, "aLicenceInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    .param p2, "aTime"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1388
    iget-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmRmpi:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;

    iget v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmLimitCount:I

    .line 1389
    .local v0, "limitCount":I
    iget-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmUseSatate:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;

    iget v5, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;->mmbCaCasDrmUseCount:I

    .line 1391
    .local v5, "useCount":I
    if-eqz v0, :cond_1

    if-ne v5, v0, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return v6

    .line 1404
    :cond_1
    iget-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmUseSatate:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;

    iget-object v4, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;->mmbCaCasDrmUseStartDate:Ljava/util/Date;

    .line 1405
    .local v4, "startDate":Ljava/util/Date;
    iget-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmRmpi:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;

    iget-wide v2, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmSpanSec:J

    .line 1407
    .local v2, "spanSec":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_3

    .line 1409
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v2

    add-long/2addr v8, v10

    cmp-long v8, v8, p2

    if-lez v8, :cond_0

    :cond_2
    move v6, v7

    .line 1422
    goto :goto_0

    .line 1428
    :cond_3
    iget-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmRmpi:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;

    iget-object v1, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmPeriodDate:Ljava/util/Date;

    .line 1429
    .local v1, "periodDate":Ljava/util/Date;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v8, v8, p2

    if-lez v8, :cond_0

    :cond_4
    move v6, v7

    .line 1442
    goto :goto_0
.end method

.method public removeLicenseInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;BLjava/lang/String;)V
    .locals 9
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .param p2, "aEntityid"    # B
    .param p3, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 848
    if-nez p3, :cond_0

    .line 849
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v5, -0x1

    const-string v6, "Argument error."

    invoke-direct {v2, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 852
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s (%d, %s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    throw v2

    .line 857
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    const/4 v2, 0x0

    .line 858
    .restart local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 860
    :try_start_0
    invoke-static {p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toByte(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {p2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->deleteLicenseInfo(B[B)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 873
    :goto_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;-><init>()V

    .line 874
    .local v0, "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    iput p2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbEntityId:I

    .line 875
    iput-object p3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbCrid:Ljava/lang/String;

    .line 876
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;-><init>()V

    .line 877
    .local v4, "midao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;
    iput-object p3, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;->mmbCrId:Ljava/lang/String;

    .line 878
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;

    invoke-direct {v3, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;-><init>(Ljava/lang/String;)V

    .line 880
    .local v3, "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deletePurchaseHistory(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;)I

    .line 881
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteMessageId(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;)I

    .line 882
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteLicenseTarget(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;)I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 889
    if-eqz v2, :cond_4

    .line 890
    throw v2

    .line 862
    .end local v0    # "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    .end local v3    # "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    .end local v4    # "midao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;
    :catch_0
    move-exception v1

    .line 864
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const/4 v5, -0x8

    :try_start_2
    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    if-eq v5, v6, :cond_1

    .line 865
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 869
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 867
    .restart local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_1
    move-object v2, v1

    .line 869
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 883
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v0    # "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    .restart local v3    # "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    .restart local v4    # "midao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbMessageIdDaoSv;
    :catch_1
    move-exception v1

    .line 885
    .restart local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    if-nez v2, :cond_2

    .line 886
    move-object v2, v1

    .line 889
    :cond_2
    if-eqz v2, :cond_4

    .line 890
    throw v2

    .line 889
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catchall_1
    move-exception v5

    if-eqz v2, :cond_3

    .line 890
    throw v2

    :cond_3
    throw v5

    .line 896
    :cond_4
    return-void
.end method

.method public removeLicenseInfoByLicenseDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;BLjava/lang/String;)V
    .locals 23
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .param p2, "aEntityid"    # B
    .param p3, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 719
    if-nez p3, :cond_0

    .line 720
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/16 v19, -0x1

    const-string v20, "Argument error."

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 723
    .local v9, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v19, "[%d] %s (%d, %s)"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const/16 v22, 0x0

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    throw v9

    .line 730
    .end local v9    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toByte(Ljava/lang/String;)[B

    move-result-object v19

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getLicenseInfo(B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 737
    .local v13, "license":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    if-eqz v13, :cond_1

    iget-object v0, v13, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 738
    :cond_1
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/16 v19, -0x8

    const-string v20, "License not found."

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 741
    .restart local v9    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v19, "[%d] %s (%d, %s)"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    aput-object p3, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    throw v9

    .line 733
    .end local v9    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v13    # "license":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :catch_0
    move-exception v8

    .line 734
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v8

    .line 745
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v13    # "license":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :cond_2
    const-wide v10, 0x7fffffffffffffffL

    .line 746
    .local v10, "expirationDate":J
    const/4 v4, 0x0

    .line 747
    .local v4, "authority":Ljava/lang/String;
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;->getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;

    move-result-object v18

    .line 749
    .local v18, "pgSlistHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;->execute(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 752
    .local v17, "pgRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;>;"
    if-eqz v17, :cond_3

    .line 753
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;

    .line 754
    .local v16, "pgRecord":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;
    invoke-virtual/range {v16 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;->getPeriodAvailabilityEnd()J

    move-result-wide v10

    .line 757
    .end local v16    # "pgRecord":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;
    :cond_3
    invoke-static/range {p3 .. p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getCrid2Authority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 760
    const/4 v9, 0x0

    .line 761
    .restart local v9    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    sget-object v19, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 763
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toByte(Ljava/lang/String;)[B

    move-result-object v19

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->deleteLicenseInfo(B[B)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 772
    sget-object v19, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 776
    :goto_0
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;-><init>()V

    .line 777
    .local v5, "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    move/from16 v0, p2

    iput v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbEntityId:I

    .line 778
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbCrid:Ljava/lang/String;

    .line 779
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbAcquireLicense:Z

    .line 780
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;

    move-object/from16 v0, p3

    invoke-direct {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;-><init>(Ljava/lang/String;)V

    .line 781
    .local v15, "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    iget-object v0, v13, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toHexString([B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;->mmbLicenseId:Ljava/lang/String;

    .line 784
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;

    invoke-direct {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;-><init>()V

    .line 786
    .local v12, "ldhDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;
    iget-object v0, v13, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toHexString([B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbLicenseId:Ljava/lang/String;

    .line 787
    move-object/from16 v0, p3

    iput-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbCrid:Ljava/lang/String;

    .line 788
    move/from16 v0, p2

    iput v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbEntityId:I

    .line 789
    iput-object v4, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbAuthority:Ljava/lang/String;

    .line 790
    iput-wide v10, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;->mmbExpirationDate:J

    .line 792
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deletePurchaseHistoryAcquiringLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;)I

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteLicenseTargetAcquiringLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;)I

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->insertLicenseDeleteHistory(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;)I

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->getLicenseDeleteHistoryCount()I

    move-result v14

    .line 797
    .local v14, "licenseDeleteHistoryCnt":I
    const/16 v19, 0xfa0

    move/from16 v0, v19

    if-le v14, v0, :cond_4

    .line 798
    add-int/lit16 v6, v14, -0xfa0

    .line 799
    .local v6, "deleteCnt":I
    const/4 v7, 0x0

    .line 800
    .local v7, "deletedCnt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteOverLicenseDeleteHistoryByIndefinitePeriod(I)I

    move-result v7

    .line 801
    if-le v6, v7, :cond_4

    .line 802
    sub-int/2addr v6, v7

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteOverLicenseDeleteHistoryByNearPeriod(I)I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 812
    .end local v6    # "deleteCnt":I
    .end local v7    # "deletedCnt":I
    :cond_4
    if-eqz v9, :cond_8

    .line 813
    throw v9

    .line 765
    .end local v5    # "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    .end local v12    # "ldhDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;
    .end local v14    # "licenseDeleteHistoryCnt":I
    .end local v15    # "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    :catch_1
    move-exception v8

    .line 767
    .restart local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const/16 v19, -0x8

    :try_start_3
    iget v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 768
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 772
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catchall_0
    move-exception v19

    sget-object v20, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v19

    .line 770
    .restart local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_5
    move-object v9, v8

    .line 772
    sget-object v19, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 806
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v5    # "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    .restart local v12    # "ldhDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;
    .restart local v15    # "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    :catch_2
    move-exception v8

    .line 808
    .restart local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    if-nez v9, :cond_6

    .line 809
    move-object v9, v8

    .line 812
    :cond_6
    if-eqz v9, :cond_8

    .line 813
    throw v9

    .line 812
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catchall_1
    move-exception v19

    if-eqz v9, :cond_7

    .line 813
    throw v9

    :cond_7
    throw v19

    .line 820
    :cond_8
    return-void
.end method

.method protected resetConflictStatus()V
    .locals 2

    .prologue
    .line 655
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->manualRunCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 662
    .local v0, "cnt":I
    return-void
.end method

.method protected setConflictStatus()V
    .locals 2

    .prologue
    .line 631
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->manualRunCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 638
    .local v0, "cnt":I
    return-void
.end method
