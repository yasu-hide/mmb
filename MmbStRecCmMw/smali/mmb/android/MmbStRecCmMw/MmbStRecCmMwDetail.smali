.class public Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;
.super Ljava/lang/Object;
.source "MmbStRecCmMwDetail.java"


# instance fields
.field public mCrId:Ljava/lang/String;

.field public mFileSize:J

.field public mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

.field public mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

.field public mMediaTitleImage:Ljava/lang/String;

.field public mParentalControlInformation:Ljava/lang/String;

.field public mPlayCheckResult:I

.field public mPrgNo:I

.field public mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

.field public mProgramEndTime:J

.field public mProgramStartTime:J

.field public mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

.field public mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

.field public mRecordingRate:I

.field public mRecordingStartTime:J

.field public mRecordingTime:J

.field public mServiceId:I

.field public mSubTitle:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPrgNo:I

    .line 37
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mCrId:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPlayCheckResult:I

    .line 43
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mTitle:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mSubTitle:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mMediaTitleImage:Ljava/lang/String;

    .line 52
    iput-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mProgramStartTime:J

    .line 55
    iput-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mProgramEndTime:J

    .line 58
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    .line 61
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    .line 64
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    .line 67
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mParentalControlInformation:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    .line 73
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    .line 76
    iput-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mRecordingStartTime:J

    .line 79
    iput-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mRecordingTime:J

    .line 82
    iput v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mRecordingRate:I

    .line 85
    iput-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mFileSize:J

    .line 88
    iput v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mServiceId:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Detai -> mPrgNo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "mString":Ljava/lang/StringBuffer;
    iget v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPrgNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 98
    const-string v1, ", mCrId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mCrId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v1, ", mPlayCheckResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    iget v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPlayCheckResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 102
    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v1, ", mSubTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v1, ", mMediaTitleImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mMediaTitleImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, ", mProgramStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mProgramStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 110
    const-string v1, ", mProgramEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    iget-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mProgramEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 112
    const-string v1, ", mKeyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v1, ", mGenre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const-string v1, ", mProgramSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v1, ", mParentalControlInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mParentalControlInformation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v1, ", mPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 122
    const-string v1, ", mPurchaseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, ", mRecordingStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    iget-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mRecordingStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, ", mRecordingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    iget-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mRecordingTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, ", mRecordingRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mRecordingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, ", mFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mFileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 132
    const-string v1, ", mServiceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    iget v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
