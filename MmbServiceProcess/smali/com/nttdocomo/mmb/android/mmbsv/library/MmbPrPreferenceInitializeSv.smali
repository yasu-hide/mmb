.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.source "MmbPrPreferenceInitializeSv.java"


# static fields
.field public static final CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoCompletion:I

.field private mAutoFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;

.field private mBmlDisplay:I

.field private mCaptionInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;

.field private mCompInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

.field private mFcBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;

.field private mParentalInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;

.field private mThumbnail:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;-><init>()V

    .line 37
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mCaptionInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;

    .line 41
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mParentalInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;

    .line 45
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mCompInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    .line 49
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mAutoCompletion:I

    .line 53
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mAutoFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;

    .line 57
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mThumbnail:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    .line 61
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mFcBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;

    .line 65
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mBmlDisplay:I

    .line 88
    return-void
.end method


# virtual methods
.method public getAutoCompletion()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mAutoCompletion:I

    return v0
.end method

.method public getAutoFuncInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mAutoFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;

    return-object v0
.end method

.method public getBmlBrowser()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mBmlDisplay:I

    return v0
.end method

.method public getCaptionInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mCaptionInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;

    return-object v0
.end method

.method public getComplementInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mCompInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    return-object v0
.end method

.method public getFcBrowserInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mFcBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;

    return-object v0
.end method

.method public getParentalInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mParentalInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;

    return-object v0
.end method

.method public getThumbnailSize()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mThumbnail:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "aParcel"    # Landroid/os/Parcel;

    .prologue
    .line 680
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 684
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mCaptionInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;

    .line 687
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mParentalInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;

    .line 690
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mCompInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    .line 693
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mAutoCompletion:I

    .line 694
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mAutoFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;

    .line 697
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mThumbnail:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    .line 700
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mFcBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;

    .line 704
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mBmlDisplay:I

    .line 708
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "aParcel"    # Landroid/os/Parcel;
    .param p2, "aFlag"    # I

    .prologue
    .line 654
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 658
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mCaptionInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 659
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mParentalInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 660
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mCompInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 661
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mAutoCompletion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mAutoFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 663
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mThumbnail:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 664
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mFcBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 665
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mBmlDisplay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    return-void
.end method
