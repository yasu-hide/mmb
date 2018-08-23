.class Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;
.source "MmbSiMetadataConnectNetSv.java"


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;)V
    .locals 1
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aMwPgInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    .param p3, "aMetaDataState"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    .prologue
    .line 96
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;I)V

    .line 103
    return-void
.end method

.method private setProgressDays(IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 2
    .param p1, "aCurrentDay"    # I
    .param p2, "aTotalDays"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 840
    if-eqz p3, :cond_0

    .line 843
    :try_start_0
    invoke-virtual {p3, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setProgress(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 856
    :cond_0
    return-void

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 846
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 847
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 848
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 849
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1
.end method

.method private waitHttpResponse(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Z)[B
    .locals 10
    .param p1, "aHttpClient"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .param p3, "aProgressFlag"    # Z

    .prologue
    const v9, 0xea60

    const/4 v8, 0x0

    .line 1097
    const/4 v4, -0x1

    .line 1099
    .local v4, "precurrentsize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget v6, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaARetrySpan:I

    mul-int/2addr v6, v9

    div-int/lit16 v6, v6, 0xc8

    if-ge v3, v6, :cond_3

    .line 1101
    if-eqz p2, :cond_2

    .line 1103
    if-eqz p3, :cond_1

    .line 1104
    :try_start_0
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->getCurrentSize()I

    move-result v0

    .line 1105
    .local v0, "currentsize":I
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->getTotalSize()I

    move-result v5

    .line 1106
    .local v5, "totalsize":I
    if-gtz v5, :cond_0

    .line 1107
    const/4 v5, 0x1

    .line 1109
    :cond_0
    if-ge v4, v0, :cond_1

    .line 1110
    invoke-virtual {p2, v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setProgress(II)V

    .line 1111
    move v4, v0

    .line 1116
    .end local v0    # "currentsize":I
    .end local v5    # "totalsize":I
    :cond_1
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1117
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->cancel()V

    .line 1122
    :cond_2
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->isDone()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    if-eqz v6, :cond_4

    .line 1150
    :cond_3
    sget v6, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaARetrySpan:I

    mul-int/2addr v6, v9

    div-int/lit16 v6, v6, 0xc8

    if-ne v3, v6, :cond_5

    .line 1151
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->cancel()V

    .line 1153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "time out error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;-><init>()V

    throw v6

    .line 1127
    :cond_4
    const-wide/16 v6, 0xc8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1099
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1128
    :catch_0
    move-exception v1

    .line 1130
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->cancel()V

    .line 1132
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1133
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v6

    .line 1134
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1136
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->cancel()V

    .line 1138
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1139
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v6

    .line 1140
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 1142
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->cancel()V

    .line 1144
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1145
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;-><init>()V

    throw v6

    .line 1158
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_5
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getMetaDataState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    .line 1159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "low battery error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getMetaDataState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1160
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;-><init>()V

    throw v6

    .line 1164
    :cond_6
    const/4 v2, 0x0

    .line 1165
    .local v2, "httpResult":[B
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->getHttpData()[B

    move-result-object v2

    .line 1170
    return-object v2
.end method


# virtual methods
.method public gatherSiInfByCridFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v9, 0x0

    .line 681
    const/4 v7, 0x0

    .line 684
    .local v7, "updateFlg":Z
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->getMetadataSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;

    move-result-object v3

    .line 685
    .local v3, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->getSecureClock()J

    move-result-wide v4

    .line 687
    .local v4, "startDate":J
    const-string v8, "Asia/Tokyo"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 688
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 689
    const/16 v8, 0xd

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 690
    const/16 v8, 0xe

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 693
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyyMMddHHmm"

    invoke-direct {v1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 696
    .local v1, "dfm":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 700
    .local v6, "startTime":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1, v6, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->gatherSiInfByCridFromNetImpl(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v2

    .line 703
    .local v2, "result":I
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->canGatherSiInfFromNetImpl(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    .line 704
    const/4 v7, 0x1

    .line 707
    :cond_0
    if-eqz v7, :cond_1

    .line 708
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->updateContentsInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 714
    :cond_1
    return v2

    .line 707
    .end local v2    # "result":I
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_2

    .line 708
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->updateContentsInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_2
    throw v8
.end method

.method public gatherSiInfByCridFromNetImpl(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 12
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aStartTime"    # Ljava/lang/String;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 752
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v9

    .line 753
    .local v9, "result":I
    const/4 v6, 0x0

    .line 755
    .local v6, "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 759
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 763
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->getHttpClient(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;

    move-result-object v6

    .line 765
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setScheduleEnable(Z)V

    .line 766
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setLoopCount(I)V

    .line 767
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMaxLoop(I)V

    .line 770
    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->addConflictCallback(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 775
    :try_start_1
    invoke-virtual {v6, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->startDelivery(Ljava/lang/String;)V

    .line 778
    const/4 v0, 0x0

    invoke-direct {p0, v6, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->waitHttpResponse(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Z)[B

    move-result-object v8

    .line 781
    .local v8, "httpResult":[B
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 787
    .local v10, "savedTime":J
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v0, v8, v10, v11}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->saveMetadata([BJ)I

    move-result v9

    .line 793
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkSaveMetadataReturnType(IZ)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 800
    const/16 v0, 0x100e

    const/4 v1, -0x1

    :try_start_2
    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 803
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->removeConflictCallback(ILjava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 807
    if-eqz v6, :cond_2

    .line 809
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->shutdown()V

    .line 815
    :cond_2
    return v9

    .line 794
    .end local v8    # "httpResult":[B
    .end local v10    # "savedTime":J
    :catch_0
    move-exception v7

    .line 795
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_3
    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 796
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 800
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catchall_0
    move-exception v0

    const/16 v1, 0x100e

    const/4 v2, -0x1

    :try_start_4
    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 803
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->removeConflictCallback(ILjava/lang/Object;)I

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 807
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_3

    .line 809
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->shutdown()V

    :cond_3
    throw v0
.end method

.method public gatherSiInfByFragmentVersionFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 4
    .param p1, "aFragmentVersion"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 503
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->setProgressDays(IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 506
    const/4 v1, 0x0

    .line 509
    .local v1, "updateFlg":Z
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->gatherSiInfByFragmentVersionFromNetImpl(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v0

    .line 512
    .local v0, "result":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->canGatherSiInfFromNetImpl(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 513
    const/4 v1, 0x1

    .line 516
    :cond_0
    if-eqz v1, :cond_2

    .line 517
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 518
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->checkRecBroadcastTimeChanged()V

    .line 520
    :cond_1
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->updateContentsInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 526
    :cond_2
    return-void

    .line 516
    .end local v0    # "result":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 517
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 518
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->checkRecBroadcastTimeChanged()V

    .line 520
    :cond_3
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->updateContentsInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_4
    throw v2
.end method

.method public gatherSiInfByFragmentVersionFromNetImpl(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 18
    .param p1, "aFragmentVersion"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 564
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v13

    .line 565
    .local v13, "result":I
    const/4 v8, 0x0

    .line 567
    .local v8, "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    if-nez p1, :cond_0

    .line 571
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 575
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->getHttpClient(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;

    move-result-object v8

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setScheduleEnable(Z)V

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setLoopCount(I)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMaxLoop(I)V

    .line 582
    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->addConflictCallback(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 587
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->startDelivery(Ljava/lang/String;II)V

    .line 590
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->waitHttpResponse(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Z)[B

    move-result-object v12

    .line 593
    .local v12, "httpResult":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->getMetadataSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;

    move-result-object v17

    .line 594
    .local v17, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->getSecureClock()J

    move-result-wide v14

    .line 596
    .local v14, "saveDate":J
    const-string v2, "Asia/Tokyo"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .line 597
    .local v9, "cal":Ljava/util/Calendar;
    invoke-virtual {v9, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 598
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 599
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 602
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmm"

    invoke-direct {v10, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 605
    .local v10, "dfm":Ljava/text/SimpleDateFormat;
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 607
    .local v16, "saveTime":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v2, v12, v14, v15}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->saveMetadata([BJ)I

    move-result v13

    .line 619
    const/4 v2, 0x0

    invoke-static {v13, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkSaveMetadataReturnType(IZ)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->setProgressDays(IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 628
    const/16 v2, 0x100e

    const/4 v3, -0x1

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 631
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->removeConflictCallback(ILjava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 635
    if-eqz v8, :cond_1

    .line 637
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->shutdown()V

    .line 643
    :cond_1
    return v13

    .line 620
    .end local v9    # "cal":Ljava/util/Calendar;
    .end local v10    # "dfm":Ljava/text/SimpleDateFormat;
    .end local v12    # "httpResult":[B
    .end local v14    # "saveDate":J
    .end local v16    # "saveTime":Ljava/lang/String;
    .end local v17    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    :catch_0
    move-exception v11

    .line 621
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_3
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 622
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 625
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->setProgressDays(IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 628
    const/16 v3, 0x100e

    const/4 v4, -0x1

    const-string v5, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 631
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->removeConflictCallback(ILjava/lang/Object;)I

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 635
    :catchall_1
    move-exception v2

    if-eqz v8, :cond_2

    .line 637
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->shutdown()V

    :cond_2
    throw v2
.end method

.method public gatherSiInfByPeriodFromNet(JJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 21
    .param p1, "aStartTime"    # J
    .param p3, "aEndTime"    # J
    .param p5, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 288
    move-wide/from16 v14, p1

    .line 290
    .local v14, "startDate":J
    const-string v2, "Asia/Tokyo"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    .line 291
    .local v8, "cal":Ljava/util/Calendar;
    invoke-virtual {v8, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 292
    const/16 v2, 0xd

    const/4 v7, 0x0

    invoke-virtual {v8, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 293
    const/16 v2, 0xe

    const/4 v7, 0x0

    invoke-virtual {v8, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 294
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 296
    move-wide/from16 v10, p3

    .line 297
    .local v10, "endDate":J
    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 298
    const/16 v2, 0xd

    const/4 v7, 0x0

    invoke-virtual {v8, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 299
    const/16 v2, 0xe

    const/4 v7, 0x0

    invoke-virtual {v8, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 300
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 302
    cmp-long v2, v14, v10

    if-ltz v2, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    sub-long v16, v10, v14

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x4194997000000000L    # 8.64E7

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v6, v0

    .line 313
    .local v6, "totalDays":I
    if-nez v6, :cond_2

    .line 314
    const/4 v6, 0x1

    .line 318
    :cond_2
    invoke-virtual {v8, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 320
    const/4 v5, 0x0

    .line 321
    .local v5, "currentDay":I
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v5, v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->setProgressDays(IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 323
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmm"

    invoke-direct {v9, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 326
    .local v9, "dfm":Ljava/text/SimpleDateFormat;
    const/4 v13, 0x0

    .line 330
    .local v13, "updateFlg":Z
    :cond_3
    :try_start_0
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "startTime":Ljava/lang/String;
    const/4 v2, 0x5

    const/4 v7, 0x1

    invoke-virtual {v8, v2, v7}, Ljava/util/Calendar;->add(II)V

    .line 333
    add-int/lit8 v5, v5, 0x1

    .line 335
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v2, v16, v10

    if-lez v2, :cond_4

    .line 336
    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 339
    :cond_4
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .local v4, "endTime":Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v7, p5

    .line 342
    invoke-virtual/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->gatherSiInfFromNetImpl(Ljava/lang/String;Ljava/lang/String;IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v12

    .line 346
    .local v12, "result":I
    invoke-static {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->canGatherSiInfFromNetImpl(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    .line 353
    :goto_1
    if-eqz v13, :cond_0

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->checkRecBroadcastTimeChanged()V

    .line 357
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->updateContentsInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 349
    :cond_6
    const/4 v13, 0x1

    .line 351
    :try_start_1
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    cmp-long v2, v10, v16

    if-gtz v2, :cond_3

    goto :goto_1

    .line 353
    .end local v3    # "startTime":Ljava/lang/String;
    .end local v4    # "endTime":Ljava/lang/String;
    .end local v12    # "result":I
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_8

    .line 354
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 355
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->checkRecBroadcastTimeChanged()V

    .line 357
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->updateContentsInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_8
    throw v2
.end method

.method public gatherSiInfFromNet(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 28
    .param p1, "aGatherType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 142
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v4, v0, :cond_1

    .line 143
    const/4 v14, 0x2

    .line 150
    .local v14, "gatherDays":I
    :goto_0
    new-instance v22, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 151
    .local v22, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    invoke-virtual/range {v22 .. v22}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->getSecureClock()J

    move-result-wide v20

    .line 153
    .local v20, "nowDate":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->getAvailabilityDate(J)J

    move-result-wide v16

    .line 155
    .local v16, "lastAvailDate":J
    const-string v4, "Asia/Tokyo"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v12

    .line 156
    .local v12, "cal":Ljava/util/Calendar;
    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 157
    const/16 v4, 0xd

    const/4 v9, 0x0

    invoke-virtual {v12, v4, v9}, Ljava/util/Calendar;->set(II)V

    .line 158
    const/16 v4, 0xe

    const/4 v9, 0x0

    invoke-virtual {v12, v4, v9}, Ljava/util/Calendar;->set(II)V

    .line 159
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 160
    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 161
    const/16 v4, 0xd

    const/4 v9, 0x0

    invoke-virtual {v12, v4, v9}, Ljava/util/Calendar;->set(II)V

    .line 162
    const/16 v4, 0xe

    const/4 v9, 0x0

    invoke-virtual {v12, v4, v9}, Ljava/util/Calendar;->set(II)V

    .line 163
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    .line 165
    int-to-long v0, v14

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x5265c00

    mul-long v24, v24, v26

    add-long v18, v20, v24

    .line 166
    .local v18, "lastDate":J
    const-wide/32 v24, 0xa4cb800

    add-long v10, v20, v24

    .line 168
    .local v10, "alayerLastDate":J
    cmp-long v4, v16, v18

    if-ltz v4, :cond_3

    .line 246
    :cond_0
    :goto_1
    return-void

    .line 144
    .end local v10    # "alayerLastDate":J
    .end local v12    # "cal":Ljava/util/Calendar;
    .end local v14    # "gatherDays":I
    .end local v16    # "lastAvailDate":J
    .end local v18    # "lastDate":J
    .end local v20    # "nowDate":J
    .end local v22    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    :cond_1
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v4, v0, :cond_2

    .line 145
    const/16 v14, 0x8

    .restart local v14    # "gatherDays":I
    goto :goto_0

    .line 147
    .end local v14    # "gatherDays":I
    :cond_2
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 177
    .restart local v10    # "alayerLastDate":J
    .restart local v12    # "cal":Ljava/util/Calendar;
    .restart local v14    # "gatherDays":I
    .restart local v16    # "lastAvailDate":J
    .restart local v18    # "lastDate":J
    .restart local v20    # "nowDate":J
    .restart local v22    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    :cond_3
    sub-long v24, v18, v16

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x4194997000000000L    # 8.64E7

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v8, v0

    .line 179
    .local v8, "totalDays":I
    const/4 v4, 0x1

    if-le v8, v4, :cond_0

    .line 189
    cmp-long v4, v16, v10

    if-gez v4, :cond_7

    .line 190
    move-wide/from16 v16, v10

    .line 191
    move v8, v14

    .line 197
    :goto_2
    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 199
    const/4 v7, 0x0

    .line 200
    .local v7, "currentDay":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v8, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->setProgressDays(IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 202
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmm"

    invoke-direct {v13, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 205
    .local v13, "dfm":Ljava/text/SimpleDateFormat;
    const/16 v23, 0x0

    .line 209
    .local v23, "updateFlg":Z
    :cond_4
    :try_start_0
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "startDate":Ljava/lang/String;
    const/4 v4, 0x5

    const/4 v9, 0x1

    invoke-virtual {v12, v4, v9}, Ljava/util/Calendar;->add(II)V

    .line 212
    add-int/lit8 v7, v7, 0x1

    .line 214
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    cmp-long v4, v24, v18

    if-lez v4, :cond_5

    .line 215
    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 218
    :cond_5
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .local v6, "endDate":Ljava/lang/String;
    move-object/from16 v4, p0

    move-object/from16 v9, p2

    .line 221
    invoke-virtual/range {v4 .. v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->gatherSiInfFromNetImpl(Ljava/lang/String;Ljava/lang/String;IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v15

    .line 225
    .local v15, "result":I
    invoke-static {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->canGatherSiInfFromNetImpl(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_8

    .line 236
    :goto_3
    if-eqz v23, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->checkRecBroadcastTimeChanged()V

    .line 240
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->updateContentsInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto/16 :goto_1

    .line 193
    .end local v5    # "startDate":Ljava/lang/String;
    .end local v6    # "endDate":Ljava/lang/String;
    .end local v7    # "currentDay":I
    .end local v13    # "dfm":Ljava/text/SimpleDateFormat;
    .end local v15    # "result":I
    .end local v23    # "updateFlg":Z
    :cond_7
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 228
    .restart local v5    # "startDate":Ljava/lang/String;
    .restart local v6    # "endDate":Ljava/lang/String;
    .restart local v7    # "currentDay":I
    .restart local v13    # "dfm":Ljava/text/SimpleDateFormat;
    .restart local v15    # "result":I
    .restart local v23    # "updateFlg":Z
    :cond_8
    const/16 v23, 0x1

    .line 231
    :try_start_1
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    cmp-long v4, v24, v10

    if-nez v4, :cond_9

    .line 232
    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 234
    :cond_9
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v24

    cmp-long v4, v18, v24

    if-gtz v4, :cond_4

    goto :goto_3

    .line 236
    .end local v5    # "startDate":Ljava/lang/String;
    .end local v6    # "endDate":Ljava/lang/String;
    .end local v15    # "result":I
    :catchall_0
    move-exception v4

    if-eqz v23, :cond_b

    .line 237
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 238
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->checkRecBroadcastTimeChanged()V

    .line 240
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->updateContentsInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_b
    throw v4
.end method

.method protected gatherSiInfFromNetImpl(Ljava/lang/String;Ljava/lang/String;IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 18
    .param p1, "aStartDate"    # Ljava/lang/String;
    .param p2, "aEndDate"    # Ljava/lang/String;
    .param p3, "aCurrentDay"    # I
    .param p4, "aTotalDays"    # I
    .param p5, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 406
    const/4 v12, 0x0

    .line 409
    .local v12, "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    :try_start_0
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v10, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 411
    .end local v12    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    .local v10, "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setScheduleEnable(Z)V

    .line 412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setLoopCount(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMaxLoop(I)V

    .line 416
    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->addConflictCallback(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 421
    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->startDelivery(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v10, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->waitHttpResponse(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Z)[B

    move-result-object v13

    .line 427
    .local v13, "httpResult":[B
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 433
    .local v16, "savedTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v13, v0, v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->saveMetadata([BJ)I

    move-result v14

    .line 439
    .local v14, "result":I
    const/4 v4, 0x0

    invoke-static {v14, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkSaveMetadataReturnType(IZ)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->setProgressDays(IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 448
    const/16 v4, 0x100e

    const/4 v5, -0x1

    const-string v6, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 451
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->removeConflictCallback(ILjava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 455
    if-eqz v10, :cond_0

    .line 457
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->shutdown()V

    .line 463
    :cond_0
    return v14

    .line 440
    .end local v13    # "httpResult":[B
    .end local v14    # "result":I
    .end local v16    # "savedTime":J
    :catch_0
    move-exception v11

    .line 441
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_4
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 442
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 445
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catchall_0
    move-exception v4

    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->setProgressDays(IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 448
    const/16 v5, 0x100e

    const/4 v6, -0x1

    const-string v7, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 451
    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->removeConflictCallback(ILjava/lang/Object;)I

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 455
    :catchall_1
    move-exception v4

    :goto_0
    if-eqz v10, :cond_1

    .line 457
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->shutdown()V

    :cond_1
    throw v4

    .line 455
    .end local v10    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    .restart local v12    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    :catchall_2
    move-exception v4

    move-object v10, v12

    .end local v12    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    .restart local v10    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    goto :goto_0
.end method

.method protected getHttpClient(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    .locals 1
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 1190
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 1195
    .local v0, "ret":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    return-object v0
.end method

.method protected getMetadataSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    .locals 1
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 1215
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 1220
    .local v0, "ret":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    return-object v0
.end method

.method public searchSiInfByCridFromNet(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;
    .locals 11
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
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 893
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 894
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parameter error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 898
    :cond_1
    const/4 v8, 0x0

    .line 899
    .local v8, "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    const/4 v9, 0x0

    .line 902
    .local v9, "httpResult":[B
    :try_start_0
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 904
    .end local v8    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    .local v6, "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setScheduleEnable(Z)V

    .line 905
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setLoopCount(I)V

    .line 906
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMaxLoop(I)V

    .line 909
    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->addConflictCallback(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 914
    const/16 v0, 0x100e

    const/4 v1, -0x1

    :try_start_2
    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->checkConflict(IILjava/lang/String;)I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 925
    :try_start_3
    invoke-virtual {v6, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->startSearchCrid(Ljava/util/List;)V

    .line 928
    const/4 v0, 0x1

    invoke-direct {p0, v6, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->waitHttpResponse(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Z)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v9

    .line 932
    const/16 v0, 0x100e

    const/4 v1, -0x1

    :try_start_4
    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 935
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->removeConflictCallback(ILjava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 939
    if-eqz v6, :cond_2

    .line 941
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->shutdown()V

    .line 945
    :cond_2
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;-><init>()V

    .line 946
    .local v10, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;
    iput-object v9, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;->mmbXmlData:[B

    .line 951
    return-object v10

    .line 915
    .end local v10    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;
    :catch_0
    move-exception v7

    .line 916
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_5
    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 918
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->removeConflictCallback(ILjava/lang/Object;)I

    .line 920
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 939
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v6, :cond_3

    .line 941
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->shutdown()V

    :cond_3
    throw v0

    .line 932
    :catchall_1
    move-exception v0

    const/16 v1, 0x100e

    const/4 v2, -0x1

    :try_start_6
    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 935
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->removeConflictCallback(ILjava/lang/Object;)I

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 939
    .end local v6    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    .restart local v8    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    :catchall_2
    move-exception v0

    move-object v6, v8

    .end local v8    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    .restart local v6    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    goto :goto_0
.end method

.method public searchSiInfByFreewordFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    .locals 13
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
    const/4 v1, 0x0

    .line 987
    if-nez p1, :cond_0

    .line 988
    const-string v0, "parameter error : null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 989
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 992
    :cond_0
    const/4 v9, 0x0

    .line 993
    .local v9, "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 996
    .local v7, "cridlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 998
    .end local v9    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    .local v6, "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setScheduleEnable(Z)V

    .line 999
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setLoopCount(I)V

    .line 1000
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMaxLoop(I)V

    .line 1003
    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->addConflictCallback(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1008
    const/16 v0, 0x100e

    const/4 v1, -0x1

    :try_start_2
    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->checkConflict(IILjava/lang/String;)I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1019
    :try_start_3
    invoke-virtual {v6, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->startSearchFreeword(Ljava/lang/String;)V

    .line 1022
    const/4 v10, 0x0

    .line 1023
    .local v10, "httpResult":[B
    const/4 v0, 0x1

    invoke-direct {p0, v6, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->waitHttpResponse(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Z)[B

    move-result-object v10

    .line 1026
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1033
    .local v12, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_4
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v11

    .line 1038
    .local v11, "line":Ljava/lang/String;
    if-nez v11, :cond_3

    .line 1047
    const/16 v0, 0x100e

    const/4 v1, -0x1

    :try_start_5
    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 1050
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->removeConflictCallback(ILjava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1054
    if-eqz v6, :cond_1

    .line 1056
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->shutdown()V

    .line 1063
    :cond_1
    return-object v7

    .line 1009
    .end local v10    # "httpResult":[B
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v8

    .line 1010
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_6
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1012
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->removeConflictCallback(ILjava/lang/Object;)I

    .line 1014
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1054
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_2

    .line 1056
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->shutdown()V

    :cond_2
    throw v0

    .line 1034
    .restart local v10    # "httpResult":[B
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v8

    .line 1035
    .local v8, "e":Ljava/io/IOException;
    :try_start_7
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1036
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1047
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "httpResult":[B
    .end local v12    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    const/16 v1, 0x100e

    const/4 v2, -0x1

    :try_start_8
    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 1050
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->removeConflictCallback(ILjava/lang/Object;)I

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1042
    .restart local v10    # "httpResult":[B
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_9
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 1054
    .end local v6    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    .end local v10    # "httpResult":[B
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    :catchall_2
    move-exception v0

    move-object v6, v9

    .end local v9    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    .restart local v6    # "httpClient":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
    goto :goto_1
.end method
