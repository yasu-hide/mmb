.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.source "MmbSiBroadcasterDataSv.java"


# static fields
.field public static final CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mmbBroadcasterId:S

.field public mmbBroadcasterName:Ljava/lang/String;

.field public mmbServiceDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    .line 53
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "aIn"    # Landroid/os/Parcel;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbSiBroadcasterDataSv [mmbBroadcasterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbBroadcasterName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbServiceDataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

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
    .line 125
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    iget-short v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 134
    return-void
.end method
