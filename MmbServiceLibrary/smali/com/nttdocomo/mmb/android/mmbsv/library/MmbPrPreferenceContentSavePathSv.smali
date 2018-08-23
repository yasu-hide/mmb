.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.source "MmbPrPreferenceContentSavePathSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mmbFcContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

.field public mmbRecContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;-><init>()V

    .line 42
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->mmbFcContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    .line 47
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->mmbRecContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    .line 112
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "aParcel"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 86
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->mmbFcContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    .line 87
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->mmbRecContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbPrPreferenceContentSavePathSv [mmbFcContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->mmbFcContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbRecContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->mmbRecContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

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
    .param p1, "aParcel"    # Landroid/os/Parcel;
    .param p2, "aFlag"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->mmbFcContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->mmbRecContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 70
    return-void
.end method
