.class final Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv$MmbCaCasDrmPhReplaceSaverSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv$MmbCaCasDrmPhInsertSaverSv;
.source "MmbCaCasDrmPhPurchaseHistorySaverSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MmbCaCasDrmPhReplaceSaverSv"
.end annotation


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 0
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv$MmbCaCasDrmPhInsertSaverSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 251
    return-void
.end method


# virtual methods
.method protected saveDb(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;)V
    .locals 1
    .param p1, "aDao"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv$MmbCaCasDrmPhReplaceSaverSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->replacePurchaseHistory(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;)I

    .line 270
    return-void
.end method
