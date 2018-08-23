.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.source "MmbCaCasDrmPurchaseInfoSv.java"


# static fields
.field public static final CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;",
            ">;"
        }
    .end annotation
.end field

.field public static final PURCHASETYPE_BASIC:I = 0x4

.field public static final PURCHASETYPE_PPC:I = 0x0

.field public static final PURCHASETYPE_PPM:I = 0x2

.field public static final PURCHASETYPE_PPP:I = 0x1

.field public static final PURCHASETYPE_PPV:I = 0x3

.field public static final PURCHASETYPE_UNDEFINED:I = -0x1

.field public static final PURCHASE_STATUS_NO:I = 0x0

.field public static final PURCHASE_STATUS_YES:I = 0x1


# instance fields
.field public mmbAuthority:Ljava/lang/String;

.field public mmbCrId:Ljava/lang/String;

.field public mmbEntityId:B

.field public mmbPurchaseId:Ljava/lang/String;

.field public mmbPurchaseType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    const/4 v0, -0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aEntityid"    # B
    .param p2, "aAuthority"    # Ljava/lang/String;
    .param p3, "aPurchaseid"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;-><init>()V

    .line 133
    iput-byte p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbEntityId:B

    .line 134
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbAuthority:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbPurchaseId:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbCrId:Ljava/lang/String;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbPurchaseType:I

    .line 141
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "aParcel"    # Landroid/os/Parcel;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbEntityId:B

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbAuthority:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbCrId:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbPurchaseId:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbPurchaseType:I

    .line 199
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbCaCasDrmPurchaseInfoSv [mmbEntityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-byte v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbEntityId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, ", mmbAuthority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, ", mmbCrId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbCrId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, ", mmbPurchaseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbPurchaseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, ", mmbPurchaseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbPurchaseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "aParcel"    # Landroid/os/Parcel;
    .param p2, "aFlag"    # I

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 163
    iget-byte v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbEntityId:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 164
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbAuthority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbCrId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbPurchaseId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;->mmbPurchaseType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    return-void
.end method
