.class public Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;
.super Ljava/lang/Object;
.source "MmbPoStCopyControlInformationEachComponentSp.java"


# instance fields
.field public mmbAPSControlData:C

.field public mmbComponentTag:S

.field public mmbCopyControlType:C

.field public mmbDigitalRecordingControlData:C


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbPoStCopyControlInformationEachComponentSp [mmbComponentTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;->mmbComponentTag:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbCopyControlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;->mmbCopyControlType:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbDigitalRecordingControlData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;->mmbDigitalRecordingControlData:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbAPSControlData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;->mmbAPSControlData:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
