.class public abstract Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.super Ljava/lang/Object;
.source "MmbFwParameterSv.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDescribeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->getId(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->mDescribeId:I

    .line 64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->mDescribeId:I

    .line 86
    .local v0, "result":I
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "aIn"    # Landroid/os/Parcel;

    .prologue
    .line 138
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "aOut"    # Landroid/os/Parcel;
    .param p2, "aFlag"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->describeContents()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return-void
.end method
