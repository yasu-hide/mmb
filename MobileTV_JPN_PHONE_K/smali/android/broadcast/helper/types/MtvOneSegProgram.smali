.class public Landroid/broadcast/helper/types/MtvOneSegProgram;
.super Ljava/lang/Object;
.source "MtvOneSegProgram.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/broadcast/helper/types/MtvOneSegProgram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IsProgDescValid:I

.field private IsProgValid:I

.field private endTime:Ljava/util/Date;

.field private eventID:I

.field private progDesc:Ljava/lang/String;

.field private progName:Ljava/lang/String;

.field private serviceID:I

.field private startTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Landroid/broadcast/helper/types/MtvOneSegProgram$1;

    invoke-direct {v0}, Landroid/broadcast/helper/types/MtvOneSegProgram$1;-><init>()V

    sput-object v0, Landroid/broadcast/helper/types/MtvOneSegProgram;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->eventID:I

    .line 27
    iput v1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->serviceID:I

    .line 28
    iput-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progName:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progDesc:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->startTime:Ljava/util/Date;

    .line 31
    iput-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->endTime:Ljava/util/Date;

    .line 32
    iput v2, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgValid:I

    .line 33
    iput v2, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgDescValid:I

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->eventID:I

    .line 27
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->serviceID:I

    .line 28
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progName:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progDesc:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->startTime:Ljava/util/Date;

    .line 31
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->endTime:Ljava/util/Date;

    .line 32
    iput v2, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgValid:I

    .line 33
    iput v2, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgDescValid:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->eventID:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->serviceID:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgValid:I

    .line 93
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgValid:I

    if-ne v0, v3, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progName:Ljava/lang/String;

    .line 97
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgDescValid:I

    .line 98
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgDescValid:I

    if-ne v0, v3, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progDesc:Ljava/lang/String;

    .line 102
    :goto_1
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->startTime:Ljava/util/Date;

    .line 103
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->endTime:Ljava/util/Date;

    .line 104
    return-void

    .line 96
    :cond_0
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progName:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_1
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progDesc:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getEventID()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->eventID:I

    return v0
.end method

.method public getProgDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceID()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->serviceID:I

    return v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "mEndTime"    # Ljava/util/Date;

    .prologue
    .line 80
    iput-object p1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->endTime:Ljava/util/Date;

    .line 81
    return-void
.end method

.method public setEventID(I)V
    .locals 0
    .param p1, "mEventId"    # I

    .prologue
    .line 60
    iput p1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->eventID:I

    .line 61
    return-void
.end method

.method public setProgDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mProgDesc"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progDesc:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setProgramName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mProgramName"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setServiceID(I)V
    .locals 0
    .param p1, "mServiceId"    # I

    .prologue
    .line 64
    iput p1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->serviceID:I

    .line 65
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "mStartTime"    # Ljava/util/Date;

    .prologue
    .line 76
    iput-object p1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->startTime:Ljava/util/Date;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    const-string v0, ""

    .line 150
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[startTime] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->startTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[end] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->endTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[eventID] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->eventID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[serviceID] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->serviceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[progName] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[progDesc] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progDesc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 108
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->eventID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->serviceID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 112
    iput v1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgValid:I

    .line 113
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgValid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    :goto_0
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progDesc:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 123
    iput v1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgDescValid:I

    .line 124
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgDescValid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->progDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    :goto_1
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->startTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->endTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgValid:I

    .line 118
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgValid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 128
    :cond_1
    iput v1, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgDescValid:I

    .line 129
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegProgram;->IsProgDescValid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
