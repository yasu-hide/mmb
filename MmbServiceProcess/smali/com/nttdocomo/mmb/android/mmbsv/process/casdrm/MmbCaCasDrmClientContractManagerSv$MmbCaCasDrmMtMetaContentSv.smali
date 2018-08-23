.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtContentSv;
.source "MmbCaCasDrmClientContractManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbCaCasDrmMtMetaContentSv"
.end annotation


# instance fields
.field protected contentInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)V
    .locals 1
    .param p1, "aInfobase"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .prologue
    const/4 v0, 0x0

    .line 2174
    invoke-direct {p0, v0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtContentSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)V

    .line 2136
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;->contentInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 2178
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;->contentInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 2182
    return-void
.end method


# virtual methods
.method public getContentInfoBase()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .locals 1

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;->contentInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    return-object v0
.end method

.method public loadContentInfo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 2266
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtContentSv;->loadContentInfo()V

    .line 2267
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtContentSv;->getContentInfoBase()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtMetaContentSv;->contentInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 2268
    return-void
.end method
