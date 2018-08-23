.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;
.super Ljava/lang/Object;
.source "MmbFcComplementTaskSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbFcHttpRequestInfoSv"
.end annotation


# instance fields
.field isCompleteOnly:Z

.field strCarrierId:Ljava/lang/String;

.field strDir:Ljava/lang/String;

.field strHost:Ljava/lang/String;

.field strLastBroadcastEndTime:Ljava/lang/String;

.field strNetworkCircuitId:Ljava/lang/String;

.field strRange:Ljava/lang/String;

.field strRepairId:Ljava/lang/String;

.field strRepairType:Ljava/lang/String;

.field strReserveType:Ljava/lang/String;

.field strUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)V
    .locals 0

    .prologue
    .line 1673
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertHttpDate(J)Ljava/lang/String;
    .locals 5
    .param p1, "aUnixTime"    # J

    .prologue
    .line 2008
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MM yyyy HH:mm:ss "

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2010
    .local v0, "httpDateFormat":Ljava/text/SimpleDateFormat;
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2012
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2013
    .local v2, "resultTime":Ljava/util/Date;
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2018
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method setRequest(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;IZ)I
    .locals 17
    .param p1, "aContentInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .param p2, "aType"    # I
    .param p3, "aIsCompleteOnly"    # Z

    .prologue
    .line 1737
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->isCompleteOnly:Z

    .line 1738
    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    if-eqz v13, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    if-eqz v13, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    if-eqz v13, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->uri:Ljava/lang/String;

    if-nez v13, :cond_1

    .line 1742
    :cond_0
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v14, "Bad transmit control metadata"

    invoke-direct {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1744
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    .line 1745
    .local v4, "crid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget-object v10, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->uri:Ljava/lang/String;

    .line 1747
    .local v10, "strUrl":Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1749
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strHost:Ljava/lang/String;

    .line 1752
    invoke-virtual {v12}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 1753
    const-string v13, "parameter error url="

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1757
    const/16 v13, -0x2c

    .line 1859
    .end local v12    # "url":Ljava/net/URL;
    :goto_0
    return v13

    .line 1761
    .restart local v12    # "url":Ljava/net/URL;
    :cond_2
    invoke-virtual {v12}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 1762
    const-string v13, "parameter error url="

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1766
    const/16 v13, -0x2c

    goto :goto_0

    .line 1769
    :cond_3
    invoke-virtual {v12}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strDir:Ljava/lang/String;

    .line 1770
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strDir:Ljava/lang/String;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1771
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strDir:Ljava/lang/String;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v2

    .line 1787
    .local v2, "contentSch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    const/4 v8, 0x0

    .line 1790
    .local v8, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/4 v13, 0x4

    :try_start_1
    invoke-virtual {v2, v4, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 1802
    iget v13, v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    .line 1803
    const-string v13, "0"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strReserveType:Ljava/lang/String;

    .line 1809
    :goto_1
    const/16 v13, 0xb

    move/from16 v0, p2

    if-ne v0, v13, :cond_6

    .line 1810
    const-string v13, "0"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRepairType:Ljava/lang/String;

    .line 1849
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->setRequestPreference(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 1853
    const/16 v13, -0x2b

    goto :goto_0

    .line 1773
    .end local v2    # "contentSch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .end local v8    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v12    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 1774
    .local v5, "e":Ljava/net/MalformedURLException;
    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1778
    const/16 v13, -0x2c

    goto/16 :goto_0

    .line 1793
    .end local v5    # "e":Ljava/net/MalformedURLException;
    .restart local v2    # "contentSch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .restart local v8    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .restart local v12    # "url":Ljava/net/URL;
    :catch_1
    move-exception v5

    .line 1794
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1798
    const/16 v13, -0x2c

    goto/16 :goto_0

    .line 1806
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :cond_5
    const-string v13, "1"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strReserveType:Ljava/lang/String;

    goto :goto_1

    .line 1813
    :cond_6
    const-string v13, "1"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRepairType:Ljava/lang/String;

    .line 1815
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "ja"

    invoke-virtual {v13, v4, v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;

    move-result-object v3

    .line 1819
    .local v3, "contentsInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    const-wide/16 v6, 0x0

    .line 1820
    .local v6, "lastStopTime":J
    if-eqz v3, :cond_7

    iget-object v13, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    if-eqz v13, :cond_7

    iget-object v13, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v13, v13, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    if-eqz v13, :cond_7

    iget-object v13, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v13, v13, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    if-eqz v13, :cond_7

    .line 1825
    :try_start_2
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;

    iget-object v13, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v13, v13, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    invoke-direct {v9, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;-><init>(Ljava/lang/String;)V

    .line 1828
    .local v9, "sdpParser":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    const-string v13, "t="

    invoke-virtual {v9, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;->getTagClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;

    move-object v0, v13

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;

    move-object v11, v0

    .line 1831
    .local v11, "tagT":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->getStopTime(Z)J
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-wide v6

    .line 1840
    .end local v9    # "sdpParser":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .end local v11    # "tagT":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    :cond_7
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-nez v13, :cond_8

    .line 1841
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->convertHttpDate(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strLastBroadcastEndTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 1832
    :catch_2
    move-exception v5

    .line 1833
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1834
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v13, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 1835
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_3
    move-exception v5

    .line 1836
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1837
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v13, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 1844
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->convertHttpDate(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strLastBroadcastEndTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 1859
    .end local v3    # "contentsInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .end local v6    # "lastStopTime":J
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method setRequestPreference(Ljava/lang/String;)Z
    .locals 9
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1882
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v4

    .line 1885
    .local v4, "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getCrid2Authority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1888
    .local v0, "authority":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getCompletionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRepairId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1897
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRepairId:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    const/16 v8, 0x12

    if-eq v7, v8, :cond_0

    .line 1898
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "repair ID Length Error strRepairId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRepairId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1967
    :goto_0
    return v5

    .line 1889
    :catch_0
    move-exception v1

    .line 1890
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "repair ID Get Error strRepairId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRepairId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1907
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getNetworkInfoMcc()Ljava/lang/String;

    move-result-object v2

    .line 1908
    .local v2, "networkMcc":Ljava/lang/String;
    const-string v7, "440"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1909
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getNetworkInfoMnc()Ljava/lang/String;

    move-result-object v3

    .line 1910
    .local v3, "networkMnc":Ljava/lang/String;
    const-string v7, "010"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1911
    const-string v7, "d"

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strCarrierId:Ljava/lang/String;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1934
    .end local v2    # "networkMcc":Ljava/lang/String;
    .end local v3    # "networkMnc":Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getNetworkInfoType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1944
    const-string v7, "getNetworkInfoType other"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 1950
    :catch_1
    move-exception v1

    .line 1951
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v7, "%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-static {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1912
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v2    # "networkMcc":Ljava/lang/String;
    .restart local v3    # "networkMnc":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v7, "020"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1914
    const-string v7, "s"

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strCarrierId:Ljava/lang/String;
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1927
    .end local v2    # "networkMcc":Ljava/lang/String;
    .end local v3    # "networkMnc":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 1928
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v7, "getNetworkInfoMcc errorr"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1929
    const-string v7, "o"

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strCarrierId:Ljava/lang/String;

    goto :goto_1

    .line 1915
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v2    # "networkMcc":Ljava/lang/String;
    .restart local v3    # "networkMnc":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string v7, "070"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1917
    const-string v7, "a"

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strCarrierId:Ljava/lang/String;

    goto :goto_1

    .line 1920
    :cond_3
    const-string v7, "networkMnc other"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1921
    const-string v7, "o"

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strCarrierId:Ljava/lang/String;

    goto :goto_1

    .line 1924
    .end local v3    # "networkMnc":Ljava/lang/String;
    :cond_4
    const-string v7, "networkMcc other"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1925
    const-string v7, "o"

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strCarrierId:Ljava/lang/String;
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1937
    .end local v2    # "networkMcc":Ljava/lang/String;
    :pswitch_0
    :try_start_5
    const-string v7, "0"

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strNetworkCircuitId:Ljava/lang/String;

    :goto_2
    move v5, v6

    .line 1967
    goto/16 :goto_0

    .line 1940
    :pswitch_1
    const-string v7, "1"

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strNetworkCircuitId:Ljava/lang/String;
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 1956
    :catch_3
    move-exception v1

    .line 1957
    .restart local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v7, "%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-static {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1934
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbFcHttpRequestInfoSv [strUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strReserveType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strReserveType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strRepairType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRepairType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strRepairId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRepairId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strCarrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strCarrierId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strNetworkCircuitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strNetworkCircuitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strLastBroadcastEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strLastBroadcastEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". isCompleteOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->isCompleteOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
