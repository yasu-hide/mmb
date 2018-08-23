.class public Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
.super Ljava/lang/Object;
.source "MmbTmSearchKeywordSv.java"


# instance fields
.field public mmbContentEndTime:J

.field public mmbContentMedia:I

.field public mmbContentPlayDate:J

.field public mmbContentPlayTime:J

.field public mmbContentStartTime:J

.field public mmbContentTitle:Ljava/lang/String;

.field public mmbCrid:Ljava/lang/String;

.field public mmbHistory:I

.field public mmbPackageName:Ljava/lang/String;

.field public mmbReserveType:I

.field public mmbScheduleType:I

.field public mmbServiceId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x3e7

    const/16 v0, -0x3e7

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 37
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 39
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbHistory:I

    .line 41
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbReserveType:I

    .line 43
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentMedia:I

    .line 45
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbServiceId:I

    .line 47
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentTitle:Ljava/lang/String;

    .line 51
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentStartTime:J

    .line 53
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentEndTime:J

    .line 55
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentPlayTime:J

    .line 57
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentPlayDate:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbTmSearchKeywordSv [mmbScheduleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbCrid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbHistory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbReserveType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbReserveType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbServiceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentPlayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentPlayTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentPlayDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentPlayDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
