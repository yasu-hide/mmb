.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;
.super Ljava/lang/Object;
.source "MmbCaCasDrmNwPublishLicenseSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbCaCasDrmNwPublishLicenseDataSv"
.end annotation


# instance fields
.field public mmbAreaCode:Ljava/lang/String;

.field public mmbCrid:Ljava/lang/String;

.field public mmbEntityid:B

.field public mmbLicenseInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;

.field public mmbMessageId:[B

.field public mmbUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;Ljava/lang/String;B)V
    .locals 0
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aMessageId"    # [B
    .param p3, "aAreaCode"    # Ljava/lang/String;
    .param p4, "aInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;
    .param p5, "aUrl"    # Ljava/lang/String;
    .param p6, "aEntityid"    # B

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbCrid:Ljava/lang/String;

    .line 379
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbMessageId:[B

    .line 380
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbAreaCode:Ljava/lang/String;

    .line 381
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbLicenseInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;

    .line 382
    iput-object p5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbUrl:Ljava/lang/String;

    .line 383
    iput-byte p6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbEntityid:B

    .line 387
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v1, " MmbCrid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v1, " MmbMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbMessageId:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v1, " MmbAreaCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbAreaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, " mmbLicenseInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbLicenseInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;

    if-nez v1, :cond_0

    .line 409
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :goto_0
    const-string v1, " MmbUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v1, " MmbEntityid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbEntityid:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 411
    :cond_0
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v1, " mmbAccumulatedFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbLicenseInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;

    iget-byte v1, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbAccumulatedFlag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    const-string v1, " mmbCasClientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbLicenseInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;

    iget-object v1, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbCasClientId:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v1, " mmbCryptInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbLicenseInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;

    iget-object v1, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbCryptInfo:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v1, " mmbReciverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbLicenseInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;

    iget-object v1, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbReciverId:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
