.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.source "MmbPrPreferenceAutoFunctionSv.java"


# static fields
.field public static final CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mmbAutoForAutoReceive:I

.field public mmbAutoForForceReceive:I

.field public mmbAutoForRecommend:I

.field public mmbAutoLicence:I

.field public mmbAutoReceive:I

.field public mmbAutoSendLog:I

.field public mmbEpgUpdateTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 76
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;-><init>()V

    .line 40
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoReceive:I

    .line 45
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoLicence:I

    .line 50
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoSendLog:I

    .line 55
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbEpgUpdateTime:I

    .line 60
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForRecommend:I

    .line 65
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForAutoReceive:I

    .line 70
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForForceReceive:I

    .line 77
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "aIn"    # Landroid/os/Parcel;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoReceive:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoLicence:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoSendLog:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbEpgUpdateTime:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForRecommend:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForAutoReceive:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForForceReceive:I

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbPrPreferenceAutoFunctionSv [mmbAutoReceive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoReceive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbAutoLicence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoLicence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbAutoSendLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoSendLog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbEpgUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbEpgUpdateTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbAutoForRecommend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForRecommend:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbAutoForAutoReceive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForAutoReceive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbAutoForForceReceive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForForceReceive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "aOut"    # Landroid/os/Parcel;
    .param p2, "aFlag"    # I

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoReceive:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoLicence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoSendLog:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbEpgUpdateTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForRecommend:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForAutoReceive:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForForceReceive:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    return-void
.end method
