.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.source "MmbCoScheduleIntentDataSv.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCHEDULE_INTENT_NAME:Ljava/lang/String; = "MmbCoScheduleIntentDataSv"


# instance fields
.field public mmbIntentClassName:Ljava/lang/String;

.field public mmbIntentPackageName:Ljava/lang/String;

.field public mmbPackageName:Ljava/lang/String;

.field public mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 44
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbPackageName:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbIntentPackageName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbIntentClassName:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public clone()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .locals 2

    .prologue
    .line 178
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-object v0

    .line 183
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->clone()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    move-result-object v0

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "aIn"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 99
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbPackageName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbIntentPackageName:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbIntentClassName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbCoScheduleIntentDataSv [mmbScheduleData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbIntentPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbIntentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbIntentClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbIntentClassName:Ljava/lang/String;

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
    .line 130
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 133
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbIntentPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbIntentClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return-void
.end method
