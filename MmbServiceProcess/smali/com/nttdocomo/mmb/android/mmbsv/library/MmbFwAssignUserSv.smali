.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.source "MmbFwAssignUserSv.java"


# static fields
.field public static final CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mmbIntentClassName:Ljava/lang/String;

.field public mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;-><init>()V

    .line 45
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbIntentClassName:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbResourceId:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "aIn"    # Landroid/os/Parcel;

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 286
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbIntentClassName:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbFwAssignUserSv [mmbResourceUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbIntentClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbIntentClassName:Ljava/lang/String;

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
    .line 262
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 266
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbIntentClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    return-void
.end method
