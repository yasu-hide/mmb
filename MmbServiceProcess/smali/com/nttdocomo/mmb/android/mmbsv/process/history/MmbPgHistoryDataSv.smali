.class public Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;
.super Ljava/lang/Object;
.source "MmbPgHistoryDataSv.java"


# instance fields
.field public mmbCategory:I

.field public mmbCrid:Ljava/lang/String;

.field public mmbReason:I

.field public mmbTimeMS:J

.field public mmbTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbCategory:I

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbCrid:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbTitle:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbReason:I

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbTimeMS:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbPgHistoryDataSv [mmbCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbCrid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbTimeMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbTimeMS:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
