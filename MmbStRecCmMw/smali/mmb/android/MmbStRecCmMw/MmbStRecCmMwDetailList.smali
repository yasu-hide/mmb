.class public Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;
.super Ljava/lang/Object;
.source "MmbStRecCmMwDetailList.java"


# instance fields
.field public mCrId:Ljava/lang/String;

.field public mMediaTitleImage:Ljava/lang/String;

.field public mParentalControlInformation:Ljava/lang/String;

.field public mPlayCheckResult:I

.field public mPrgNo:I

.field public mProgramEndTime:J

.field public mProgramStartTime:J

.field public mRecordingRate:I

.field public mRecordingTime:J

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
    iput v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mPrgNo:I

    .line 37
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mCrId:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mPlayCheckResult:I

    .line 43
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mTitle:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mSubTitle:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mMediaTitleImage:Ljava/lang/String;

    .line 52
    iput-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mProgramStartTime:J

    .line 55
    iput-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mProgramEndTime:J

    .line 58
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mParentalControlInformation:Ljava/lang/String;

    .line 61
    iput-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mRecordingTime:J

    .line 64
    iput v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mRecordingRate:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "DetailList -> mPrgNo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "mString":Ljava/lang/StringBuffer;
    iget v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mPrgNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, ", mCrId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mCrId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, ", mPlayCheckResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    iget v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mPlayCheckResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v1, ", mSubTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v1, ", mMediaTitleImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mMediaTitleImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v1, ", mProgramStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    iget-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mProgramStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 86
    const-string v1, ", mProgramEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mProgramEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 88
    const-string v1, ", mParentalControlInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mParentalControlInformation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, ", mRecordingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mRecordingTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, ", mRecordingRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mRecordingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
