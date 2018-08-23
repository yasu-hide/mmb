.class Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;
.source "MmbSiMetadataConnectAirSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;I)V
    .locals 0
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aMwPgInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    .param p3, "aMmetaDataState"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;
    .param p4, "aCallType"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;I)V

    .line 126
    return-void
.end method

.method private cancelLayer(Ljava/lang/String;)V
    .locals 2
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 931
    const/4 v0, 0x0

    .line 932
    .local v0, "result":I
    if-nez p1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->cancelALayer()I

    move-result v0

    .line 953
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V

    .line 958
    return-void

    .line 946
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v1, p1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->cancelBLayer(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getBroadcasterData()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 978
    const/4 v12, 0x0

    .line 979
    .local v12, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getServiceListModule()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;

    move-result-object v15

    .line 980
    .local v15, "serviceList":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;
    const/16 v16, 0x0

    .line 982
    .local v16, "serviceListData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    :try_start_0
    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->getServiceListAll()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 990
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    :cond_0
    move-object v13, v12

    .line 1048
    .end local v12    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    .local v13, "ret":Ljava/util/ArrayList;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    :goto_0
    return-object v13

    .line 983
    .end local v13    # "ret":Ljava/util/ArrayList;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    .restart local v12    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    :catch_0
    move-exception v7

    .line 985
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 986
    new-instance v18, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v18

    .line 998
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_1
    const/4 v4, 0x0

    .line 999
    .local v4, "authoritieList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v6

    .line 1002
    .local v6, "casModule":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    :try_start_1
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getSubscribedAuthorities()Ljava/util/List;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1011
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    .local v11, "lowPriorityList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .restart local v12    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    .line 1018
    .local v5, "broadcastData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    new-instance v17, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;

    invoke-direct/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;-><init>()V

    .line 1019
    .local v17, "tmpData":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;
    iget-short v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;->mmbBroadcasterId:I

    .line 1020
    iget-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    .line 1021
    .local v14, "serviceData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    iget v0, v14, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    iget v0, v14, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    move/from16 v18, v0

    const/16 v19, 0xfff

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 1023
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;->mmbServiceIdList:Ljava/util/List;

    move-object/from16 v18, v0

    iget v0, v14, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1003
    .end local v5    # "broadcastData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "lowPriorityList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    .end local v14    # "serviceData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    .end local v17    # "tmpData":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;
    :catch_1
    move-exception v7

    .line 1004
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    move-object v13, v12

    .line 1008
    .restart local v13    # "ret":Ljava/util/ArrayList;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    goto/16 :goto_0

    .line 1026
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v13    # "ret":Ljava/util/ArrayList;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    .restart local v5    # "broadcastData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "lowPriorityList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    .restart local v17    # "tmpData":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;
    :cond_3
    const/4 v2, -0x1

    .line 1027
    .local v2, "authComp":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1028
    .local v3, "authName":Ljava/lang/String;
    iget-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    .line 1029
    if-nez v2, :cond_4

    .line 1033
    .end local v3    # "authName":Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_6

    .line 1034
    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1036
    :cond_6
    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1041
    .end local v2    # "authComp":I
    .end local v5    # "broadcastData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v17    # "tmpData":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;
    :cond_7
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;

    .line 1042
    .local v10, "lowPriorityData":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v10    # "lowPriorityData":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;
    :cond_8
    move-object v13, v12

    .line 1048
    .restart local v13    # "ret":Ljava/util/ArrayList;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    goto/16 :goto_0
.end method

.method private getEnvArray(I)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
    .locals 11
    .param p1, "aBroadcasterId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 1199
    const/4 v6, 0x0

    .line 1200
    .local v6, "ret":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v5

    .line 1204
    .local v5, "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :try_start_0
    invoke-virtual {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getALayerEnvironment(I)Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1211
    .local v3, "infoALayerEnv":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1213
    .local v1, "envList":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;>;"
    if-eqz v3, :cond_1

    .line 1214
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 1215
    new-instance v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;

    invoke-direct {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;-><init>()V

    .line 1217
    .local v4, "infoEnv":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->getServiceId()I

    move-result v7

    iput v7, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->serviceId:I

    .line 1218
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->getIpAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->ipaddress:Ljava/lang/String;

    .line 1219
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->getPort()I

    move-result v7

    iput v7, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->port:I

    .line 1220
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->getTsiPrimary()I

    move-result v7

    iput v7, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->tsi_primary:I

    .line 1221
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->getTsiSecondary()I

    move-result v7

    iput v7, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->tsi_secondary:I

    .line 1222
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1205
    .end local v1    # "envList":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;>;"
    .end local v2    # "i":I
    .end local v3    # "infoALayerEnv":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;>;"
    .end local v4    # "infoEnv":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
    :catch_0
    move-exception v0

    .line 1206
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v7, "broadcasterId:%d is not in PreferenceDB."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1207
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1208
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v7

    .line 1225
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v1    # "envList":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;>;"
    .restart local v2    # "i":I
    .restart local v3    # "infoALayerEnv":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;>;"
    :cond_0
    new-array v7, v10, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "ret":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
    check-cast v6, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;

    .line 1231
    .end local v2    # "i":I
    .restart local v6    # "ret":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
    :goto_1
    return-object v6

    .line 1227
    :cond_1
    const-string v7, "getALayerEnvironment(broadcasterId:%d) is null."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private waitResponse(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v4, 0x0

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v1

    sget v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaARetrySpan:I

    const v3, 0xea60

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->waitFor(J)Z

    move-result v0

    .line 816
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 818
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->cancelLayer(Ljava/lang/String;)V

    .line 823
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->setNotificationALayer(IZ)I

    throw v1

    .line 829
    .restart local v0    # "ret":Z
    :cond_0
    :try_start_1
    const-string v1, "time out error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->cancelLayer(Ljava/lang/String;)V

    .line 831
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 839
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->setNotificationALayer(IZ)I

    .line 841
    return-void
.end method

.method private waitResponseAirB(Ljava/lang/String;JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aEndTime"    # J
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v7, 0x0

    .line 874
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->getSecureClock()J

    move-result-wide v0

    .line 875
    .local v0, "currentTime":J
    sub-long v4, p2, v0

    .line 878
    .local v4, "waitTime":J
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->changeNumRunningBLayer(Z)V

    .line 881
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->waitFor(J)Z

    move-result v2

    .line 882
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 884
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 885
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->cancelLayer(Ljava/lang/String;)V

    .line 889
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    .end local v2    # "ret":Z
    :catchall_0
    move-exception v3

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->changeNumRunningBLayer(Z)V

    .line 903
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->setNotificationBLayer(IZ)I

    throw v3

    .line 895
    .restart local v2    # "ret":Z
    :cond_0
    :try_start_1
    const-string v3, "time out error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->cancelLayer(Ljava/lang/String;)V

    .line 897
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 901
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->changeNumRunningBLayer(Z)V

    .line 903
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->setNotificationBLayer(IZ)I

    .line 909
    return-void
.end method


# virtual methods
.method public gatherSiInfFromAirA(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 18
    .param p1, "aAutoBoot"    # Z
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v3

    .line 164
    .local v3, "conflictManager":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getBatteryStatus()I

    move-result v2

    .line 166
    .local v2, "batteryStatus":I
    const/4 v10, 0x0

    .line 168
    .local v10, "exception":Ljava/lang/RuntimeException;
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 170
    .local v12, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    packed-switch v2, :pswitch_data_0

    .line 259
    if-eqz p2, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->addCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    .line 263
    :cond_0
    if-nez p1, :cond_d

    .line 264
    const/4 v4, 0x1

    .line 270
    .local v4, "count":I
    :goto_0
    :try_start_0
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->setSchedule(Z)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->getSecureClock()J

    move-result-wide v6

    .line 273
    .local v6, "currentTime":J
    sget v13, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaARetrySpan:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3c

    mul-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    add-long v8, v6, v14

    .line 274
    .local v8, "endTime":J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v4, :cond_f

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->getSecureClock()J

    move-result-wide v6

    .line 277
    cmp-long v13, v6, v8

    if-lez v13, :cond_e

    .line 278
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "time out error : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;

    invoke-direct {v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;-><init>()V

    throw v13
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    .end local v4    # "count":I
    .end local v6    # "currentTime":J
    .end local v8    # "endTime":J
    .end local v11    # "i":I
    :catch_0
    move-exception v5

    .line 328
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :try_start_1
    const-string v13, "middle other error"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :catchall_0
    move-exception v13

    if-eqz p2, :cond_1

    .line 334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->removeCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    :cond_1
    throw v13

    .line 174
    :pswitch_0
    if-eqz p2, :cond_2

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->addCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    .line 178
    :cond_2
    if-nez p1, :cond_4

    .line 179
    const/4 v4, 0x1

    .line 185
    .restart local v4    # "count":I
    :goto_2
    :try_start_2
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->setSchedule(Z)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->getSecureClock()J

    move-result-wide v6

    .line 188
    .restart local v6    # "currentTime":J
    sget v13, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaARetrySpan:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3c

    mul-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    add-long v8, v6, v14

    .line 189
    .restart local v8    # "endTime":J
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    if-ge v11, v4, :cond_6

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->getSecureClock()J

    move-result-wide v6

    .line 192
    cmp-long v13, v6, v8

    if-lez v13, :cond_5

    .line 193
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "time out error : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;

    invoke-direct {v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;-><init>()V

    throw v13
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 241
    .end local v4    # "count":I
    .end local v6    # "currentTime":J
    .end local v8    # "endTime":J
    .end local v11    # "i":I
    :catch_1
    move-exception v5

    .line 243
    .restart local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :try_start_3
    const-string v13, "middle other error"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 249
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :catchall_1
    move-exception v13

    if-eqz p2, :cond_3

    .line 250
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->removeCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    :cond_3
    throw v13

    .line 181
    :cond_4
    :try_start_4
    sget v4, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaARetryCount:I
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v4    # "count":I
    goto :goto_2

    .line 197
    .restart local v6    # "currentTime":J
    .restart local v8    # "endTime":J
    .restart local v11    # "i":I
    :cond_5
    :try_start_5
    invoke-virtual/range {p0 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->gatherSiInfFromAirAImpl(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 229
    :cond_6
    :goto_4
    if-lt v11, v4, :cond_b

    .line 230
    :try_start_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "retry out error : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    if-eqz v10, :cond_a

    .line 232
    throw v10
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 245
    .end local v4    # "count":I
    .end local v6    # "currentTime":J
    .end local v8    # "endTime":J
    .end local v11    # "i":I
    :catch_2
    move-exception v5

    .line 247
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 198
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .restart local v4    # "count":I
    .restart local v6    # "currentTime":J
    .restart local v8    # "endTime":J
    .restart local v11    # "i":I
    :catch_3
    move-exception v5

    .line 199
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :try_start_8
    throw v5

    .line 200
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :catch_4
    move-exception v5

    .line 201
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;->getErrorCode()I

    move-result v13

    if-eqz v13, :cond_8

    .line 202
    move-object v10, v5

    .line 205
    add-int/lit8 v13, v11, 0x1

    if-ge v13, v4, :cond_7

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v9, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->waitIntervalTime(JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z

    .line 211
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkAutoReception(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 213
    const-string v13, "auto reception off"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 220
    :cond_8
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 221
    throw v5

    .line 222
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_5
    move-exception v5

    .line 223
    .local v5, "e":Ljava/lang/RuntimeException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 224
    throw v5

    .line 189
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 234
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_a
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;

    invoke-direct {v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;-><init>()V

    throw v13

    .line 239
    :cond_b
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->unsetSchedule(Z)V
    :try_end_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 249
    if-eqz p2, :cond_c

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->removeCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    .line 342
    :cond_c
    :goto_5
    return-void

    .line 266
    .end local v4    # "count":I
    .end local v6    # "currentTime":J
    .end local v8    # "endTime":J
    .end local v11    # "i":I
    :cond_d
    :try_start_9
    sget v4, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaARetryCount:I
    :try_end_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 282
    .restart local v6    # "currentTime":J
    .restart local v8    # "endTime":J
    .restart local v11    # "i":I
    :cond_e
    :try_start_a
    invoke-virtual/range {p0 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->gatherSiInfFromAirAImpl(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 314
    :cond_f
    :goto_6
    if-lt v11, v4, :cond_14

    .line 315
    :try_start_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "retry out error : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    if-eqz v10, :cond_13

    .line 317
    throw v10
    :try_end_b
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 330
    .end local v4    # "count":I
    .end local v6    # "currentTime":J
    .end local v8    # "endTime":J
    .end local v11    # "i":I
    :catch_6
    move-exception v5

    .line 331
    .restart local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_c
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 283
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .restart local v4    # "count":I
    .restart local v6    # "currentTime":J
    .restart local v8    # "endTime":J
    .restart local v11    # "i":I
    :catch_7
    move-exception v5

    .line 284
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :try_start_d
    throw v5

    .line 285
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :catch_8
    move-exception v5

    .line 286
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;->getErrorCode()I

    move-result v13

    if-eqz v13, :cond_11

    .line 287
    move-object v10, v5

    .line 290
    add-int/lit8 v13, v11, 0x1

    if-ge v13, v4, :cond_10

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v9, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->waitIntervalTime(JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z

    .line 296
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkAutoReception(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 298
    const-string v13, "auto reception off"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 305
    :cond_11
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 306
    throw v5

    .line 307
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_9
    move-exception v5

    .line 308
    .local v5, "e":Ljava/lang/RuntimeException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 309
    throw v5

    .line 274
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 319
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_13
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;

    invoke-direct {v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;-><init>()V

    throw v13

    .line 324
    :cond_14
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->unsetSchedule(Z)V
    :try_end_d
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_d .. :try_end_d} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 333
    if-eqz p2, :cond_c

    .line 334
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->removeCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    goto :goto_5

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected gatherSiInfFromAirAImpl(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 16
    .param p1, "aAutoBoot"    # Z
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 377
    const/4 v15, 0x0

    .line 379
    .local v15, "updateFlg":Z
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->addConflictCallback(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Ljava/lang/Object;)I

    .line 384
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->getBroadcasterData()Ljava/util/List;

    move-result-object v10

    .line 386
    .local v10, "broadcasterDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 387
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;

    .line 388
    .local v9, "broadcasterData":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;
    iget-object v2, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;->mmbServiceIdList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;->mmbServiceIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 392
    const v3, 0xa502

    :try_start_1
    iget-object v2, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;->mmbServiceIdList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->checkConflict(IILjava/lang/String;)I

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setScheduleEnable(Z)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setLoopCount(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMaxLoop(I)V

    .line 400
    iget v2, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;->mmbBroadcasterId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->getEnvArray(I)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 402
    .local v12, "envArray":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
    if-nez v12, :cond_1

    .line 440
    const v3, 0xa502

    :try_start_2
    iget-object v2, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;->mmbServiceIdList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 444
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->removeConflictCallback(ILjava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 450
    .end local v9    # "broadcasterData":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;
    .end local v10    # "broadcasterDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    .end local v12    # "envArray":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
    .end local v13    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v11

    .line 451
    .local v11, "e":Ljava/lang/RuntimeException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 452
    throw v11

    .line 410
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .restart local v9    # "broadcasterData":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;
    .restart local v10    # "broadcasterDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;>;"
    .restart local v12    # "envArray":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v2, v12}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->acquireALayer([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;)I

    move-result v14

    .line 416
    .local v14, "result":I
    const/4 v2, 0x0

    invoke-static {v14, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V

    .line 419
    invoke-static {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->isOtherError(I)V

    .line 422
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->waitResponse(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMetaDataState(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Z)V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 426
    const/4 v15, 0x1

    .line 440
    const v3, 0xa502

    :try_start_4
    iget-object v2, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;->mmbServiceIdList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 444
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->removeConflictCallback(ILjava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 456
    .end local v9    # "broadcasterData":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;
    .end local v12    # "envArray":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "result":I
    :cond_2
    if-eqz v15, :cond_4

    .line 458
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->checkBroadcastTimeChanged()V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->checkRecBroadcastTimeChanged()V
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_5 .. :try_end_5} :catch_2

    .line 465
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->updateContentsInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 470
    :cond_4
    return-void

    .line 428
    .restart local v9    # "broadcasterData":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;
    .restart local v13    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v11

    .line 429
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    :try_start_6
    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    .line 430
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 432
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->removeConflictCallback(ILjava/lang/Object;)I

    .line 434
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 440
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    :catchall_0
    move-exception v2

    move-object v3, v2

    const v4, 0xa502

    :try_start_7
    iget-object v2, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;->mmbServiceIdList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v5, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 444
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->removeConflictCallback(ILjava/lang/Object;)I

    throw v3

    .line 440
    .restart local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    :cond_5
    const v3, 0xa502

    iget-object v2, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;->mmbServiceIdList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 444
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->removeConflictCallback(ILjava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 462
    .end local v9    # "broadcasterData":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    .end local v13    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v11

    .line 463
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public gatherSiInfFromAirB(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 12
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 505
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    .line 506
    .local v1, "conflictManager":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getBatteryStatus()I

    move-result v0

    .line 511
    .local v0, "batteryStatus":I
    const/4 v6, 0x0

    .line 513
    .local v6, "exception":Ljava/lang/RuntimeException;
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;

    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 516
    .local v9, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->getEndTimeScheduleAirB(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;

    move-result-object v5

    .line 519
    .local v5, "endSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    if-nez v5, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 592
    if-eqz p2, :cond_2

    .line 593
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->addCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    .line 596
    :cond_2
    :try_start_0
    sget v8, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->fcRetryCount:I

    .line 598
    .local v8, "retryCount":I
    iget v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbCount:I

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 599
    iget v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbCount:I

    mul-int/2addr v8, v10

    .line 603
    :cond_3
    invoke-virtual {v9, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->setScheduleAirB(Ljava/lang/String;)Z

    .line 605
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_a

    .line 607
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->getSecureClock()J

    move-result-wide v2

    .line 608
    .local v2, "currentTime":J
    iget-wide v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    cmp-long v10, v2, v10

    if-lez v10, :cond_9

    .line 609
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close down error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;-><init>()V

    throw v10
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 654
    .end local v2    # "currentTime":J
    .end local v7    # "i":I
    .end local v8    # "retryCount":I
    :catch_0
    move-exception v4

    .line 655
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :try_start_1
    const-string v10, "middle other error"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 659
    if-eqz p2, :cond_0

    .line 660
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->removeCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    goto :goto_0

    .line 531
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :pswitch_0
    if-eqz p2, :cond_4

    .line 532
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->addCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    .line 537
    :cond_4
    :try_start_2
    invoke-virtual {v9, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->setScheduleAirB(Ljava/lang/String;)Z

    .line 540
    const/4 v7, 0x0

    .line 542
    .restart local v7    # "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->getSecureClock()J

    move-result-wide v2

    .line 543
    .restart local v2    # "currentTime":J
    iget-wide v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    cmp-long v10, v2, v10

    if-lez v10, :cond_5

    .line 544
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close down error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;-><init>()V

    throw v10
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 577
    .end local v2    # "currentTime":J
    .end local v7    # "i":I
    :catch_1
    move-exception v4

    .line 578
    .restart local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :try_start_3
    const-string v10, "middle other error"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 582
    if-eqz p2, :cond_0

    .line 583
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->removeCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    goto/16 :goto_0

    .line 548
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    .restart local v2    # "currentTime":J
    .restart local v7    # "i":I
    :cond_5
    :try_start_4
    invoke-virtual {p0, p1, v5, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->gatherSiInfFromAirBImpl(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 575
    :goto_3
    :try_start_5
    invoke-virtual {v9, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->unsetScheduleAirB(Ljava/lang/String;)Z
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 582
    if-eqz p2, :cond_0

    .line 583
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->removeCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    goto/16 :goto_0

    .line 549
    :catch_2
    move-exception v4

    .line 550
    .restart local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :try_start_6
    throw v4
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 579
    .end local v2    # "currentTime":J
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    .end local v7    # "i":I
    :catch_3
    move-exception v4

    .line 580
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 582
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catchall_0
    move-exception v10

    if-eqz p2, :cond_6

    .line 583
    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    move-result-object v11

    invoke-virtual {p2, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->removeCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    :cond_6
    throw v10

    .line 551
    .restart local v2    # "currentTime":J
    .restart local v7    # "i":I
    :catch_4
    move-exception v4

    .line 552
    .restart local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_8
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;->getErrorCode()I

    move-result v10

    if-eqz v10, :cond_7

    .line 553
    move-object v6, v4

    .line 556
    iget-wide v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    invoke-virtual {p0, v10, v11, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->waitIntervalTime(JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z

    .line 559
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkAutoReceptionAirB(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 561
    const-string v10, "auto reception off"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 568
    :cond_7
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 569
    throw v4
    :try_end_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 540
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 613
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .restart local v8    # "retryCount":I
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1, v5, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->gatherSiInfFromAirBImpl(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 642
    .end local v2    # "currentTime":J
    :cond_a
    :goto_4
    if-lt v7, v8, :cond_10

    .line 643
    :try_start_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "retry out error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    if-eqz v6, :cond_f

    .line 645
    throw v6
    :try_end_a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 656
    .end local v7    # "i":I
    .end local v8    # "retryCount":I
    :catch_5
    move-exception v4

    .line 657
    .restart local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 659
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catchall_1
    move-exception v10

    if-eqz p2, :cond_b

    .line 660
    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    move-result-object v11

    invoke-virtual {p2, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->removeCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    :cond_b
    throw v10

    .line 614
    .restart local v2    # "currentTime":J
    .restart local v7    # "i":I
    .restart local v8    # "retryCount":I
    :catch_6
    move-exception v4

    .line 615
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :try_start_c
    throw v4

    .line 616
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :catch_7
    move-exception v4

    .line 617
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;->getErrorCode()I

    move-result v10

    if-eqz v10, :cond_d

    .line 618
    move-object v6, v4

    .line 621
    add-int/lit8 v10, v7, 0x1

    if-ge v10, v8, :cond_c

    .line 623
    iget-wide v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    invoke-virtual {p0, v10, v11, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->waitIntervalTime(JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z

    .line 627
    :cond_c
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkAutoReceptionAirB(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 629
    const-string v10, "auto reception off"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 636
    :cond_d
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 637
    throw v4

    .line 605
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 647
    .end local v2    # "currentTime":J
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_f
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;-><init>()V

    throw v10

    .line 652
    :cond_10
    invoke-virtual {v9, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->unsetScheduleAirB(Ljava/lang/String;)Z
    :try_end_c
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 659
    if-eqz p2, :cond_0

    .line 660
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->removeCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    goto/16 :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected gatherSiInfFromAirBImpl(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 12
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aEndSchdule"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 706
    if-nez p1, :cond_0

    .line 707
    const-string v0, "parameter error : null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 712
    :cond_0
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 713
    .local v9, "searchModule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    invoke-virtual {v9, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchServiceIdFromCrid(Ljava/lang/String;)I

    move-result v10

    .line 714
    .local v10, "serviceId":I
    const/4 v11, 0x0

    .line 717
    .local v11, "updateFlg":Z
    const/4 v0, 0x1

    if-ge v10, v0, :cond_1

    .line 783
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setScheduleEnable(Z)V

    .line 725
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setLoopCount(I)V

    .line 726
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMaxLoop(I)V

    .line 729
    const/4 v1, 0x1

    iget-wide v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbStartTime:J

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->addConflictCallback(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Ljava/lang/Object;)I

    .line 734
    const v0, 0xa504

    :try_start_0
    invoke-virtual {p0, v0, v10, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->checkConflict(IILjava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->acquireBLayer(Ljava/lang/String;)I

    move-result v8

    .line 753
    .local v8, "result":I
    const/4 v0, 0x1

    invoke-static {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V

    .line 756
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->isOtherError(I)V

    .line 759
    iget-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->waitResponseAirB(Ljava/lang/String;JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 762
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMetaDataState(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    const/4 v11, 0x1

    .line 766
    const v0, 0xa504

    invoke-virtual {p0, v0, v10, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 769
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->removeConflictCallback(ILjava/lang/Object;)I

    .line 773
    if-eqz v11, :cond_2

    .line 774
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 775
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->checkRecBroadcastTimeChanged()V

    .line 779
    :cond_2
    invoke-virtual {p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->updateContentsInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 735
    .end local v8    # "result":I
    :catch_0
    move-exception v7

    .line 737
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->removeConflictCallback(ILjava/lang/Object;)I

    .line 739
    throw v7

    .line 766
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catchall_0
    move-exception v0

    const v1, 0xa504

    invoke-virtual {p0, v1, v10, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->clearConflictStatus(IILjava/lang/String;)I

    .line 769
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->removeConflictCallback(ILjava/lang/Object;)I

    throw v0
.end method

.method protected getEndTimeScheduleAirB(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->getSecureClock()J

    move-result-wide v0

    .line 1159
    .local v0, "currentTime":J
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {p1, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->getNextBroadcast(Ljava/lang/String;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v4

    .line 1162
    .local v4, "nbcast":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->joinContinuousScheduledBroadcast([Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)[Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;

    move-result-object v3

    .line 1164
    .local v3, "jbcast":[Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    if-eqz v3, :cond_2

    array-length v6, v3

    if-eqz v6, :cond_2

    .line 1165
    const/4 v5, 0x0

    .line 1168
    .local v5, "ret":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_0

    .line 1169
    aget-object v6, v3, v2

    iget-wide v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    cmp-long v6, v6, v0

    if-ltz v6, :cond_1

    .line 1170
    aget-object v5, v3, v2

    .line 1181
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return-object v5

    .line 1168
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1175
    .end local v2    # "i":I
    .end local v5    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    goto :goto_1
.end method

.method public getSecureClock()J
    .locals 6

    .prologue
    .line 1103
    const-wide/16 v0, 0x0

    .line 1106
    .local v0, "clock":J
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    .line 1108
    .local v3, "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1115
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    .line 1116
    const-string v4, "error getSecureClock(clock < 0)"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1117
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v4

    .line 1109
    :catch_0
    move-exception v2

    .line 1111
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1112
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v4

    .line 1123
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_0
    return-wide v0
.end method

.method public waitIntervalTime(JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z
    .locals 9
    .param p1, "aEndTime"    # J
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v2, 0x0

    .line 1070
    sget v3, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->retryIntervalTime:I

    int-to-long v4, v3

    .line 1071
    .local v4, "waitTime":J
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->getSecureClock()J

    move-result-wide v0

    .line 1072
    .local v0, "currentTime":J
    sub-long v6, p1, v0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 1073
    sub-long v4, p1, v0

    .line 1077
    :cond_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    .line 1080
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->waitFor(J)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 1085
    .local v2, "ret":Z
    :cond_1
    return v2
.end method
