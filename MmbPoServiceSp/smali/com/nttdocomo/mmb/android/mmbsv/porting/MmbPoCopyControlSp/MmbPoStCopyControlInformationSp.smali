.class public Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;
.super Ljava/lang/Object;
.source "MmbPoStCopyControlInformationSp.java"


# instance fields
.field public mmbAPSControlData:C

.field public mmbComponentDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;",
            ">;"
        }
    .end annotation
.end field

.field public mmbCopyControlType:C

.field public mmbCopyRestrictionMode:C

.field public mmbDigitalRecordingControlData:C

.field public mmbEncryptionMode:C


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbPoStCopyControlInformationSp [mmbCopyControlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbCopyControlType:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbDigitalRecordingControlData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbDigitalRecordingControlData:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbAPSControlData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbAPSControlData:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbEncryptionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbEncryptionMode:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbCopyRestrictionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbCopyRestrictionMode:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
