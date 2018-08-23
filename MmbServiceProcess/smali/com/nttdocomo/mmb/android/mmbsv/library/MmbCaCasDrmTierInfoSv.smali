.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.source "MmbCaCasDrmTierInfoSv.java"


# static fields
.field public static final CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mmbCaCasDrmEntityid:B

.field public mmbCaCasDrmExtier:[B

.field public mmbCaCasDrmLimit:Ljava/util/Date;

.field public mmbCaCasDrmTierbit:[B

.field public mmbCaCasDrmUpdateNo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "aParcel"    # Landroid/os/Parcel;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmEntityid:B

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmUpdateNo:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 151
    .local v0, "time":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 152
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmLimit:Ljava/util/Date;

    .line 156
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmTierbit:[B

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmExtier:[B

    .line 161
    return-void

    .line 154
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmLimit:Ljava/util/Date;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbCaCasDrmTierInfoSv [mmbCaCasDrmEntityid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-byte v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmEntityid:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, ", mmbCaCasDrmUpdateNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmUpdateNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, ", mmbCaCasDrmLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmLimit:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, ", mmbCaCasDrmTierbit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmTierbit:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, ", mmbCaCasDrmExtier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmExtier:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "aParcel"    # Landroid/os/Parcel;
    .param p2, "aFlag"    # I

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    iget-byte v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmEntityid:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 117
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmUpdateNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmLimit:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 119
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmTierbit:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 124
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmExtier:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 128
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;->mmbCaCasDrmLimit:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0
.end method
