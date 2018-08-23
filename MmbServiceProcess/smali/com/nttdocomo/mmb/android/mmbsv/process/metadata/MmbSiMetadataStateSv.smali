.class Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;
.super Ljava/lang/Object;
.source "MmbSiMetadataStateSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;
    }
.end annotation


# instance fields
.field private callType:I

.field private condwait:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

.field private loopCount:I

.field private maxLoop:I

.field private metaDataState:I

.field private possibleRetry:Z

.field private scheduleEnable:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "aMetaDataState"    # I

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->condwait:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    .line 151
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 155
    return-void
.end method


# virtual methods
.method public getCallType()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->callType:I

    return v0
.end method

.method public getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->condwait:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->loopCount:I

    return v0
.end method

.method public getMaxLoop()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->maxLoop:I

    return v0
.end method

.method public getMetaDataState()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->metaDataState:I

    return v0
.end method

.method public getPossibleRetry()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->possibleRetry:Z

    return v0
.end method

.method initialize(I)V
    .locals 1
    .param p1, "aMetaDataState"    # I

    .prologue
    const/4 v0, 0x0

    .line 622
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->metaDataState:I

    .line 623
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->loopCount:I

    .line 624
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->maxLoop:I

    .line 625
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->scheduleEnable:Z

    .line 626
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->possibleRetry:Z

    .line 627
    const/4 v0, 0x2

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->callType:I

    .line 628
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->updateCondWait()V

    .line 632
    return-void
.end method

.method public setCallType(I)V
    .locals 1
    .param p1, "aCallType"    # I

    .prologue
    .line 554
    packed-switch p1, :pswitch_data_0

    .line 561
    const/4 v0, 0x2

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->callType:I

    .line 567
    :goto_0
    return-void

    .line 558
    :pswitch_0
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->callType:I

    goto :goto_0

    .line 554
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setLoopCount(I)V
    .locals 0
    .param p1, "aLoopCount"    # I

    .prologue
    .line 370
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->loopCount:I

    .line 374
    return-void
.end method

.method public setMaxLoop(I)V
    .locals 0
    .param p1, "aMaxLoop"    # I

    .prologue
    .line 414
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->maxLoop:I

    .line 418
    return-void
.end method

.method public setMetaDataState(I)V
    .locals 1
    .param p1, "aMetaDataState"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->metaDataState:I

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->possibleRetry:Z

    .line 265
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->updateCondWait()V

    .line 269
    return-void
.end method

.method public setMetaDataState(IZ)V
    .locals 0
    .param p1, "aMetaDataState"    # I
    .param p2, "aPossibleRetry"    # Z

    .prologue
    .line 324
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->metaDataState:I

    .line 325
    iput-boolean p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->possibleRetry:Z

    .line 326
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->updateCondWait()V

    .line 330
    return-void
.end method

.method public setPossibleRetry(Z)V
    .locals 0
    .param p1, "aPossibleRetry"    # Z

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->possibleRetry:Z

    .line 506
    return-void
.end method

.method public setScheduleEnable(Z)V
    .locals 0
    .param p1, "aScheduleEnable"    # Z

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->scheduleEnable:Z

    .line 462
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbSiMetadataStateSv [metaDataState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->metaDataState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loopCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->loopCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxLoop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->maxLoop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scheduleEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->scheduleEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", possibleRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->possibleRetry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->callType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateCondWait()V
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->metaDataState:I

    packed-switch v0, :pswitch_data_0

    .line 678
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->condwait:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->signal()Z

    .line 680
    :goto_0
    return-void

    .line 675
    :pswitch_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->condwait:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->clear()V

    goto :goto_0

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
