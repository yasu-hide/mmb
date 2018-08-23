.class public Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;
.super Ljava/lang/Object;
.source "MmbPrPreferenceALayerEnvironmentSv.java"


# instance fields
.field private mBroadcasterId:I

.field private mIpAddress:Ljava/lang/String;

.field private mPort:I

.field private mServiceId:I

.field private mTsiPrimary:I

.field private mTsiSecondary:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBroadcasterId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mBroadcasterId:I

    return v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mPort:I

    return v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mServiceId:I

    return v0
.end method

.method public getTsiPrimary()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mTsiPrimary:I

    return v0
.end method

.method public getTsiSecondary()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mTsiSecondary:I

    return v0
.end method

.method public setBroadcasterId(I)V
    .locals 0
    .param p1, "aBroadcasterId"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mBroadcasterId:I

    .line 103
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "aIpAddress"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mIpAddress:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "aPort"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mPort:I

    .line 128
    return-void
.end method

.method public setServiceId(I)V
    .locals 0
    .param p1, "aServiceId"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mServiceId:I

    .line 78
    return-void
.end method

.method public setTsiPrimary(I)V
    .locals 0
    .param p1, "aTsiPrimary"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mTsiPrimary:I

    .line 153
    return-void
.end method

.method public setTsiSecondary(I)V
    .locals 0
    .param p1, "aTsiSecondary"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mTsiSecondary:I

    .line 178
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbPrPreferenceALayerEnvironmentSv [mServiceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBroadcasterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mBroadcasterId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTsiPrimary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mTsiPrimary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTsiSecondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mTsiSecondary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
