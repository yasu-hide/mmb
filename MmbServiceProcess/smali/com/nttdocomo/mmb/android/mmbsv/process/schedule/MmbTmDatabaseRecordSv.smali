.class Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
.super Ljava/lang/Object;
.source "MmbTmDatabaseRecordSv.java"


# instance fields
.field public mmbCntIndex:Ljava/lang/String;

.field public mmbContentEndTime:J

.field public mmbContentMedia:I

.field public mmbContentPlayDate:J

.field public mmbContentPlayTime:J

.field public mmbContentStartTime:J

.field public mmbContentTitle:Ljava/lang/String;

.field public mmbCrid:Ljava/lang/String;

.field public mmbHistory:I

.field public mmbId:I

.field public mmbIntentClassName:Ljava/lang/String;

.field public mmbIntentPackageName:Ljava/lang/String;

.field public mmbRepeatFlag:I

.field public mmbReserveType:I

.field public mmbReservedPackageName:Ljava/lang/String;

.field public mmbScheduleType:I

.field public mmbSeriesId:[Ljava/lang/String;

.field public mmbServiceId:I

.field public mmbTimeStamp:J

.field public mmbTimerFinishFlag:I

.field public mmbTriggerTime:J

.field public mmbWork1:I

.field public mmbWork2:J

.field public mmbWork3:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    .line 33
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    .line 35
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    .line 37
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    .line 39
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    .line 41
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbHistory:I

    .line 45
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentPackageName:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentClassName:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    .line 51
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReserveType:I

    .line 53
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentTitle:Ljava/lang/String;

    .line 55
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentStartTime:J

    .line 57
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentEndTime:J

    .line 59
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentPlayTime:J

    .line 61
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentPlayDate:J

    .line 63
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCntIndex:Ljava/lang/String;

    .line 65
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentMedia:I

    .line 67
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbServiceId:I

    .line 69
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork1:I

    .line 73
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork2:J

    .line 75
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork3:Ljava/lang/String;

    .line 77
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimeStamp:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbTmDatabaseRecordSv [mmbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbScheduleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbTriggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbRepeatFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbTimerFinishFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbCrid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbHistory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbIntentPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbIntentClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbReservedPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbReserveType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReserveType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentPlayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentPlayTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentPlayDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentPlayDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbCntIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCntIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbServiceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbSeriesId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbWork1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbWork2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork2:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbWork3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
