.class public Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;
.super Ljava/lang/Object;
.source "MtvAppProgramAttributes.java"


# static fields
.field public static final ATTRIB_ALL:I = 0xffff

.field public static final ATTRIB_CHANNEL:I = 0x3

.field public static final ATTRIB_NONE:I = 0x0

.field public static final ATTRIB_PRG_NUMBER:I = 0x1

.field public static final ATTRIB_PROGRAM:I = 0x2

.field public static final ATTRIB_SIGNAL_LEVEL:I = 0x10

.field private static final TAG:Ljava/lang/String; = "MtvAppProgramAttributes"


# instance fields
.field private cb:Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

.field private channel:[Landroid/broadcast/helper/types/MtvOneSegChannel;

.field private currChannelName:Ljava/lang/String;

.field private currProgramName:Ljava/lang/String;

.field private currentOpenedChannel:I

.field private currentOpenedChannelServiceId:I

.field private currentProgram:Landroid/broadcast/helper/types/MtvOneSegProgram;

.field private lastScannedChannel:I

.field private prgNumber:I

.field private programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

.field private signal:Landroid/broadcast/helper/types/MtvOneSegSignal;

.field private signalLevel:I

.field private tot:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->init()V

    .line 80
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    .line 64
    iput v2, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->prgNumber:I

    .line 65
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    .line 66
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->currentProgram:Landroid/broadcast/helper/types/MtvOneSegProgram;

    .line 67
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->channel:[Landroid/broadcast/helper/types/MtvOneSegChannel;

    .line 68
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->currProgramName:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->currChannelName:Ljava/lang/String;

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->tot:J

    .line 71
    iput v2, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->signalLevel:I

    .line 72
    iput v2, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->lastScannedChannel:I

    .line 73
    return-void
.end method

.method private updateProgramList()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 240
    iget-wide v4, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->tot:J

    .line 241
    .local v4, "streamTime":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 242
    .local v6, "streamTimeDt":Ljava/util/Date;
    const/4 v0, 0x0

    .line 243
    .local v0, "bRetVal":Z
    iget-object v7, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    if-nez v7, :cond_0

    .line 245
    const-string v7, "MtvAppProgramAttributes"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateProgramList: ProgramList is NULL.! streamTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 289
    .end local v0    # "bRetVal":Z
    .local v1, "bRetVal":I
    :goto_0
    return v1

    .line 248
    .end local v1    # "bRetVal":I
    .restart local v0    # "bRetVal":Z
    :cond_0
    iget-object v7, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    array-length v7, v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    .line 250
    const-string v7, "MtvAppProgramAttributes"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateProgramList: There is only One Program in the List.!!! streamTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 251
    .restart local v1    # "bRetVal":I
    goto :goto_0

    .line 254
    .end local v1    # "bRetVal":I
    :cond_1
    iget-object v7, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    aget-object v7, v7, v10

    if-eqz v7, :cond_3

    .line 267
    iget-object v7, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-lez v7, :cond_3

    .line 269
    iget-object v7, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    new-array v3, v7, [Landroid/broadcast/helper/types/MtvOneSegProgram;

    .line 270
    .local v3, "newProgramList":[Landroid/broadcast/helper/types/MtvOneSegProgram;
    const/4 v2, 0x1

    .local v2, "iLoop":I
    :goto_1
    iget-object v7, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    array-length v7, v7

    if-ge v2, v7, :cond_2

    .line 272
    add-int/lit8 v7, v2, -0x1

    iget-object v8, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    aget-object v8, v8, v2

    aput-object v8, v3, v7

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 274
    :cond_2
    iput-object v3, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    .line 275
    iget-object v7, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    aget-object v7, v7, v10

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setCurrentProgram(Landroid/broadcast/helper/types/MtvOneSegProgram;)V

    .line 276
    const/4 v0, 0x1

    .line 277
    const-string v7, "MtvAppProgramAttributes"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hope You see the New List Now["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] programList Len["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "iLoop":I
    .end local v3    # "newProgramList":[Landroid/broadcast/helper/types/MtvOneSegProgram;
    :cond_3
    move v1, v0

    .line 289
    .restart local v1    # "bRetVal":I
    goto/16 :goto_0
.end method


# virtual methods
.method public getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->channel:[Landroid/broadcast/helper/types/MtvOneSegChannel;

    return-object v0
.end method

.method public getCurrentChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->currChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentOpenedChannel()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->currentOpenedChannel:I

    return v0
.end method

.method public getCurrentOpenedChannelServiceId()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->currentOpenedChannelServiceId:I

    return v0
.end method

.method public getCurrentProgram()Landroid/broadcast/helper/types/MtvOneSegProgram;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->currentProgram:Landroid/broadcast/helper/types/MtvOneSegProgram;

    return-object v0
.end method

.method public getCurrentProgramName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->currProgramName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastScannedChannel()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->lastScannedChannel:I

    return v0
.end method

.method public getPrgNumber()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->prgNumber:I

    return v0
.end method

.method public getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    return-object v0
.end method

.method public getSignalLevel()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->signalLevel:I

    return v0
.end method

.method public getSignalStatistics()Landroid/broadcast/helper/types/MtvOneSegSignal;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->signal:Landroid/broadcast/helper/types/MtvOneSegSignal;

    return-object v0
.end method

.method public getTot()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->tot:J

    return-wide v0
.end method

.method public declared-synchronized registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setChannel([Landroid/broadcast/helper/types/MtvOneSegChannel;)V
    .locals 2
    .param p1, "obj"    # [Landroid/broadcast/helper/types/MtvOneSegChannel;

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->channel:[Landroid/broadcast/helper/types/MtvOneSegChannel;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;->onProgramAttributeUpdated(I)V

    .line 173
    :cond_1
    return-void
.end method

.method public setCurrentChannelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelName"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->currChannelName:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setCurrentOpenedChannel(I)V
    .locals 3
    .param p1, "channel"    # I

    .prologue
    .line 223
    const-string v0, "MtvAppProgramAttributes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentOpenedChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iput p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->currentOpenedChannel:I

    .line 225
    return-void
.end method

.method public setCurrentOpenedChannelServiceId(I)V
    .locals 3
    .param p1, "serviceId"    # I

    .prologue
    .line 233
    const-string v0, "MtvAppProgramAttributes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentOpenedChannelServiceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iput p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->currentOpenedChannelServiceId:I

    .line 235
    return-void
.end method

.method public setCurrentProgram(Landroid/broadcast/helper/types/MtvOneSegProgram;)V
    .locals 0
    .param p1, "program"    # Landroid/broadcast/helper/types/MtvOneSegProgram;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->currentProgram:Landroid/broadcast/helper/types/MtvOneSegProgram;

    .line 141
    return-void
.end method

.method public setCurrentProgramName(Ljava/lang/String;)V
    .locals 0
    .param p1, "program"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->currProgramName:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setLastScannedChannel(I)V
    .locals 0
    .param p1, "lastScanChannel"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->lastScannedChannel:I

    .line 213
    return-void
.end method

.method public setPrgNumber(I)V
    .locals 0
    .param p1, "prgNumber"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->prgNumber:I

    .line 115
    return-void
.end method

.method public setProgram([Landroid/broadcast/helper/types/MtvOneSegProgram;)V
    .locals 2
    .param p1, "program"    # [Landroid/broadcast/helper/types/MtvOneSegProgram;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    .line 128
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setCurrentProgram(Landroid/broadcast/helper/types/MtvOneSegProgram;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;->onProgramAttributeUpdated(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public setSignalLevel(I)V
    .locals 2
    .param p1, "signalLevel"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->signalLevel:I

    .line 194
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;->onProgramAttributeUpdated(I)V

    .line 197
    :cond_0
    return-void
.end method

.method public setSignalStatistics(Landroid/broadcast/helper/types/MtvOneSegSignal;)V
    .locals 0
    .param p1, "sigStat"    # Landroid/broadcast/helper/types/MtvOneSegSignal;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->signal:Landroid/broadcast/helper/types/MtvOneSegSignal;

    .line 201
    return-void
.end method

.method public setTot(J)V
    .locals 3
    .param p1, "tot"    # J

    .prologue
    .line 180
    iput-wide p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->tot:J

    .line 182
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->programList:[Landroid/broadcast/helper/types/MtvOneSegProgram;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->updateProgramList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;->onProgramAttributeUpdated(I)V

    .line 186
    :cond_0
    return-void
.end method

.method public declared-synchronized unregisterListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
