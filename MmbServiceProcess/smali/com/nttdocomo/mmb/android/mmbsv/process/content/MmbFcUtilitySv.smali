.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
.super Ljava/lang/Object;
.source "MmbFcUtilitySv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv$1;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv$MmbFCContDownloadTypePriority;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv$MmbFcContSvLogReason;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv$MmbFcDownloadEventListenerForSearchSv;
    }
.end annotation


# static fields
.field private static final DIGIT_CHAR:[C

.field private static mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# instance fields
.field private final complementNotificationHttpStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final complementNotificationReasonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 297
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->DIGIT_CHAR:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 1
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->complementNotificationReasonMap:Ljava/util/Map;

    .line 3257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->complementNotificationHttpStatusMap:Ljava/util/Map;

    .line 314
    sput-object p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 315
    return-void
.end method

.method private checkCommonContentFromGenre(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Z
    .locals 7
    .param p1, "aMetadata"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .prologue
    .line 770
    const/4 v4, 0x0

    .line 771
    .local v4, "result":Z
    iget-object v5, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->genre:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;

    if-nez v5, :cond_1

    .line 772
    :cond_0
    const-string v5, "unknown genre"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v6, "unknown genre"

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 777
    :cond_1
    iget-object v5, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v0, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->genre:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 778
    .local v1, "genre":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;
    iget-object v5, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;->type:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;->genre:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 777
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 781
    :cond_3
    iget-object v5, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;->type:Ljava/lang/String;

    const-string v6, "other"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;->genre:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/ISDBTMMIntendedAudienceCS/1"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 784
    const/4 v4, 0x1

    .line 792
    .end local v1    # "genre":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;
    :cond_4
    return v4
.end method

.method static checkCridFormat(Ljava/lang/String;)Z
    .locals 3
    .param p0, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1348
    const/4 v0, 0x0

    .line 1350
    .local v0, "ret":Z
    if-nez p0, :cond_1

    .line 1351
    const/4 v0, 0x0

    .line 1359
    :cond_0
    :goto_0
    return v0

    .line 1352
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0xff

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1353
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static getBytes(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1382
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1383
    .local v0, "byteArrayStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1386
    .local v1, "outputStream":Ljava/io/OutputStream;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .local v3, "size":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1387
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1390
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_0

    .line 1391
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 1392
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_0
    throw v4

    .line 1390
    .restart local v3    # "size":I
    :cond_1
    if-eqz v1, :cond_2

    .line 1391
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 1392
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1399
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1403
    .local v2, "ret":[B
    return-object v2
.end method

.method public static getCrid2Authority(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x7

    .line 882
    const-string v2, "crid://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 884
    .local v0, "l":I
    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    .line 885
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 895
    .end local v0    # "l":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getListField([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;)[Ljava/lang/String;
    .locals 7
    .param p1, "aRecords"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .param p2, "aField"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .prologue
    const/4 v6, 0x0

    .line 2443
    const/4 v2, 0x0

    .line 2444
    .local v2, "result":[Ljava/lang/String;
    aget-object v1, p1, v6

    .line 2445
    .local v1, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 2446
    iget-object v4, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    aget-object v0, v4, v6

    .line 2447
    .local v0, "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    iget-object v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    if-ne v4, p2, :cond_0

    iget-object v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    if-eqz v4, :cond_0

    .line 2448
    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 2449
    .local v3, "value":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;
    iget-object v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_LIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    if-ne v4, v5, :cond_0

    .line 2450
    check-cast v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueList;

    .end local v3    # "value":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;
    iget-object v2, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueList;->value:[Ljava/lang/String;

    .line 2458
    .end local v0    # "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    :cond_0
    return-object v2
.end method

.method static getMmbFcContSvDownloadStatus(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;)I
    .locals 2
    .param p0, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .prologue
    .line 995
    const/4 v0, 0x0

    .line 996
    .local v0, "result":I
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne p0, v1, :cond_0

    .line 997
    const/16 v0, 0x33

    .line 1008
    :goto_0
    return v0

    .line 998
    :cond_0
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne p0, v1, :cond_1

    .line 999
    const/16 v0, 0x35

    goto :goto_0

    .line 1000
    :cond_1
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_NO_DATA:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne p0, v1, :cond_2

    .line 1001
    const/16 v0, 0x38

    goto :goto_0

    .line 1003
    :cond_2
    const/16 v0, 0x38

    goto :goto_0
.end method

.method static getMmbFcContSvResumeType(I)I
    .locals 2
    .param p0, "aMwRet"    # I

    .prologue
    .line 961
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->RESUME_MP4:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->getInt()I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 962
    const/16 v0, 0x3e

    .line 973
    .local v0, "result":I
    :goto_0
    return v0

    .line 963
    .end local v0    # "result":I
    :cond_0
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->RESUME_BROWSE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->getInt()I

    move-result v1

    if-ne p0, v1, :cond_1

    .line 964
    const/16 v0, 0x3f

    .restart local v0    # "result":I
    goto :goto_0

    .line 965
    .end local v0    # "result":I
    :cond_1
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->RESUME_BOTH:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->getInt()I

    move-result v1

    if-ne p0, v1, :cond_2

    .line 966
    const/16 v0, 0x40

    .restart local v0    # "result":I
    goto :goto_0

    .line 968
    .end local v0    # "result":I
    :cond_2
    const/16 v0, 0x3d

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method static getTsFromServiceId(I)I
    .locals 3
    .param p0, "aServiceId"    # I

    .prologue
    .line 2092
    const/4 v1, 0x0

    .line 2093
    .local v1, "tsid":I
    if-lez p0, :cond_0

    .line 2095
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getServiceListModule()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->getTransportStreamId(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2107
    return v1

    .line 2096
    :catch_0
    move-exception v0

    .line 2097
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2098
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2101
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2
.end method

.method static isCrowding(Ljava/lang/String;)Z
    .locals 2
    .param p0, "aReturnCode"    # Ljava/lang/String;

    .prologue
    .line 3529
    const/4 v0, 0x0

    .line 3532
    .local v0, "result":Z
    const-string v1, "EBCC107"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EBCC801"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EBCC803"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3535
    :cond_0
    const/4 v0, 0x1

    .line 3543
    :goto_0
    return v0

    .line 3537
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static varargs logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "aFormat"    # Ljava/lang/String;
    .param p1, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 3311
    return-void
.end method

.method private searchFcListFieldFromCrid(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;)[Ljava/lang/String;
    .locals 12
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aField"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2382
    const/4 v11, 0x0

    .line 2384
    .local v11, "result":[Ljava/lang/String;
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;

    move-result-object v0

    .line 2387
    .local v0, "fcSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    new-instance v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v9}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    .line 2388
    .local v9, "programField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v1, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 2389
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    invoke-direct {v1, p1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;-><init>(Ljava/lang/String;)V

    iput-object v1, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 2391
    new-instance v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    invoke-direct {v8}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;-><init>()V

    .line 2392
    .local v8, "programCondition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_EQUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    iput-object v1, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->operatorType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    .line 2393
    iput-object v9, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 2396
    new-instance v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    invoke-direct {v7}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;-><init>()V

    .line 2397
    .local v7, "andTable":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;
    iput-boolean v5, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->notOperator:Z

    .line 2398
    new-array v1, v2, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    aput-object v8, v1, v5

    iput-object v1, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->condition:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 2401
    new-instance v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    invoke-direct {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;-><init>()V

    .line 2402
    .local v4, "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;->SORT_ORDER_NONE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    iput-object v1, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->sortOrder:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    .line 2403
    iput-object v7, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->andCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 2404
    iput-object v6, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->orCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 2406
    new-array v3, v2, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object p2, v3, v5

    .line 2408
    .local v3, "fields":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v10

    .line 2412
    .local v10, "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    if-eqz v10, :cond_0

    array-length v1, v10

    if-lez v1, :cond_0

    .line 2413
    invoke-direct {p0, v10, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getListField([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;)[Ljava/lang/String;

    move-result-object v11

    .line 2418
    :cond_0
    return-object v11
.end method


# virtual methods
.method checkBattery()Z
    .locals 5

    .prologue
    .line 472
    const/4 v2, 0x0

    .line 476
    .local v2, "result":Z
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    .line 477
    .local v1, "conflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getBatteryStatus()I

    move-result v0

    .line 478
    .local v0, "batteryStatus":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getBatteryLevel()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_1

    .line 482
    :cond_0
    const/4 v2, 0x1

    .line 487
    :cond_1
    return v2
.end method

.method checkCompatibility(Ljava/lang/String;)Z
    .locals 17
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 816
    const/4 v11, 0x0

    .line 819
    .local v11, "result":Z
    :try_start_0
    sget-object v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v10

    .line 820
    .local v10, "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    const/4 v14, 0x0

    const-string v15, "ja"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v2

    .line 823
    .local v2, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    if-nez v2, :cond_0

    .line 824
    const-string v5, "Getting Metadata error"

    .line 825
    .local v5, "errMsg":Ljava/lang/String;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v5, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 826
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v14, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .end local v2    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .end local v5    # "errMsg":Ljava/lang/String;
    .end local v10    # "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :catch_0
    move-exception v4

    .line 854
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 829
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    .restart local v2    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .restart local v10    # "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :cond_0
    const/16 v3, 0x14

    .line 831
    .local v3, "dicIntentedAudience":I
    :try_start_1
    invoke-virtual {v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getDictionary(I)Ljava/lang/String;

    move-result-object v13

    .line 832
    .local v13, "strDicIntentedAudiencePath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getDictionaryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 833
    .local v12, "strDicIntentedAudience":Ljava/lang/String;
    const/4 v8, 0x0

    .line 835
    .local v8, "isCommonContent":Z
    iget-object v14, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v14, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->genre:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;

    if-eqz v14, :cond_1

    .line 837
    iget-object v14, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v1, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->genre:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;

    .local v1, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v6, v1, v7

    .line 838
    .local v6, "genre":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;
    iget-object v14, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;->type:Ljava/lang/String;

    const-string v15, "other"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    iget-object v14, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;->genre:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 841
    const/4 v8, 0x1

    .line 846
    .end local v1    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;
    .end local v6    # "genre":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    :cond_1
    if-eqz v8, :cond_3

    .line 848
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isAvailableCommonContent(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Z

    move-result v11

    .line 861
    :goto_1
    return v11

    .line 837
    .restart local v1    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;
    .restart local v6    # "genre":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 851
    .end local v1    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;
    .end local v6    # "genre":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isAvailableExclusiveContent(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Z
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    goto :goto_1
.end method

.method checkDownloadPriority(Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aIsSameTs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1609
    const/4 v4, 0x0

    .line 1611
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 1614
    .local v5, "stateList":[I
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v1

    .line 1615
    .local v1, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getProcessingList([I)Ljava/util/List;

    move-result-object v2

    .line 1619
    .local v2, "downloadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1620
    .local v0, "contentToCompare":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1622
    const-string v6, "Get download list error"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1623
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v7, "Get download list error"

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1628
    :cond_0
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "contentToCompare":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1629
    .restart local v0    # "contentToCompare":Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 1630
    if-eqz p2, :cond_2

    .line 1631
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->comparePriority(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1633
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "contentToCompare":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1629
    .restart local v0    # "contentToCompare":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1635
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->comparePriority(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1637
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "contentToCompare":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "contentToCompare":Ljava/lang/String;
    goto :goto_1

    .line 1641
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->comparePriority(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1642
    if-eqz p2, :cond_5

    .line 1644
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1654
    :cond_4
    :goto_2
    return-object v4

    .line 1648
    :cond_5
    move-object v4, v2

    goto :goto_2

    .line 1611
    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method checkLastBroadcastDownload(Ljava/lang/String;)Z
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2977
    const/4 v5, 0x1

    .line 2981
    .local v5, "result":Z
    :try_start_0
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v0

    .line 2984
    .local v0, "currentTime":J
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getBroadcastSchedule(Ljava/lang/String;)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v4

    .line 2985
    .local v4, "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-nez v6, :cond_2

    .line 2986
    :cond_0
    const/4 v5, 0x1

    .line 3011
    .end local v0    # "currentTime":J
    .end local v4    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :cond_1
    :goto_0
    return v5

    .line 2988
    .restart local v0    # "currentTime":J
    .restart local v4    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :cond_2
    array-length v6, v4

    add-int/lit8 v3, v6, -0x1

    .line 2990
    .local v3, "end":I
    aget-object v6, v4, v3

    iget-wide v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v8, 0x2710

    sub-long/2addr v6, v8

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    .line 2993
    const/4 v5, 0x0

    goto :goto_0

    .line 2996
    .end local v0    # "currentTime":J
    .end local v3    # "end":I
    .end local v4    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :catch_0
    move-exception v2

    .line 2997
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2998
    const/4 v5, 0x1

    .line 3005
    goto :goto_0

    .line 2999
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v2

    .line 3000
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3001
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v7, "getSecureClock error"

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3002
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_2
    move-exception v2

    .line 3003
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3004
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v7, "meta middle regist error"

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public checkLastBroadcastFromSchedule(Ljava/lang/String;)I
    .locals 14
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3394
    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v7

    .line 3396
    .local v7, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const/4 v2, 0x0

    .line 3400
    .local v2, "isLastBradcast":I
    :try_start_0
    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getBroadcastSchedule(Ljava/lang/String;)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v3

    .line 3401
    .local v3, "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    if-eqz v3, :cond_0

    array-length v8, v3

    if-nez v8, :cond_1

    .line 3402
    :cond_0
    const/4 v2, 0x0

    .line 3442
    .end local v3    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :goto_0
    return v2

    .line 3404
    .restart local v3    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :cond_1
    array-length v8, v3

    add-int/lit8 v1, v8, -0x1

    .line 3407
    .local v1, "end":I
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 3408
    .local v6, "searchKeyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/4 v8, 0x4

    iput v8, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 3409
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 3411
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3413
    .local v5, "scheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V

    .line 3414
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v13, v8, :cond_2

    .line 3415
    const/4 v2, 0x0

    goto :goto_0

    .line 3417
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 3421
    .local v4, "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    iget-wide v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    sget-object v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v10, 0x2710

    add-long/2addr v8, v10

    aget-object v10, v3, v1

    iget-wide v10, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    .line 3424
    const/4 v2, 0x0

    goto :goto_0

    .line 3426
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 3430
    .end local v1    # "end":I
    .end local v3    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .end local v4    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v5    # "scheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v6    # "searchKeyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    :catch_0
    move-exception v0

    .line 3431
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v8, "%s"

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v0, v9, v12

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3432
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v8

    .line 3433
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v0

    .line 3434
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v8, "%s"

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v0, v9, v12

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3435
    const/4 v2, 0x0

    goto :goto_0
.end method

.method checkOverseasMode()Z
    .locals 4

    .prologue
    .line 438
    const/4 v1, 0x1

    .line 439
    .local v1, "result":Z
    const/4 v2, 0x1

    .line 442
    .local v2, "ret":I
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v0

    .line 443
    .local v0, "mConflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkForeignMode()I

    move-result v2

    .line 445
    if-nez v2, :cond_0

    .line 447
    const/4 v1, 0x0

    .line 452
    :cond_0
    return v1
.end method

.method checkSaveStorageFreeSpace()J
    .locals 17

    .prologue
    .line 3701
    const/4 v4, 0x0

    .line 3703
    .local v4, "contentStorage":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :try_start_0
    sget-object v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentStorage()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 3710
    const/4 v11, 0x0

    .line 3712
    .local v11, "savePath":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;
    :try_start_1
    sget-object v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentSavePath()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 3717
    const/4 v10, 0x0

    .line 3718
    .local v10, "path":Ljava/lang/String;
    iget v14, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 3719
    iget-object v14, v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->mmbFcContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    iget-object v10, v14, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;->mmbSD:Ljava/lang/String;

    .line 3727
    :goto_0
    if-nez v10, :cond_2

    .line 3728
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "download content save path is null, save storage:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3730
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v14

    .line 3704
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "savePath":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;
    :catch_0
    move-exception v5

    .line 3705
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3706
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v14

    .line 3713
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v11    # "savePath":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;
    :catch_1
    move-exception v6

    .line 3714
    .local v6, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3715
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v14

    .line 3720
    .end local v6    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v10    # "path":Ljava/lang/String;
    :cond_0
    iget v14, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    if-nez v14, :cond_1

    .line 3721
    iget-object v14, v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->mmbFcContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    iget-object v10, v14, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;->mmbInternal:Ljava/lang/String;

    goto :goto_0

    .line 3723
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getContentStorage() mmbFcContent == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3724
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v14

    .line 3734
    :cond_2
    const/4 v7, 0x0

    .line 3737
    .local v7, "fs":Landroid/os/StatFs;
    :try_start_2
    new-instance v7, Landroid/os/StatFs;

    .end local v7    # "fs":Landroid/os/StatFs;
    invoke-direct {v7, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3743
    .restart local v7    # "fs":Landroid/os/StatFs;
    const-wide/16 v12, 0x0

    .line 3744
    .local v12, "size":J
    const-wide/16 v8, 0x400

    .line 3749
    .local v8, "kilobyte":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 3750
    .local v2, "bksize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 3753
    .local v0, "avablocks":J
    mul-long v12, v2, v0

    .line 3756
    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    .line 3761
    return-wide v12

    .line 3738
    .end local v0    # "avablocks":J
    .end local v2    # "bksize":J
    .end local v7    # "fs":Landroid/os/StatFs;
    .end local v8    # "kilobyte":J
    .end local v12    # "size":J
    :catch_2
    move-exception v6

    .line 3739
    .local v6, "err":Ljava/lang/RuntimeException;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3740
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v14
.end method

.method checkSaveStorageMount()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3780
    const/4 v2, 0x0

    .line 3783
    .local v2, "ret":Z
    const/4 v0, 0x0

    .line 3785
    .local v0, "contentStorage":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentStorage()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3795
    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    if-ne v4, v5, :cond_0

    .line 3796
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkSdCardMount()Z

    move-result v2

    :goto_0
    move v3, v2

    .line 3807
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_1
    return v3

    .line 3786
    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :catch_0
    move-exception v1

    .line 3787
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v4, "%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    .line 3791
    .restart local v3    # "ret":I
    goto :goto_1

    .line 3797
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v3    # "ret":I
    :cond_0
    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    if-nez v4, :cond_1

    .line 3798
    const/4 v2, 0x1

    goto :goto_0

    .line 3800
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getContentStorage() mmbFcContent == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3801
    const/4 v2, 0x0

    goto :goto_0
.end method

.method comparePriority(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "aCridA"    # Ljava/lang/String;
    .param p2, "aCridB"    # Ljava/lang/String;

    .prologue
    .line 1544
    const/4 v3, 0x1

    .line 1546
    .local v3, "result":Z
    const/4 v4, 0x0

    .line 1547
    .local v4, "scheduleA":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/4 v5, 0x0

    .line 1549
    .local v5, "scheduleB":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v0

    .line 1552
    .local v0, "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    const/4 v6, 0x4

    .line 1553
    .local v6, "scheduleType":I
    invoke-virtual {v0, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v4

    .line 1554
    invoke-virtual {v0, p2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v5

    .line 1557
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 1558
    :cond_0
    const-string v7, "Null schedule"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1559
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v8, "Null schedule"

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1570
    :cond_1
    iget v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    and-int/lit16 v1, v7, 0xff

    .line 1571
    .local v1, "downloadTypePriorityA":I
    iget v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    and-int/lit16 v2, v7, 0xff

    .line 1572
    .local v2, "downloadTypePriorityB":I
    if-le v1, v2, :cond_2

    .line 1574
    const/4 v3, 0x1

    .line 1585
    :goto_0
    return v3

    .line 1575
    :cond_2
    if-ge v1, v2, :cond_3

    .line 1577
    const/4 v3, 0x0

    goto :goto_0

    .line 1580
    :cond_3
    invoke-virtual {p0, v1, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->comparePrioritySameType(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)Z

    move-result v3

    goto :goto_0
.end method

.method comparePriorityCommon(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)Z
    .locals 6
    .param p1, "aScheduleA"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aScheduleB"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    const/4 v1, 0x0

    .line 1431
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1432
    :cond_0
    const-string v2, "Null argument!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1433
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v2, "Null argument!"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1435
    :cond_1
    const/4 v0, 0x0

    .line 1437
    .local v0, "result":Z
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    iget-wide v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 1438
    const/4 v0, 0x1

    .line 1450
    :goto_0
    return v0

    .line 1439
    :cond_2
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    iget-wide v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 1440
    const/4 v0, 0x0

    goto :goto_0

    .line 1445
    :cond_3
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    iget-object v3, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_4

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method comparePrioritySameType(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)Z
    .locals 8
    .param p1, "aDownloadType"    # I
    .param p2, "aScheduleA"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p3, "aScheduleB"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1476
    packed-switch p1, :pswitch_data_0

    .line 1512
    const-string v3, "Unknow donwload type for priority judgement"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1513
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 1481
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->comparePriorityCommon(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)Z

    move-result v1

    .line 1518
    .local v1, "result":Z
    :goto_0
    return v1

    .line 1485
    .end local v1    # "result":Z
    :pswitch_1
    iget-wide v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    iget-wide v6, p3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1487
    const/4 v1, 0x1

    .restart local v1    # "result":Z
    goto :goto_0

    .line 1488
    .end local v1    # "result":Z
    :cond_0
    iget-wide v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    iget-wide v6, p3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 1489
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_0

    .line 1494
    .end local v1    # "result":Z
    :cond_1
    :try_start_0
    iget-object v3, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-gt v3, v4, :cond_2

    .restart local v1    # "result":Z
    :goto_1
    goto :goto_0

    .end local v1    # "result":Z
    :cond_2
    move v1, v2

    goto :goto_1

    .line 1497
    :catch_0
    move-exception v0

    .line 1498
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "%s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1499
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 1509
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :pswitch_2
    iget-wide v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    iget-wide v6, p3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3

    .line 1510
    .restart local v1    # "result":Z
    :goto_2
    goto :goto_0

    .end local v1    # "result":Z
    :cond_3
    move v1, v2

    .line 1509
    goto :goto_2

    .line 1476
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method getBroadcastSchedule(Ljava/lang/String;)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2905
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;

    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentSdp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;-><init>(Ljava/lang/String;)V

    .line 2906
    .local v1, "sdpParser":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    const-string v3, "t="

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;->getTagClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;

    move-object v2, v3

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;

    .line 2909
    .local v2, "tagT":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->getListSortStart(Z)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v0

    .line 2913
    .local v0, "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    return-object v0
.end method

.method public getComplementFailedHttpStatus(Ljava/lang/String;)I
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3278
    const/4 v2, -0x1

    .line 3279
    .local v2, "lRet":I
    const/4 v1, 0x0

    .line 3280
    .local v1, "code":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->complementNotificationHttpStatusMap:Ljava/util/Map;

    monitor-enter v4

    .line 3281
    if-eqz p1, :cond_0

    .line 3282
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->complementNotificationHttpStatusMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    .line 3284
    :cond_0
    if-eqz v1, :cond_1

    .line 3285
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3286
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->complementNotificationHttpStatusMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3288
    :cond_1
    monitor-exit v4

    .line 3292
    return v2

    .line 3288
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getComplementFailedReason(Ljava/lang/String;)I
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3200
    const/4 v2, 0x0

    .line 3201
    .local v2, "lRet":I
    const/4 v1, 0x0

    .line 3202
    .local v1, "id":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->complementNotificationReasonMap:Ljava/util/Map;

    monitor-enter v4

    .line 3203
    if-eqz p1, :cond_0

    .line 3204
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->complementNotificationReasonMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    .line 3206
    :cond_0
    if-eqz v1, :cond_1

    .line 3207
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3208
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->complementNotificationReasonMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3213
    :goto_0
    monitor-exit v4

    .line 3217
    return v2

    .line 3211
    :cond_1
    const v2, 0x7f04001e

    goto :goto_0

    .line 3213
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getContentDetailsFromMeta(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 2540
    const/4 v0, 0x0

    .line 2543
    .local v0, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "ja"

    invoke-virtual {v3, p1, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2548
    if-nez v0, :cond_0

    .line 2550
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v4, "Null Content Detail"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2544
    :catch_0
    move-exception v1

    .line 2545
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    const-string v3, "%s"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2546
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2552
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :cond_0
    instance-of v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    if-nez v3, :cond_1

    .line 2554
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "Not FC Content"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v2, v0

    .line 2558
    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .line 2563
    .local v2, "fcContentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    return-object v2
.end method

.method getContentDetailsFromMeta(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aDictionaryChange"    # Z
    .param p3, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 2592
    const/4 v0, 0x0

    .line 2595
    .local v0, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2600
    if-nez v0, :cond_0

    .line 2602
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v4, "Null Content Detail"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2596
    :catch_0
    move-exception v1

    .line 2597
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2598
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2604
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :cond_0
    instance-of v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    if-nez v3, :cond_1

    .line 2606
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "Not FC Content"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v2, v0

    .line 2610
    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .line 2615
    .local v2, "fcContentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    return-object v2
.end method

.method getContentDetailsPeriod(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;)V
    .locals 20
    .param p1, "aContentinfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;

    .prologue
    .line 1820
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    if-eqz v15, :cond_0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v15, v15, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    if-eqz v15, :cond_0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v15, v15, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    if-eqz v15, :cond_0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v15, v15, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v15, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    if-nez v15, :cond_2

    .line 1823
    :cond_0
    const-string v15, "mmbProgramId null"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1824
    const/16 v15, 0x2b

    move-object/from16 v0, p1

    iput v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbComplementState:I

    .line 1949
    :cond_1
    :goto_0
    return-void

    .line 1831
    :cond_2
    sget-object v15, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v12

    .line 1834
    .local v12, "time":J
    const/16 v15, 0x29

    :try_start_0
    move-object/from16 v0, p1

    iput v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbOpenState:I

    .line 1835
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v15, v15, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v2, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    .local v2, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v9, v2, v5

    .line 1836
    .local v9, "period":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    if-eqz v9, :cond_3

    iget-object v15, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    if-nez v15, :cond_4

    .line 1835
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1839
    :cond_4
    iget-object v15, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    const-string v16, "display"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1840
    iget-wide v0, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->start:J

    move-wide/from16 v16, v0

    cmp-long v15, v12, v16

    if-gez v15, :cond_8

    .line 1841
    const/16 v15, 0x2a

    move-object/from16 v0, p1

    iput v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbOpenState:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1849
    .end local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "period":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    :catch_0
    move-exception v4

    .line 1850
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v15, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v4, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1855
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :cond_5
    const/16 v15, 0x29

    :try_start_1
    move-object/from16 v0, p1

    iput v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbComplementState:I

    .line 1856
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v6, v15, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    .line 1857
    .local v6, "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    iget-object v15, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-wide v0, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairStartDate:J

    move-wide/from16 v16, v0

    cmp-long v15, v12, v16

    if-gez v15, :cond_9

    .line 1858
    const/16 v15, 0x2a

    move-object/from16 v0, p1

    iput v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbComplementState:I

    .line 1865
    :cond_6
    :goto_3
    sget-object v15, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v3

    .line 1868
    .local v3, "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    iget-object v15, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->crid:Ljava/lang/String;

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v11

    .line 1873
    .local v11, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    move-object/from16 v0, p1

    iget v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbComplementState:I

    const/16 v16, 0x29

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 1875
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;

    sget-object v15, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;)V

    .line 1878
    .local v14, "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    invoke-virtual {v14, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->setScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V

    .line 1879
    invoke-virtual {v14, v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->setTime(J)V

    .line 1882
    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isRepairPercentageZero()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->hasFdtInstance()Z

    move-result v15

    if-nez v15, :cond_7

    .line 1884
    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isOverLastBroadcast()Z

    move-result v15

    if-nez v15, :cond_7

    .line 1886
    const/16 v15, 0x2a

    move-object/from16 v0, p1

    iput v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbComplementState:I

    .line 1893
    .end local v14    # "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    :cond_7
    const/4 v8, 0x0

    .line 1896
    .local v8, "percentageThreshold":I
    iget v15, v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 1897
    iget-object v15, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-byte v8, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairManualStorePercentage:B

    .line 1906
    :goto_4
    sget-object v15, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v15

    iget-object v0, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->crid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getDownloadProgress(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    move-result-object v15

    iget v10, v15, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbProgress:I

    .line 1913
    .local v10, "progress":I
    if-ge v10, v8, :cond_1

    .line 1914
    move-object/from16 v0, p1

    iget v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbComplementState:I

    packed-switch v15, :pswitch_data_0

    .line 1928
    const-string v15, "state error"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 1932
    .end local v3    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .end local v6    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    .end local v8    # "percentageThreshold":I
    .end local v10    # "progress":I
    .end local v11    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :catch_1
    move-exception v4

    .line 1933
    .restart local v4    # "e":Ljava/lang/NullPointerException;
    const-string v15, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v4, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1934
    const/16 v15, 0x2b

    move-object/from16 v0, p1

    iput v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbComplementState:I

    goto/16 :goto_0

    .line 1843
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "period":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    :cond_8
    :try_start_2
    iget-wide v0, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->end:J

    move-wide/from16 v16, v0

    cmp-long v15, v12, v16

    if-lez v15, :cond_3

    const-wide/16 v16, 0x0

    iget-wide v0, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->end:J

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_3

    .line 1844
    const/16 v15, 0x2b

    move-object/from16 v0, p1

    iput v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbOpenState:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 1859
    .end local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "period":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    .restart local v6    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    :cond_9
    :try_start_3
    iget-object v15, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-wide v0, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairEndDate:J

    move-wide/from16 v16, v0

    cmp-long v15, v12, v16

    if-lez v15, :cond_6

    const-wide/16 v16, 0x0

    iget-object v15, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-wide v0, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairEndDate:J

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_6

    .line 1861
    const/16 v15, 0x2b

    move-object/from16 v0, p1

    iput v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbComplementState:I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_3

    .line 1935
    .end local v6    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    :catch_2
    move-exception v4

    .line 1936
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v15, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v4, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1937
    const/16 v15, 0x2b

    move-object/from16 v0, p1

    iput v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbComplementState:I

    goto/16 :goto_0

    .line 1899
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v3    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .restart local v6    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    .restart local v8    # "percentageThreshold":I
    .restart local v11    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_a
    :try_start_4
    iget-object v15, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-byte v8, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairAutoStorePercentage:B

    goto/16 :goto_4

    .line 1916
    .restart local v10    # "progress":I
    :pswitch_0
    const/16 v15, 0x2c

    move-object/from16 v0, p1

    iput v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbComplementState:I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1938
    .end local v3    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .end local v6    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    .end local v8    # "percentageThreshold":I
    .end local v10    # "progress":I
    .end local v11    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :catch_3
    move-exception v4

    .line 1939
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v15, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v4, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1940
    const/16 v15, 0x2b

    move-object/from16 v0, p1

    iput v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbComplementState:I

    goto/16 :goto_0

    .line 1920
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .restart local v3    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .restart local v6    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    .restart local v8    # "percentageThreshold":I
    .restart local v10    # "progress":I
    .restart local v11    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :pswitch_1
    const/16 v15, 0x2d

    :try_start_5
    move-object/from16 v0, p1

    iput v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbComplementState:I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 1941
    .end local v3    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .end local v6    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    .end local v8    # "percentageThreshold":I
    .end local v10    # "progress":I
    .end local v11    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :catch_4
    move-exception v4

    .line 1942
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v15, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v4, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1943
    sget-object v15, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto/16 :goto_0

    .line 1924
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v3    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .restart local v6    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    .restart local v8    # "percentageThreshold":I
    .restart local v10    # "progress":I
    .restart local v11    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :pswitch_2
    const/16 v15, 0x2e

    :try_start_6
    move-object/from16 v0, p1

    iput v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbComplementState:I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 1914
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getContentDetailsRepairSize(Ljava/lang/String;J)J
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aRepairSize"    # J

    .prologue
    .line 1972
    const-wide/16 v2, -0x4

    .line 1974
    .local v2, "result":J
    const-wide/16 v8, 0x0

    cmp-long v7, p2, v8

    if-ltz v7, :cond_3

    .line 1975
    move-wide v2, p2

    .line 2011
    :cond_0
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v6

    .line 2012
    .local v6, "state":I
    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    const/16 v7, 0x4a

    if-ne v6, v7, :cond_2

    .line 2018
    :cond_1
    const-wide/16 v2, -0x2

    :cond_2
    move-wide v4, v2

    .line 2024
    .end local v2    # "result":J
    .end local v6    # "state":I
    .local v4, "result":J
    :goto_0
    return-wide v4

    .line 1978
    .end local v4    # "result":J
    .restart local v2    # "result":J
    :cond_3
    const/4 v0, 0x0

    .line 1979
    .local v0, "isRewritable":Z
    long-to-int v1, p2

    .line 1980
    .local v1, "repairSizeInt":I
    packed-switch v1, :pswitch_data_0

    .line 1997
    const-wide/16 v2, -0x4

    .line 1999
    const/4 v0, 0x0

    .line 2002
    :goto_1
    if-nez v0, :cond_0

    move-wide v4, v2

    .line 2006
    .end local v2    # "result":J
    .restart local v4    # "result":J
    goto :goto_0

    .line 1982
    .end local v4    # "result":J
    .restart local v2    # "result":J
    :pswitch_0
    const-wide/16 v2, -0x1

    .line 1984
    const/4 v0, 0x1

    .line 1985
    goto :goto_1

    .line 1987
    :pswitch_1
    const-wide/16 v2, -0x2

    .line 1989
    const/4 v0, 0x0

    .line 1990
    goto :goto_1

    .line 1992
    :pswitch_2
    const-wide/16 v2, -0x3

    .line 1994
    const/4 v0, 0x0

    .line 1995
    goto :goto_1

    .line 1980
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getContentDetailsState(Ljava/lang/String;I)I
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aContentState"    # I

    .prologue
    .line 1758
    const/4 v2, 0x0

    .line 1759
    .local v2, "state":I
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v2

    .line 1761
    const/4 v1, 0x0

    .line 1763
    .local v1, "result":I
    packed-switch v2, :pswitch_data_0

    .line 1781
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    move-result-object v0

    .line 1784
    .local v0, "fdtState":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv$1;->$SwitchMap$com$nttdocomo$mmb$android$mmbsv$process$content$MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv:[I

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 1792
    move v1, p2

    .line 1800
    .end local v0    # "fdtState":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    :goto_0
    return v1

    .line 1766
    :pswitch_0
    const/16 v1, 0x34

    .line 1767
    goto :goto_0

    .line 1771
    :pswitch_1
    const/16 v1, 0x36

    .line 1772
    goto :goto_0

    .line 1776
    :pswitch_2
    const/16 v1, 0x37

    .line 1777
    goto :goto_0

    .line 1787
    .restart local v0    # "fdtState":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    :pswitch_3
    const/16 v1, 0x3a

    .line 1788
    goto :goto_0

    .line 1763
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1784
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method getContentSdp(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2844
    const/4 v3, 0x0

    .line 2847
    .local v3, "sdp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsFromMeta(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    move-result-object v0

    .line 2849
    .local v0, "contentInfometa":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 2852
    :cond_0
    const/4 v1, 0x0

    .line 2853
    .local v1, "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "ja"

    invoke-virtual {v5, p1, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;

    move-result-object v1

    .line 2856
    if-eqz v1, :cond_1

    iget-object v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    if-nez v5, :cond_2

    .end local v0    # "contentInfometa":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .end local v1    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    :cond_1
    :goto_0
    move-object v4, v3

    .line 2884
    .end local v3    # "sdp":Ljava/lang/String;
    .local v4, "sdp":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 2863
    .end local v4    # "sdp":Ljava/lang/String;
    .restart local v0    # "contentInfometa":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .restart local v1    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .restart local v3    # "sdp":Ljava/lang/String;
    :cond_2
    iget-object v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v3, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    goto :goto_0

    .line 2866
    .end local v1    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    :cond_3
    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v3, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2868
    .end local v0    # "contentInfometa":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    :catch_0
    move-exception v2

    .line 2869
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    const-string v5, "%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2870
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 2871
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :catch_1
    move-exception v2

    .line 2872
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v5, "%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v3

    .line 2876
    .end local v3    # "sdp":Ljava/lang/String;
    .restart local v4    # "sdp":Ljava/lang/String;
    goto :goto_1

    .line 2877
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v4    # "sdp":Ljava/lang/String;
    .restart local v3    # "sdp":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 2878
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v5, "%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getContentTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2634
    const-string v13, ""

    .line 2635
    .local v13, "title":Ljava/lang/String;
    sget-object v15, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v4

    .line 2637
    .local v4, "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    const/4 v12, 0x4

    .line 2638
    .local v12, "scheduleType":I
    const/4 v11, 0x0

    .line 2640
    .local v11, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 2645
    :goto_0
    if-eqz v11, :cond_1

    .line 2646
    iget-object v15, v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 2647
    iget-object v13, v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    :cond_0
    :goto_1
    move-object v14, v13

    .line 2704
    .end local v13    # "title":Ljava/lang/String;
    .local v14, "title":Ljava/lang/String;
    :goto_2
    return-object v14

    .line 2641
    .end local v14    # "title":Ljava/lang/String;
    .restart local v13    # "title":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 2642
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v15, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v7, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2651
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :cond_1
    const/4 v5, 0x0

    .line 2653
    .local v5, "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    :try_start_1
    sget-object v15, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v15

    const/16 v16, 0x1

    const-string v17, "ja"

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v15, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    move-object v6, v5

    .line 2666
    .end local v5    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .local v6, "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    :goto_3
    if-eqz v6, :cond_2

    iget-object v15, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    if-nez v15, :cond_4

    .line 2669
    :cond_2
    :try_start_2
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;-><init>()V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    .line 2670
    .end local v6    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .restart local v5    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    :try_start_3
    new-instance v15, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    invoke-direct {v15}, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;-><init>()V

    iput-object v15, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    .line 2671
    iget-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v16, v0

    sget-object v15, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v15

    const/16 v17, 0x1

    const-string v18, "ja"

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v15, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v15

    check-cast v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    move-object/from16 v0, v16

    iput-object v15, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_3 .. :try_end_3} :catch_5

    .line 2685
    :goto_4
    iget-object v15, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v15, v15, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    if-eqz v15, :cond_0

    iget-object v15, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v15, v15, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v15, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-eqz v15, :cond_0

    iget-object v15, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v15, v15, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v15, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v15, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    if-eqz v15, :cond_0

    .line 2688
    iget-object v15, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v15, v15, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v15, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v3, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    .local v3, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_5
    if-ge v8, v9, :cond_0

    aget-object v10, v3, v8

    .line 2690
    .local v10, "metatitle":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    if-eqz v10, :cond_3

    const-string v15, "main"

    iget-object v0, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2691
    iget-object v15, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->title:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 2693
    iget-object v13, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 2656
    .end local v3    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "metatitle":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    :catch_1
    move-exception v7

    .line 2657
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v15, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v7, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v14, v13

    .line 2661
    .end local v13    # "title":Ljava/lang/String;
    .restart local v14    # "title":Ljava/lang/String;
    goto/16 :goto_2

    .line 2662
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v14    # "title":Ljava/lang/String;
    .restart local v13    # "title":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 2663
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v15, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v7, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v5

    .end local v5    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .restart local v6    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    goto/16 :goto_3

    .line 2674
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_3
    move-exception v7

    move-object v5, v6

    .line 2675
    .end local v6    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .restart local v5    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :goto_6
    const-string v15, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v7, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2676
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v15, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 2677
    .end local v5    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    .restart local v6    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    :catch_4
    move-exception v7

    move-object v5, v6

    .line 2678
    .end local v6    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .restart local v5    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :goto_7
    const-string v15, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v7, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v14, v13

    .line 2682
    .end local v13    # "title":Ljava/lang/String;
    .restart local v14    # "title":Ljava/lang/String;
    goto/16 :goto_2

    .line 2688
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v14    # "title":Ljava/lang/String;
    .restart local v3    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v10    # "metatitle":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .restart local v13    # "title":Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2677
    .end local v3    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "metatitle":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    :catch_5
    move-exception v7

    goto :goto_7

    .line 2674
    :catch_6
    move-exception v7

    goto :goto_6

    .end local v5    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .restart local v6    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    :cond_4
    move-object v5, v6

    .end local v6    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .restart local v5    # "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    goto/16 :goto_4
.end method

.method getCridFromMobileSpec(Ljava/lang/String;)Ljava/util/List;
    .locals 29
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2127
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2128
    .local v14, "cridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;

    move-result-object v2

    .line 2132
    .local v2, "contentSearchModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    new-instance v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;-><init>(Ljava/lang/String;)V

    .line 2134
    .local v15, "cridString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    new-instance v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v13}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    .line 2135
    .local v13, "cridField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v3, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 2136
    iput-object v15, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 2138
    new-instance v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    invoke-direct {v12}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;-><init>()V

    .line 2139
    .local v12, "cridCondition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_LIKE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    iput-object v3, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->operatorType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    .line 2140
    iput-object v13, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 2143
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v25

    .line 2144
    .local v25, "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual/range {v25 .. v25}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getThumbnailSize()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    move-result-object v28

    .line 2145
    .local v28, "thumnailSize":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%Version|Thumbnail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;->mmbWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00d7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;->mmbHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2150
    .local v24, "mobileSpec":Ljava/lang/String;
    new-instance v21, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;-><init>(Ljava/lang/String;)V

    .line 2152
    .local v21, "keywordString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    new-instance v20, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct/range {v20 .. v20}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    .line 2153
    .local v20, "keywordField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v0, v20

    iput-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 2154
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 2156
    new-instance v19, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    invoke-direct/range {v19 .. v19}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;-><init>()V

    .line 2157
    .local v19, "keywordCondition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_LIKE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    move-object/from16 v0, v19

    iput-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->operatorType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    .line 2158
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 2161
    new-instance v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    invoke-direct {v9}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;-><init>()V

    .line 2162
    .local v9, "andTable":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;
    const/4 v3, 0x0

    iput-boolean v3, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->notOperator:Z

    .line 2163
    const/4 v3, 0x2

    new-array v3, v3, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    const/4 v4, 0x1

    aput-object v19, v3, v4

    iput-object v3, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->condition:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 2166
    new-instance v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    invoke-direct {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;-><init>()V

    .line 2167
    .local v6, "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;->SORT_ORDER_NONE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    iput-object v3, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->sortOrder:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    .line 2168
    iput-object v9, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->andCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 2169
    const/4 v3, 0x0

    iput-object v3, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->orCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 2172
    const/4 v3, 0x1

    new-array v5, v3, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    const/4 v3, 0x0

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v4, v5, v3

    .line 2175
    .local v5, "output":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v4, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v27

    .line 2181
    .local v27, "searchRecord":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    if-nez v27, :cond_1

    .line 2211
    :cond_0
    return-object v14

    .line 2189
    :cond_1
    move-object/from16 v10, v27

    .local v10, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v0, v10

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    move/from16 v18, v17

    .end local v10    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v17    # "i$":I
    .end local v22    # "len$":I
    .local v18, "i$":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    aget-object v26, v10, v18

    .line 2191
    .local v26, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    move-object/from16 v0, v26

    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    if-nez v3, :cond_3

    .line 2189
    .end local v18    # "i$":I
    :cond_2
    add-int/lit8 v17, v18, 0x1

    .restart local v17    # "i$":I
    move/from16 v18, v17

    .end local v17    # "i$":I
    .restart local v18    # "i$":I
    goto :goto_0

    .line 2194
    :cond_3
    move-object/from16 v0, v26

    iget-object v11, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .local v11, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    array-length v0, v11

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v17, 0x0

    .end local v18    # "i$":I
    .restart local v17    # "i$":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    aget-object v16, v11, v17

    .line 2196
    .local v16, "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v0, v16

    iget-object v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    if-ne v3, v4, :cond_4

    move-object/from16 v0, v16

    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    if-nez v3, :cond_5

    .line 2194
    :cond_4
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 2202
    :cond_5
    move-object/from16 v0, v16

    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    iget-object v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    if-ne v3, v4, :cond_4

    .line 2203
    move-object/from16 v0, v16

    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iget-object v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method getDictionaryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "aPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 2045
    const-string v0, ""

    .line 2047
    .local v0, "dictionaryName":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 2071
    .end local v0    # "dictionaryName":Ljava/lang/String;
    .local v1, "dictionaryName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2053
    .end local v1    # "dictionaryName":Ljava/lang/String;
    .restart local v0    # "dictionaryName":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 2054
    .local v3, "startIndex":I
    const/4 v2, 0x0

    .line 2056
    .local v2, "endIndex":I
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 2057
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 2059
    if-eq v5, v3, :cond_1

    if-eq v5, v2, :cond_1

    if-le v3, v2, :cond_2

    :cond_1
    move-object v1, v0

    .line 2063
    .end local v0    # "dictionaryName":Ljava/lang/String;
    .restart local v1    # "dictionaryName":Ljava/lang/String;
    goto :goto_0

    .line 2066
    .end local v1    # "dictionaryName":Ljava/lang/String;
    .restart local v0    # "dictionaryName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2071
    .end local v0    # "dictionaryName":Ljava/lang/String;
    .restart local v1    # "dictionaryName":Ljava/lang/String;
    goto :goto_0
.end method

.method getEntityId(Ljava/lang/String;)B
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1712
    const/16 v1, -0x80

    .line 1714
    .local v1, "entityId":B
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getMwLicenseInfoForAutoDeletion(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v5

    .line 1716
    .local v5, "licenseList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    if-nez v5, :cond_0

    .line 1717
    const-string v6, "Null license"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1718
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v7, "Null license"

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1720
    :cond_0
    move-object v0, v5

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 1721
    .local v4, "license":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    iget-object v6, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->crid:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1723
    iget-object v6, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->mainId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-byte v1, v6

    .line 1727
    .end local v4    # "license":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :cond_1
    const/16 v6, -0x80

    if-ne v6, v1, :cond_3

    .line 1729
    const-string v6, "No entity ID"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1730
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v7, "No entity ID"

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1720
    .restart local v4    # "license":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1735
    .end local v4    # "license":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :cond_3
    return v1
.end method

.method getHistoryReason(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;)I
    .locals 5
    .param p1, "aNotice"    # Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2784
    const/16 v0, 0xc

    .line 2785
    .local v0, "historyReason":I
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_BROADCAST_END:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v1

    iget v2, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    if-ne v1, v2, :cond_1

    .line 2787
    const-string v1, "Broadcast ended.[%s]"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2788
    const/16 v0, 0xd

    .line 2821
    :cond_0
    :goto_0
    return v0

    .line 2789
    :cond_1
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_DECODE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v1

    iget v2, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    if-ne v1, v2, :cond_2

    .line 2791
    const-string v1, "Failed to decode file.[%s]"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2792
    const/16 v0, 0xe

    goto :goto_0

    .line 2793
    :cond_2
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_FILE_CHECK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v1

    iget v2, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    if-ne v1, v2, :cond_3

    .line 2795
    const-string v1, "File check error.[%s]"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2796
    const/16 v0, 0xf

    goto :goto_0

    .line 2797
    :cond_3
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_WRITE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v1

    iget v2, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    if-ne v1, v2, :cond_4

    .line 2799
    const-string v1, "Failed to write to media.[%s]"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2800
    const/16 v0, 0x12

    goto :goto_0

    .line 2801
    :cond_4
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_OUTOF_BROADCAST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v1

    iget v2, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    if-ne v1, v2, :cond_5

    .line 2803
    const-string v1, "No signal.[%s]"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2804
    const/4 v0, 0x1

    goto :goto_0

    .line 2805
    :cond_5
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_SCAN:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v1

    iget v2, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    if-ne v1, v2, :cond_6

    .line 2807
    const-string v1, "NIT info broke, need to scan.[%s]"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2808
    const/16 v0, 0xb

    goto :goto_0

    .line 2809
    :cond_6
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_INTERRUPTION:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v1

    iget v2, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    if-ne v1, v2, :cond_7

    .line 2811
    const-string v1, "Organization discontinuation.[%s]"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2812
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 2813
    :cond_7
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_CANCELED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v1

    iget v2, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    if-ne v1, v2, :cond_0

    .line 2815
    const-string v1, "Cancellation by a user.[%s]"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2816
    const/16 v0, 0x11

    goto/16 :goto_0
.end method

.method getMwLicenseInfoForAutoDeletion(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1675
    const/4 v1, 0x0

    .line 1678
    .local v1, "licenseList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getLicenseInfo(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1691
    return-object v1

    .line 1681
    :catch_0
    move-exception v0

    .line 1682
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1683
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1684
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 1685
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1686
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method getPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 3568
    const/4 v2, 0x0

    .line 3569
    .local v2, "packageName":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 3570
    if-nez p1, :cond_0

    move-object v3, v2

    .line 3589
    .end local v2    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 3576
    .end local v3    # "packageName":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v4, "/"

    const-string v5, "crid://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 3577
    .local v1, "endIndex":I
    if-lez v1, :cond_1

    .line 3578
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3579
    .local v0, "authority":Ljava/lang/String;
    move-object v2, v0

    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "endIndex":I
    :cond_1
    :goto_1
    move-object v3, v2

    .line 3589
    .end local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 3583
    .end local v3    # "packageName":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_2
    move-object v2, p2

    goto :goto_1
.end method

.method getProcessingList([I)Ljava/util/List;
    .locals 13
    .param p1, "aStateList"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 334
    if-nez p1, :cond_0

    .line 335
    const-string v11, "Null parameter"

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v12, "Null parameter"

    invoke-direct {v11, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 338
    :cond_0
    const/4 v9, 0x0

    .line 340
    .local v9, "stateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v11, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadStateAll()Ljava/util/Map;

    move-result-object v9

    .line 342
    if-nez v9, :cond_1

    .line 343
    const-string v11, "Null stateMap"

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v12, "Null stateMap"

    invoke-direct {v11, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 347
    :cond_1
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 348
    .local v7, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 350
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v6, "processingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 353
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 354
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 357
    .local v10, "value":I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_2

    aget v8, v0, v2

    .line 358
    .local v8, "state":I
    if-ne v8, v10, :cond_3

    .line 359
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    .end local v0    # "arr$":[I
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "i$":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v8    # "state":I
    .end local v10    # "value":I
    :cond_4
    return-object v6
.end method

.method getServiceIdFromMetadata(Ljava/lang/String;)I
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 388
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v3

    .line 389
    .local v3, "metadateClt":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    const/4 v1, 0x0

    .line 392
    .local v1, "metaRet":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "ja"

    invoke-virtual {v3, p1, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 397
    if-nez v1, :cond_0

    .line 398
    const-string v4, "Null metadata"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v5, "Null metadate"

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 401
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :cond_0
    iget-object v4, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->INFORMATION_TYPE_DOWNLOAD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 402
    const-string v4, "Unexpected metadata type"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v5, "Unexpected metadata type"

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object v2, v1

    .line 405
    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .line 407
    .local v2, "metadatainfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    iget-object v4, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->onDemandService:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;

    if-nez v4, :cond_2

    .line 408
    const-string v4, "Null onDemandService field"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v5, "Null onDemandService field"

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 415
    :cond_2
    iget-object v4, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->onDemandService:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;

    iget v4, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;->serviceId:I

    return v4
.end method

.method hasFdtInstance(Ljava/lang/String;)Z
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3834
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getFdtInstanceState(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    move-result-object v3

    sget-object v4, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->FDT_INSTANCE_IS_NOTHING:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_0

    .line 3845
    .local v1, "result":Z
    :goto_0
    return v1

    .end local v1    # "result":Z
    :cond_0
    move v1, v2

    .line 3834
    goto :goto_0

    .line 3838
    :catch_0
    move-exception v0

    .line 3839
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v3, "%s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3840
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method isAvailableBookContent(Ljava/lang/String;)Z
    .locals 12
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 690
    const/4 v7, 0x0

    .line 692
    .local v7, "result":Z
    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v9

    const-string v10, "ja"

    invoke-virtual {v9, p1, v11, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v6

    .line 694
    .local v6, "metaInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    if-nez v6, :cond_0

    .line 695
    const-string v9, "metaInfo null"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v10, "metaInfo null"

    invoke-direct {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 699
    :cond_0
    iget-object v9, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-eqz v9, :cond_1

    iget-object v9, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    if-eqz v9, :cond_1

    iget-object v9, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    if-eqz v9, :cond_1

    iget-object v9, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 702
    :cond_1
    const-string v9, "Required data lack"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v8, v7

    .line 747
    .end local v7    # "result":Z
    .local v8, "result":I
    :goto_0
    return v8

    .line 710
    .end local v8    # "result":I
    .restart local v7    # "result":Z
    :cond_2
    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCommonContentFromGenre(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v8, v7

    .line 714
    .restart local v8    # "result":I
    goto :goto_0

    .line 718
    .end local v8    # "result":I
    :cond_3
    const/4 v3, 0x0

    .line 719
    .local v3, "isCasOK":Z
    iget-object v9, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v0, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_6

    aget-object v4, v0, v2

    .line 720
    .local v4, "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    iget-object v9, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    if-nez v9, :cond_5

    .line 719
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 723
    :cond_5
    iget-object v9, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    const-string v10, "other"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "export_outside_cas:ON"

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 725
    const/4 v3, 0x1

    .line 729
    .end local v4    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    :cond_6
    if-nez v3, :cond_7

    move v8, v7

    .line 733
    .restart local v8    # "result":I
    goto :goto_0

    .line 737
    .end local v8    # "result":I
    :cond_7
    iget-object v9, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    iget-object v1, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    .line 740
    .local v1, "contentType":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/MMContentTypeCS/2"

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 742
    const/4 v7, 0x1

    :cond_8
    move v8, v7

    .line 747
    .restart local v8    # "result":I
    goto :goto_0
.end method

.method isAvailableCommonContent(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Z
    .locals 21
    .param p1, "aMetadata"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .prologue
    .line 513
    const/4 v12, 0x0

    .line 515
    .local v12, "result":Z
    sget-object v18, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v3

    .line 519
    .local v3, "contentAccess":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;
    if-eqz p1, :cond_1

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 522
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    .line 524
    .local v4, "contentType":Ljava/lang/String;
    sget-object v18, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v11

    .line 526
    .local v11, "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    const/16 v5, 0x11

    .line 527
    .local v5, "dicContentType":I
    invoke-virtual {v11, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getDictionary(I)Ljava/lang/String;

    move-result-object v15

    .line 528
    .local v15, "strContentTypePath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getDictionaryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 529
    .local v16, "strDictionaryName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isMetaDataSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    move v13, v12

    .line 585
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v5    # "dicContentType":I
    .end local v11    # "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    .end local v12    # "result":Z
    .end local v15    # "strContentTypePath":Ljava/lang/String;
    .end local v16    # "strDictionaryName":Ljava/lang/String;
    .local v13, "result":I
    :goto_0
    return v13

    .line 537
    .end local v13    # "result":I
    .restart local v4    # "contentType":Ljava/lang/String;
    .restart local v5    # "dicContentType":I
    .restart local v11    # "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    .restart local v12    # "result":Z
    .restart local v15    # "strContentTypePath":Ljava/lang/String;
    .restart local v16    # "strDictionaryName":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isThumbnail(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 539
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isAvailableThumbnailset(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Z

    move-result v18

    if-nez v18, :cond_1

    move v13, v12

    .line 544
    .restart local v13    # "result":I
    goto :goto_0

    .line 549
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v5    # "dicContentType":I
    .end local v11    # "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    .end local v13    # "result":I
    .end local v15    # "strContentTypePath":Ljava/lang/String;
    .end local v16    # "strDictionaryName":Ljava/lang/String;
    :cond_1
    const/16 v17, 0x0

    .line 550
    .local v17, "versionInfo":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 551
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v2, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .local v2, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v10, :cond_2

    aget-object v8, v2, v7

    .line 553
    .local v8, "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "other"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".*Version|.*Base:.*"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 558
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "Base:"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 563
    .local v14, "startindex":I
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 564
    .local v9, "lastindex":I
    if-lt v14, v9, :cond_4

    .line 565
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 573
    .end local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v7    # "i$":I
    .end local v8    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v9    # "lastindex":I
    .end local v10    # "len$":I
    .end local v14    # "startindex":I
    :cond_2
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->checkContentVersion(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 574
    const/4 v12, 0x1

    .end local v17    # "versionInfo":Ljava/lang/String;
    :cond_3
    :goto_3
    move v13, v12

    .line 585
    .restart local v13    # "result":I
    goto/16 :goto_0

    .line 567
    .end local v13    # "result":I
    .restart local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .restart local v7    # "i$":I
    .restart local v8    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .restart local v9    # "lastindex":I
    .restart local v10    # "len$":I
    .restart local v14    # "startindex":I
    .restart local v17    # "versionInfo":Ljava/lang/String;
    :cond_4
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 569
    goto :goto_2

    .line 551
    .end local v9    # "lastindex":I
    .end local v14    # "startindex":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 576
    .end local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v7    # "i$":I
    .end local v8    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v10    # "len$":I
    .end local v17    # "versionInfo":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 577
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v6, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    const/4 v12, 0x0

    goto :goto_3
.end method

.method isAvailableExclusiveContent(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Z
    .locals 11
    .param p1, "aMetadata"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .prologue
    .line 611
    const/4 v7, 0x0

    .line 612
    .local v7, "result":Z
    iget-object v9, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    if-nez v9, :cond_0

    .line 613
    const-string v9, "basicDescription.contentProperty null"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v8, v7

    .line 657
    .end local v7    # "result":Z
    .local v8, "result":I
    :goto_0
    return v8

    .line 620
    .end local v8    # "result":I
    .restart local v7    # "result":Z
    :cond_0
    iget-object v9, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    iget-object v1, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->fileFormat:Ljava/lang/String;

    .line 622
    .local v1, "contentFileFormat":Ljava/lang/String;
    iget-object v9, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    iget-object v2, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    .line 623
    .local v2, "contentType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 624
    .local v4, "isCasOK":Z
    iget-object v9, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    if-eqz v9, :cond_1

    .line 625
    iget-object v9, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v0, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v5, v0, v3

    .line 626
    .local v5, "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    iget-object v9, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    const-string v10, "other"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "export_outside_cas:ON"

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 628
    const/4 v4, 0x1

    .line 633
    .end local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v3    # "i$":I
    .end local v5    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v6    # "len$":I
    :cond_1
    if-nez v4, :cond_3

    move v8, v7

    .line 637
    .restart local v8    # "result":I
    goto :goto_0

    .line 625
    .end local v8    # "result":I
    .restart local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .restart local v3    # "i$":I
    .restart local v5    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .restart local v6    # "len$":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 641
    .end local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v3    # "i$":I
    .end local v5    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v6    # "len$":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/MMContentTypeCS/1"

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 645
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/MMFileFormatCS/apk"

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 647
    const/4 v7, 0x1

    :cond_4
    :goto_2
    move v8, v7

    .line 657
    .restart local v8    # "result":I
    goto :goto_0

    .line 650
    .end local v8    # "result":I
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/MMContentTypeCS/2"

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 652
    const/4 v7, 0x1

    goto :goto_2
.end method

.method isAvailableThumbnailset(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Z
    .locals 12
    .param p1, "aMetadatainfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .prologue
    .line 2272
    const/4 v7, 0x0

    .line 2273
    .local v7, "result":Z
    if-nez p1, :cond_0

    move v8, v7

    .line 2318
    .end local v7    # "result":Z
    .local v8, "result":I
    :goto_0
    return v8

    .line 2280
    .end local v8    # "result":I
    .restart local v7    # "result":Z
    :cond_0
    iget-object v10, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-nez v10, :cond_1

    move v8, v7

    .line 2284
    .restart local v8    # "result":I
    goto :goto_0

    .line 2287
    .end local v8    # "result":I
    :cond_1
    iget-object v10, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v3, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .line 2288
    .local v3, "keywordList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    iget-object v10, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v10, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    if-nez v10, :cond_2

    move v8, v7

    .line 2292
    .restart local v8    # "result":I
    goto :goto_0

    .line 2296
    .end local v8    # "result":I
    :cond_2
    sget-object v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v6

    .line 2297
    .local v6, "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getThumbnailSize()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    move-result-object v9

    .line 2298
    .local v9, "thumnailSize":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Version|Thumbnail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;->mmbWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u00d7"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;->mmbHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2304
    .local v5, "mobileVersion":Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v2, v0, v1

    .line 2305
    .local v2, "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    if-eqz v2, :cond_3

    iget-object v10, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    if-nez v10, :cond_4

    .line 2304
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2309
    :cond_4
    iget-object v10, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    const-string v11, "other"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2311
    const/4 v7, 0x1

    .end local v2    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    :cond_5
    move v8, v7

    .line 2318
    .restart local v8    # "result":I
    goto :goto_0
.end method

.method public isDeliveryPeriodEnd(Ljava/lang/String;)I
    .locals 14
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3463
    const/4 v3, -0x6

    .line 3467
    .local v3, "lRet":I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getBroadcastSchedule(Ljava/lang/String;)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v5

    .line 3469
    .local v5, "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    if-eqz v5, :cond_0

    array-length v7, v5

    if-nez v7, :cond_1

    .line 3474
    :cond_0
    const/16 v3, -0x2a

    move v4, v3

    .line 3507
    .end local v3    # "lRet":I
    .end local v5    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .local v4, "lRet":I
    :goto_0
    return v4

    .line 3479
    .end local v4    # "lRet":I
    .restart local v3    # "lRet":I
    .restart local v5    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :cond_1
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v0

    .line 3481
    .local v0, "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    const/4 v7, 0x4

    invoke-virtual {v0, p1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v6

    .line 3483
    .local v6, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    iget-wide v8, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 3486
    .local v8, "triggerTime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_3

    .line 3487
    aget-object v7, v5, v2

    iget-wide v10, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    cmp-long v7, v10, v8

    if-lez v7, :cond_2

    aget-object v7, v5, v2

    iget-wide v10, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v12, 0x2710

    add-long/2addr v12, v8

    cmp-long v7, v10, v12

    if-gtz v7, :cond_4

    :cond_2
    aget-object v7, v5, v2

    iget-wide v10, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStop:J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    .line 3492
    const/4 v3, 0x0

    .end local v0    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .end local v2    # "i":I
    .end local v5    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .end local v6    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v8    # "triggerTime":J
    :cond_3
    :goto_2
    move v4, v3

    .line 3507
    .end local v3    # "lRet":I
    .restart local v4    # "lRet":I
    goto :goto_0

    .line 3486
    .end local v4    # "lRet":I
    .restart local v0    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .restart local v2    # "i":I
    .restart local v3    # "lRet":I
    .restart local v5    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .restart local v6    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .restart local v8    # "triggerTime":J
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3496
    .end local v0    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .end local v2    # "i":I
    .end local v5    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .end local v6    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v8    # "triggerTime":J
    :catch_0
    move-exception v1

    .line 3497
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v7, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3498
    const/16 v3, -0x2a

    .line 3502
    goto :goto_2

    .line 3499
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v1

    .line 3500
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v7, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3501
    const/16 v3, -0x2a

    goto :goto_2
.end method

.method isEncrypted(Ljava/lang/String;)Z
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2343
    const/4 v5, 0x1

    .line 2345
    .local v5, "result":Z
    sget-object v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-direct {p0, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->searchFcListFieldFromCrid(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;)[Ljava/lang/String;

    move-result-object v4

    .line 2348
    .local v4, "others":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 2349
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2350
    .local v3, "other":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "encrypted:OFF"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2351
    const/4 v5, 0x0

    .line 2360
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "other":Ljava/lang/String;
    :cond_0
    return v5

    .line 2349
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "other":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method isEncrypted(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Z
    .locals 9
    .param p1, "aMetadatainfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .prologue
    .line 2480
    const/4 v5, 0x1

    .line 2481
    .local v5, "result":Z
    if-nez p1, :cond_0

    .line 2482
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v8, "Null meta info"

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2485
    :cond_0
    iget-object v7, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-nez v7, :cond_1

    move v6, v5

    .line 2515
    .end local v5    # "result":Z
    .local v6, "result":I
    :goto_0
    return v6

    .line 2492
    .end local v6    # "result":I
    .restart local v5    # "result":Z
    :cond_1
    iget-object v7, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v3, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .line 2493
    .local v3, "keywordList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    iget-object v7, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v7, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    if-nez v7, :cond_2

    move v6, v5

    .line 2497
    .restart local v6    # "result":I
    goto :goto_0

    .line 2501
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

    .line 2502
    .local v2, "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    if-eqz v2, :cond_3

    iget-object v7, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 2501
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2506
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

    .line 2508
    const/4 v5, 0x0

    .end local v2    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    :cond_5
    move v6, v5

    .line 2515
    .restart local v6    # "result":I
    goto :goto_0
.end method

.method isExistComplementFailedReason(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3237
    const/4 v0, 0x0

    .line 3238
    .local v0, "result":Z
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->complementNotificationReasonMap:Ljava/util/Map;

    monitor-enter v2

    .line 3239
    if-eqz p1, :cond_0

    .line 3240
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->complementNotificationReasonMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 3242
    :cond_0
    monitor-exit v2

    .line 3246
    return v0

    .line 3242
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isMetaDataSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "aContentType"    # Ljava/lang/String;
    .param p2, "aStrDictionaryName"    # Ljava/lang/String;

    .prologue
    .line 2937
    const/4 v0, 0x0

    .line 2941
    .local v0, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/1.7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2946
    .local v1, "strContentTypeMetaSet":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2947
    const/4 v0, 0x1

    .line 2954
    :goto_0
    return v0

    .line 2949
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isThumbnail(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "aContentType"    # Ljava/lang/String;
    .param p2, "aStrDictionaryName"    # Ljava/lang/String;

    .prologue
    .line 2235
    const/4 v0, 0x0

    .line 2239
    .local v0, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/1.9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2244
    .local v1, "strContentTypeThumbnail":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2245
    const/4 v0, 0x1

    .line 2252
    :goto_0
    return v0

    .line 2247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClient;Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I
    .locals 4
    .param p1, "aContClientMw"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient;
    .param p2, "aListener"    # Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

    .prologue
    const/4 v3, 0x0

    .line 2727
    if-nez p2, :cond_0

    .line 2728
    new-instance p2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv$MmbFcDownloadEventListenerForSearchSv;

    .end local p2    # "aListener":Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;
    invoke-direct {p2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv$MmbFcDownloadEventListenerForSearchSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;)V

    .line 2735
    .restart local p2    # "aListener":Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;
    :cond_0
    invoke-virtual {p1, p2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->registListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v1

    .line 2740
    .local v1, "ret":I
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getMmbFcContSvReturnType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2758
    const-string v2, "MW Unknown Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2759
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v3, "MW Unknown Error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2742
    :pswitch_0
    const/4 v0, 0x0

    .line 2764
    .local v0, "result":I
    :goto_0
    return v0

    .line 2745
    .end local v0    # "result":I
    :pswitch_1
    const-string v2, "MW Listener Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2746
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v3, "MW Listener Error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2748
    :pswitch_2
    const-string v2, "MW Argument Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2749
    const/4 v0, -0x2

    .line 2750
    .restart local v0    # "result":I
    goto :goto_0

    .line 2752
    .end local v0    # "result":I
    :pswitch_3
    const-string v2, "MW Memory Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2753
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v3, "MW Memory Error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2755
    :pswitch_4
    const-string v2, "MW Other Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2756
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v3, "MW Other Error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2740
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setComplementFailedHttpStatus(Ljava/lang/String;I)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aHttpStatus"    # I

    .prologue
    .line 3264
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->complementNotificationHttpStatusMap:Ljava/util/Map;

    monitor-enter v1

    .line 3265
    if-eqz p1, :cond_0

    .line 3266
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->complementNotificationHttpStatusMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3268
    :cond_0
    monitor-exit v1

    .line 3272
    return-void

    .line 3268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setComplementFailedReason(Ljava/lang/String;I)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aReason"    # I

    .prologue
    .line 3186
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->complementNotificationReasonMap:Ljava/util/Map;

    monitor-enter v1

    .line 3187
    if-eqz p1, :cond_0

    .line 3188
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->complementNotificationReasonMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3190
    :cond_0
    monitor-exit v1

    .line 3194
    return-void

    .line 3190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setHistory(Ljava/lang/String;II)I
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCategory"    # I
    .param p3, "aReason"    # I

    .prologue
    .line 1065
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v0

    .line 1067
    .local v0, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1069
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 1074
    .local v1, "result":I
    return v1
.end method

.method setHistory(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 15
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aTitle"    # Ljava/lang/String;
    .param p3, "aCategory"    # I
    .param p4, "aReason"    # I

    .prologue
    .line 1177
    const-string v3, "History Download Failed crid:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    const/4 v12, 0x0

    .line 1180
    .local v12, "lastBroadcast":Z
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    .line 1183
    .local v2, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkLastBroadcastDownload(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 1189
    :goto_0
    if-eqz v12, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getLastSchduleStateMap(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1191
    :cond_0
    const-string v3, "History Download Non-LastSchdule"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1192
    const/4 v13, 0x0

    .line 1260
    :goto_1
    return v13

    .line 1184
    :catch_0
    move-exception v11

    .line 1185
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1186
    const/4 v12, 0x1

    goto :goto_0

    .line 1195
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_1
    const/4 v14, 0x0

    .line 1197
    .local v14, "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    :try_start_1
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getDownloadProgress(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    move-result-object v14

    .line 1198
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementCtrl()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkThreshold(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1199
    const-string v3, "History Download checkThreshold:%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v7, v14, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbProgress:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1200
    const/4 v13, 0x0

    goto :goto_1

    .line 1202
    :catch_1
    move-exception v11

    .line 1203
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1211
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_2
    :goto_2
    const/16 v3, 0x11

    move/from16 v0, p4

    if-ne v3, v0, :cond_3

    .line 1215
    const/4 v13, 0x0

    goto :goto_1

    .line 1204
    :catch_2
    move-exception v11

    .line 1205
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1206
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_3
    move-exception v11

    .line 1207
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1208
    const/4 v13, -0x1

    goto :goto_1

    .line 1219
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :cond_3
    const-wide/16 v8, 0x0

    .line 1221
    .local v8, "time":J
    :try_start_2
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-wide v8

    .line 1229
    const-wide/16 v4, 0x0

    cmp-long v3, v4, v8

    if-ltz v3, :cond_4

    .line 1233
    const/4 v13, -0x1

    goto :goto_1

    .line 1222
    :catch_4
    move-exception v11

    .line 1223
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1227
    const/4 v13, -0x1

    goto/16 :goto_1

    .line 1236
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_4
    const-string v6, ""

    .line 1237
    .local v6, "title":Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 1239
    move-object/from16 v6, p2

    .line 1242
    :cond_5
    const/4 v13, 0x0

    .line 1245
    .local v13, "ret":I
    :try_start_3
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getHistoryModule()Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;

    move-result-object v3

    const/4 v10, 0x0

    move/from16 v4, p3

    move-object/from16 v5, p1

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->saveHistory(ILjava/lang/String;Ljava/lang/String;IJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_1

    .line 1247
    :catch_5
    move-exception v11

    .line 1249
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1250
    const/4 v13, -0x2

    .line 1255
    goto/16 :goto_1

    .line 1251
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_6
    move-exception v11

    .line 1253
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1254
    const/4 v13, -0x1

    goto/16 :goto_1
.end method

.method setHistoryForContentsDeletion(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aTitle"    # Ljava/lang/String;
    .param p3, "aCategory"    # I
    .param p4, "aReason"    # I

    .prologue
    .line 1101
    const/16 v1, 0x11

    if-ne v1, p4, :cond_0

    .line 1105
    const/4 v9, 0x0

    .line 1150
    :goto_0
    return v9

    .line 1109
    :cond_0
    const-wide/16 v6, 0x0

    .line 1111
    .local v6, "time":J
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 1119
    const-wide/16 v2, 0x0

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    .line 1123
    const/4 v9, -0x1

    goto :goto_0

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1117
    const/4 v9, -0x1

    goto :goto_0

    .line 1126
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_1
    const-string v4, ""

    .line 1127
    .local v4, "title":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 1129
    move-object v4, p2

    .line 1132
    :cond_2
    const/4 v9, 0x0

    .line 1135
    .local v9, "ret":I
    :try_start_1
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getHistoryModule()Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;

    move-result-object v1

    const/4 v8, 0x0

    move v2, p3

    move-object v3, p1

    move v5, p4

    invoke-virtual/range {v1 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->saveHistory(ILjava/lang/String;Ljava/lang/String;IJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1137
    :catch_1
    move-exception v0

    .line 1139
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1140
    const/4 v9, -0x2

    .line 1145
    goto :goto_0

    .line 1141
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v0

    .line 1143
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1144
    const/4 v9, -0x1

    goto :goto_0
.end method

.method setHistoryMaximumNumberOver(Ljava/lang/String;)I
    .locals 13
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1282
    const-string v1, "History Download Failed crid:%s"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object p1, v2, v12

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1285
    const-wide/16 v6, 0x0

    .line 1287
    .local v6, "time":J
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 1295
    const-wide/16 v2, 0x0

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 1328
    :goto_0
    return v9

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v1, "%s"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v0, v2, v12

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1302
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_0
    const-string v4, ""

    .line 1303
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1305
    .local v10, "tmp":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 1307
    move-object v4, v10

    .line 1310
    :cond_1
    const/4 v9, 0x0

    .line 1313
    .local v9, "ret":I
    :try_start_1
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getHistoryModule()Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v5, 0x9

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->saveHistory(ILjava/lang/String;Ljava/lang/String;IJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1315
    :catch_1
    move-exception v0

    .line 1317
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "%s"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v0, v2, v12

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1318
    const/4 v9, -0x2

    .line 1323
    goto :goto_0

    .line 1319
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v0

    .line 1321
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v1, "%s"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v0, v2, v12

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1322
    const/4 v9, -0x1

    goto :goto_0
.end method

.method toAdjustArbitration()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 3607
    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    .line 3608
    .local v1, "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    .line 3610
    .local v2, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    const/4 v7, 0x0

    .line 3613
    .local v7, "state":I
    const v8, 0xa900

    :try_start_0
    invoke-virtual {v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getActiveStatusList(I)Ljava/util/List;

    move-result-object v6

    .line 3616
    .local v6, "manualFcList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3617
    .local v3, "crid":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v7

    .line 3618
    if-eq v11, v7, :cond_0

    .line 3619
    const v8, 0xa900

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearServiceStatus(IILjava/lang/String;)V

    .line 3621
    const-string v8, "This CRID is wrong manual Download. status[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3624
    .end local v3    # "crid":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "manualFcList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 3625
    .local v4, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3630
    .end local v4    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_1
    const v8, 0xad00

    :try_start_1
    invoke-virtual {v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getActiveStatusList(I)Ljava/util/List;

    move-result-object v0

    .line 3632
    .local v0, "autoFcList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3633
    .restart local v3    # "crid":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v7

    .line 3634
    const/4 v8, 0x2

    if-eq v8, v7, :cond_2

    .line 3635
    const v8, 0xad00

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearServiceStatus(IILjava/lang/String;)V

    .line 3637
    const-string v8, "This CRID is wrong auto Download. status[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3640
    .end local v0    # "autoFcList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "crid":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v4

    .line 3641
    .restart local v4    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3647
    .end local v4    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_3
    return-void
.end method
