.class public Lcom/samsung/sec/mtv/provider/MtvFile;
.super Ljava/lang/Object;
.source "MtvFile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TV_FILE_FORMAT_JPEG:I = 0x2

.field public static final TV_FILE_FORMAT_MP4:I = 0x0

.field public static final TV_FILE_FORMAT_TS:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected channelName:Ljava/lang/String;

.field protected creationTime:Ljava/util/Date;

.field protected durationOfRecording:I

.field protected fileFormat:I

.field protected filePath:Ljava/lang/String;

.field protected fileSize:J

.field protected index:I

.field protected isLATM:I

.field protected pidOfAudio:I

.field protected pidOfVideo:I

.field protected programName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->index:I

    .line 34
    iput-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->channelName:Ljava/lang/String;

    .line 35
    iput-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->programName:Ljava/lang/String;

    .line 36
    iput-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->creationTime:Ljava/util/Date;

    .line 37
    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->durationOfRecording:I

    .line 38
    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->fileFormat:I

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->fileSize:J

    .line 40
    iput-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->filePath:Ljava/lang/String;

    .line 41
    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->pidOfVideo:I

    .line 42
    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->pidOfAudio:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->isLATM:I

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 58
    instance-of v1, p1, Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 60
    check-cast v0, Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 62
    .local v0, "mtvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    iget-object v1, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x1

    .line 65
    .end local v0    # "mtvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->creationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDurationOfRecording()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->durationOfRecording:I

    return v0
.end method

.method public getFileFormat()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->fileFormat:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->fileSize:J

    return-wide v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->index:I

    return v0
.end method

.method public getIsLATM()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->isLATM:I

    return v0
.end method

.method public getPidOfAudio()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->pidOfAudio:I

    return v0
.end method

.method public getPidOfVideo()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->pidOfVideo:I

    return v0
.end method

.method public getProgramName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->programName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 49
    const/16 v0, 0x1f

    .line 50
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 51
    .local v1, "result":I
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->filePath:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 53
    return v1

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->filePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelName"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->channelName:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setCreationTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "creationTime"    # Ljava/util/Date;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->creationTime:Ljava/util/Date;

    .line 211
    return-void
.end method

.method public setFileFormat(I)V
    .locals 0
    .param p1, "fileFormat"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->fileFormat:I

    .line 206
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->filePath:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setProgramName(Ljava/lang/String;)V
    .locals 0
    .param p1, "programName"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->programName:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    const-string v0, "MtvFile"

    .line 71
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->fileFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->fileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", creationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->creationTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", durationOfRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->durationOfRecording:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", filePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pidOfVideo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->pidOfVideo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pidOfAudio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->pidOfAudio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", channelName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->channelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", programName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->programName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLATM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvFile;->isLATM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    return-object v0
.end method
