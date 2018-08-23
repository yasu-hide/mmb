.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.source "MmbCoSeriesReserveDataSv.java"


# static fields
.field public static final CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mmbReservedPackageName:Ljava/lang/String;

.field public mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

.field public mmbSeriesFcScheduleData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mmbSeriesStIntentClassName:Ljava/lang/String;

.field public mmbSeriesStIntentPackageName:Ljava/lang/String;

.field public mmbSeriesStScheduleData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    .line 43
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesFcScheduleData:Ljava/util/List;

    .line 47
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentPackageName:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentClassName:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbReservedPackageName:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "aIn"    # Landroid/os/Parcel;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesFcScheduleData:Ljava/util/List;

    .line 105
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    .line 106
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 107
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesFcScheduleData:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentPackageName:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentClassName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbReservedPackageName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbCoSeriesReserveDataSv [mmbSeriesData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbSeriesStScheduleData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbSeriesFcScheduleData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesFcScheduleData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbSeriesStIntentPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbSeriesStIntentClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbReservedPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbReservedPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 137
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 140
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 141
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesFcScheduleData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 142
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbReservedPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    return-void
.end method
