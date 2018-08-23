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

.field public static final MAX_CONTENTS_SIZE_MB:I = 0x1000


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

.method private isCaptionSuperValue(I)Z
    .locals 2
    .param p1, "aCaptionDisplay"    # I

    .prologue
    .line 563
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 565
    :cond_0
    const/4 v0, 0x1

    .line 573
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 568
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isFlagValue(I)Z
    .locals 2
    .param p1, "aFlag"    # I

    .prologue
    .line 532
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 534
    :cond_0
    const/4 v0, 0x1

    .line 542
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 537
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isParentalControlRate(I)Z
    .locals 2
    .param p1, "aParentalControlRate"    # I

    .prologue
    .line 625
    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    const/16 v1, 0x14

    if-gt p1, v1, :cond_0

    .line 628
    const/4 v0, 0x1

    .line 640
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 630
    .end local v0    # "ret":Z
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 632
    const/4 v0, 0x1

    .restart local v0    # "ret":Z
    goto :goto_0

    .line 635
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isSuperImposeLanguageValue(I)Z
    .locals 2
    .param p1, "aCaptionLanguage"    # I

    .prologue
    .line 594
    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 596
    :cond_0
    const/4 v0, 0x1

    .line 604
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 599
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isThresholdValue(II)Z
    .locals 2
    .param p1, "aSize"    # I
    .param p2, "aRate"    # I

    .prologue
    .line 204
    const/4 v0, 0x1

    .line 205
    .local v0, "result":Z
    if-ltz p1, :cond_0

    const/16 v1, 0x1000

    if-gt p1, v1, :cond_0

    if-ltz p2, :cond_0

    const/16 v1, 0x64

    if-le p2, v1, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 209
    :cond_1
    return v0
.end method

.method private isUpdateTimeValue(I)Z
    .locals 2
    .param p1, "aTime"    # I

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 324
    .local v0, "result":Z
    if-ltz p1, :cond_0

    const/4 v1, 0x3

    if-gt p1, v1, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 328
    :cond_0
    return v0
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

.method public setAutoComplement(I)V
    .locals 3
    .param p1, "aAutoCompletion"    # I

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isFlagValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 263
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 264
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    throw v0

    .line 268
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_0
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mAutoCompletion:I

    .line 272
    return-void
.end method

.method public setAutoFuncInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;)V
    .locals 3
    .param p1, "aAutoFunc"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;

    .prologue
    .line 346
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoReceive:I

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isFlagValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoLicence:I

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isFlagValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoSendLog:I

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isFlagValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbEpgUpdateTime:I

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isUpdateTimeValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForRecommend:I

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isFlagValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForAutoReceive:I

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isFlagValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForForceReceive:I

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isFlagValue(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 356
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    throw v0

    .line 360
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_1
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mAutoFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;

    .line 364
    return-void
.end method

.method public setBmlBrowser(I)V
    .locals 3
    .param p1, "aDisplay"    # I

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isFlagValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 486
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    throw v0

    .line 490
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_0
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mBmlDisplay:I

    .line 494
    return-void
.end method

.method public setCaptionInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;)V
    .locals 3
    .param p1, "aCaptionInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;

    .prologue
    .line 105
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;->mmbCaption:I

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isCaptionSuperValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;->mmbCaptionLanguage:I

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isSuperImposeLanguageValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;->mmbSuperimpose:I

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isCaptionSuperValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;->mmbSuperimposeLanguage:I

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isSuperImposeLanguageValue(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 114
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    throw v0

    .line 118
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_1
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mCaptionInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;

    .line 122
    return-void
.end method

.method public setComplementInfo(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;)V
    .locals 3
    .param p1, "aAutoCompletion"    # I
    .param p2, "aThreshold"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    .prologue
    .line 230
    iget v1, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbSize:I

    iget v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbRate:I

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isThresholdValue(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbSizeLte:I

    iget v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbRateLte:I

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isThresholdValue(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isFlagValue(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 234
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 235
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    throw v0

    .line 239
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_1
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mAutoCompletion:I

    .line 240
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mCompInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    .line 244
    return-void
.end method

.method public setFcBrowserInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;)V
    .locals 2
    .param p1, "aBrowser"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;

    .prologue
    .line 439
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;->mmbCookie:I

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isFlagValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;->mmbReferer:I

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isFlagValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;->mmbJavaScript:I

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isFlagValue(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    :cond_0
    const-string v0, "Parametor Erorr"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 445
    :cond_1
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mFcBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;

    .line 449
    return-void
.end method

.method public setParentalInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;)V
    .locals 3
    .param p1, "aParentalInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;

    .prologue
    .line 157
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;->mmbParentalCtrl:I

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isFlagValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;->mmbParentalRate:I

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->isParentalControlRate(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 162
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    throw v0

    .line 166
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_1
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mParentalInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;

    .line 170
    return-void
.end method

.method public setThumbnailSize(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;)V
    .locals 2
    .param p1, "aThumbnail"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    .prologue
    .line 397
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;->mmbHeight:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;->mmbWidth:I

    if-gtz v0, :cond_1

    .line 398
    :cond_0
    const-string v0, "Parametor Erorr"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 402
    :cond_1
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->mThumbnail:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    .line 406
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
