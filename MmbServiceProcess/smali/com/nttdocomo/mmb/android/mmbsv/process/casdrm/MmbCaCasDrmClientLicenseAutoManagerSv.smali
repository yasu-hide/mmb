.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
.source "MmbCaCasDrmClientLicenseAutoManagerSv.java"


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V
    .locals 0
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aDataSv"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;
    .param p3, "aHttpSv"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 57
    return-void
.end method


# virtual methods
.method public autoGetLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 26
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v8

    .line 79
    .local v8, "conflictmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v19

    .line 82
    .local v19, "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClockForCasdrm()J

    move-result-wide v20

    .line 83
    .local v20, "stime":J
    const-wide/16 v22, 0x0

    cmp-long v22, v22, v20

    if-lez v22, :cond_0

    .line 84
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v22, -0x1000000

    const-string v23, "Failed to get secure clock."

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v12, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 87
    .local v12, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v22, "[%d] %s (%d)"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    iget v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    throw v12

    .line 94
    .end local v12    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getAllEntityId()[B

    move-result-object v11

    .line 95
    .local v11, "entityIds":[B
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v0, v11

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v14, v0, :cond_2

    .line 97
    :cond_1
    aget-byte v22, v11, v14

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->deleteInvalidLicense(BJ)I

    move-result v5

    .line 99
    .local v5, "cntCrid":I
    const/16 v22, 0x190

    move/from16 v0, v22

    if-ge v5, v0, :cond_1

    .line 95
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 103
    .end local v5    # "cntCrid":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteOverPurchaseHistoryWhereExpirationDate(J)I

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteOverLicenseDeleteHistoryWhereExpirationDate(J)I

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteExpiredLicenseTarget(J)I

    .line 112
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v10, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 114
    .local v10, "contract":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->deleteUndeletedLicenseInfo()V

    .line 116
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 120
    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoAcquireLisence()I

    move-result v22

    if-nez v22, :cond_4

    .line 195
    :cond_3
    return-void

    .line 132
    :cond_4
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkForeignMode()I

    move-result v13

    .line 133
    .local v13, "foreignMode":I
    if-eqz v13, :cond_5

    .line 134
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v22, -0x1000001

    const-string v23, "Overseas mode."

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v12, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 137
    .restart local v12    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v22, "[%d] %s (%d)"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    iget v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    throw v12

    .line 142
    .end local v12    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_5
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConnectionInfo()I

    move-result v9

    .line 143
    .local v9, "connInfo":I
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v9, v0, :cond_6

    .line 144
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v22, -0x1000002

    const-string v23, "Out of range."

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v12, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 147
    .restart local v12    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v22, "[%d] %s (%d)"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    iget v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    throw v12

    .line 151
    .end local v12    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 154
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 158
    .local v7, "cntLicenseMax":I
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getLicenseCount()I

    move-result v6

    .line 160
    .local v6, "cntLicense":I
    sub-int v4, v7, v6

    .line 161
    .local v4, "cntAvailable":I
    if-gtz v4, :cond_7

    .line 162
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/16 v22, -0xa

    const-string v23, "Maximum number excess."

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v12, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 166
    .restart local v12    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v22, "[%d] %s (%d, %d)"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    iget v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    throw v12

    .line 171
    .end local v12    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->queryAllLicenseTarget(JI)Ljava/util/List;

    move-result-object v18

    .line 178
    .local v18, "ltDaoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;

    .line 179
    .local v17, "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 180
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v16, "licenseId":Ljava/lang/StringBuilder;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;->mmbEntityId:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->hasLicense(BLjava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 183
    move-object/from16 v0, v17

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;->mmbEntityId:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->addLicenseInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;BLjava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;->mmbLicenseId:Ljava/lang/String;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteLicenseTargetAcquiringLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;)I

    goto :goto_1
.end method

.method protected checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 7
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 261
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 266
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->manualRunCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v2, -0x1000007

    const-string v3, "Cancelled."

    invoke-direct {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 270
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v2, "[%d] %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    throw v1

    .line 274
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseAutoManagerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->checkBatteryStatus(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)Z

    move-result v0

    .line 276
    .local v0, "battStatus":Z
    if-nez v0, :cond_1

    .line 277
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v2, -0x1000003

    const-string v3, "Low battery."

    invoke-direct {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 280
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v2, "[%d] %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    throw v1

    .line 286
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_1
    return-void
.end method

.method protected resetConflictStatus()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method protected setConflictStatus()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method
