.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.source "MmbFcIndivdDataSv.java"


# static fields
.field public static final CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mmbByteData:[B

.field public mmbData:Landroid/graphics/Bitmap;

.field public mmbReturnValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "aWidth"    # I
    .param p2, "aHeight"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "result":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    array-length v5, v5

    if-lez v5, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 150
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 151
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 152
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    array-length v6, v6

    invoke-static {v5, v7, v6, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 154
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v3, v5, p1

    .line 155
    .local v3, "scaleX":I
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v4, v5, p2

    .line 156
    .local v4, "scaleY":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 158
    .local v2, "scale":I
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 159
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 160
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    array-length v6, v6

    invoke-static {v5, v7, v6, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 162
    .end local v0    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "scale":I
    .end local v3    # "scaleX":I
    .end local v4    # "scaleY":I
    :cond_0
    return-object v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "aIn"    # Landroid/os/Parcel;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbReturnValue:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    .line 86
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbReturnValue:I

    .line 102
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbFcIndivdDataSv [mmbReturnValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbReturnValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbByteData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbData:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 123
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 124
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbReturnValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 137
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method
