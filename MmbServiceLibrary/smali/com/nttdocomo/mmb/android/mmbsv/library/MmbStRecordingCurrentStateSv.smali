.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.source "MmbStRecordingCurrentStateSv.java"


# instance fields
.field public mmbCrid:Ljava/lang/String;

.field public mmbServiceId:I

.field public mmbState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;-><init>()V

    .line 36
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbState:I

    .line 38
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbServiceId:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbCrid:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "aParcel"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbState:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbServiceId:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbCrid:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "aParcel"    # Landroid/os/Parcel;
    .param p2, "aFlag"    # I

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbServiceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return-void
.end method
