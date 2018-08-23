.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwGetRepairInformationSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_GET_REPAIR_INFORMATION"


# instance fields
.field private contentsCrid:Ljava/lang/String;

.field private repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aContentsCrid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 49
    const-string v0, "MESSAGE_MMBFCCONTMW_GET_REPAIR_INFORMATION"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 37
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->contentsCrid:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    .line 50
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->contentsCrid:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method protected doReceiveData(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 73
    .local v0, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->readFile(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->deleteFile(Ljava/lang/String;)V

    .line 78
    return-void

    .line 76
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->deleteFile(Ljava/lang/String;)V

    throw v1
.end method

.method protected doSendData(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->contentsCrid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public getRepairInformation()Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    return-object v0
.end method

.method protected readFile(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x100

    .line 83
    new-instance v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    invoke-direct {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;-><init>()V

    iput-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    .line 84
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    invoke-virtual {p0, p1, v8}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->crid:Ljava/lang/String;

    .line 86
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->readBoolean(Ljava/io/InputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->allRepair:Z

    .line 89
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 90
    .local v2, "countRepairParts":I
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    new-array v6, v2, [Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    iput-object v6, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->repairParts:[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    .line 91
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 92
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->repairParts:[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    new-instance v6, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    invoke-direct {v6}, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;-><init>()V

    aput-object v6, v5, v3

    .line 93
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->repairParts:[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    aget-object v5, v5, v3

    invoke-virtual {p0, p1, v8}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->contentLocation:Ljava/lang/String;

    .line 96
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 97
    .local v0, "countMissingParts":I
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->repairParts:[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    aget-object v5, v5, v3

    new-array v6, v0, [Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    iput-object v6, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    .line 98
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 99
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->repairParts:[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    aget-object v5, v5, v3

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    new-instance v6, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    invoke-direct {v6}, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;-><init>()V

    aput-object v6, v5, v4

    .line 100
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->repairParts:[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    aget-object v5, v5, v3

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    aget-object v5, v5, v4

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v5, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    .line 101
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->repairParts:[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    aget-object v5, v5, v3

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    aget-object v5, v5, v4

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v5, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->size:J

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 91
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "countMissingParts":I
    .end local v4    # "j":I
    :cond_1
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 107
    .local v1, "countReceptionSchedule":I
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    new-array v6, v1, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    iput-object v6, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    .line 108
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    .line 109
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    new-instance v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    invoke-direct {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;-><init>()V

    aput-object v6, v5, v3

    .line 110
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    aget-object v5, v5, v3

    invoke-virtual {p0, p1, v8}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->uri:Ljava/lang/String;

    .line 111
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    aget-object v5, v5, v3

    new-instance v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    invoke-direct {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;-><init>()V

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->receptionTime:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    .line 112
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    aget-object v5, v5, v3

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->receptionTime:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;->startTime:J

    .line 113
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->repair:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    aget-object v5, v5, v3

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->receptionTime:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;->endTime:J

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 115
    :cond_2
    return-void
.end method
