.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.source "MmbFwExceptionDataSv.java"


# static fields
.field public static final CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mCrid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorCode:I

.field private mFcExecutionState:I

.field private mMessage:Ljava/lang/String;

.field private mResultCode:I

.field private mScheduleType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mClassName:Ljava/lang/String;

    .line 254
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public getCrid()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mCrid:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mErrorCode:I

    .line 300
    .local v0, "result":I
    return v0
.end method

.method public getFcExecutionState()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mFcExecutionState:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mMessage:Ljava/lang/String;

    .line 346
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mResultCode:I

    return v0
.end method

.method public getScheduleType()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mScheduleType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "aReader"    # Landroid/os/Parcel;

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mClassName:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mErrorCode:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mMessage:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mCrid:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mFcExecutionState:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mScheduleType:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mResultCode:I

    .line 232
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "aClassName"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mClassName:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setCrid(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "aCrid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mCrid:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "aErrorCode"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mErrorCode:I

    .line 324
    return-void
.end method

.method public setFcExecutionState(I)V
    .locals 0
    .param p1, "aFcExecutionState"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mFcExecutionState:I

    .line 120
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mMessage:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "aResultCode"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mResultCode:I

    .line 168
    return-void
.end method

.method public setScheduleType(I)V
    .locals 0
    .param p1, "aScheduleType"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mScheduleType:I

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbFwExceptionDataSv [mClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCrid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mCrid:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFcExecutionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mFcExecutionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScheduleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mScheduleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mResultCode:I

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
    .param p1, "aWriter"    # Landroid/os/Parcel;
    .param p2, "aFlag"    # I

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 191
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mCrid:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 195
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mFcExecutionState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mScheduleType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return-void
.end method
