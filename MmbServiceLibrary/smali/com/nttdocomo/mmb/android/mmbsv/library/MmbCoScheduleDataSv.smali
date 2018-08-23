.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.source "MmbCoScheduleDataSv.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;"
        }
    .end annotation
.end field


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

.field public mmbReserveType:I

.field public mmbScheduleType:I

.field public mmbSeriesId:[Ljava/lang/String;

.field public mmbServiceId:I

.field public mmbTriggerTime:J

.field public mmbWork1:I

.field public mmbWork2:J

.field public mmbWork3:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;-><init>()V

    .line 39
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 41
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 43
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 45
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 47
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    .line 49
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 51
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 53
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 55
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    .line 57
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    .line 59
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    .line 61
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    .line 63
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    .line 65
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    .line 67
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 69
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    .line 71
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public clone()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .locals 2

    .prologue
    .line 233
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-object v0

    .line 238
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->clone()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v0

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "aIn"    # Landroid/os/Parcel;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbCoScheduleDataSv [mmbScheduleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbTriggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbCrid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbReserveType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentPlayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentPlayDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbCntIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbContentMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbServiceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbSeriesId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbWork1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbWork2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbWork3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "aOut"    # Landroid/os/Parcel;
    .param p2, "aFlag"    # I

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 175
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 177
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 178
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 182
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return-void
.end method
