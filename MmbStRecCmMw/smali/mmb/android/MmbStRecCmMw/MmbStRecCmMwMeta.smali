.class public Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
.super Ljava/lang/Object;
.source "MmbStRecCmMwMeta.java"


# instance fields
.field public mCrid:Ljava/lang/String;

.field public mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

.field public mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

.field public mMediaTitleImage:Ljava/lang/String;

.field public mParentalControlInformation:Ljava/lang/String;

.field public mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

.field public mProgramEndTime:J

.field public mProgramStartTime:J

.field public mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

.field public mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

.field public mSubTitle:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mCrid:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mTitle:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mSubTitle:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mMediaTitleImage:Ljava/lang/String;

    .line 44
    iput-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramStartTime:J

    .line 47
    iput-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramEndTime:J

    .line 50
    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    .line 53
    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    .line 56
    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    .line 59
    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mParentalControlInformation:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    .line 65
    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "meta -> mCrid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "mString":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mCrid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, ", mSubTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, ", mMediaTitleImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mMediaTitleImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v1, ", mProgramStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    iget-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 83
    const-string v1, ", mProgramEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 85
    const-string v1, ", mKeyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v1, ", mGenre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v1, ", mProgramSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v1, ", mParentalControlInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mParentalControlInformation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, ", mPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, ", mPurchaseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
