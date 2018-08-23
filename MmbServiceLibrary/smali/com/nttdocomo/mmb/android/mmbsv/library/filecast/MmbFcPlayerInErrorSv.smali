.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInErrorSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;
.source "MmbFcPlayerInErrorSv.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;-><init>()V

    return-void
.end method


# virtual methods
.method public chapterForward()I
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public chapterRewind()I
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public end()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public fastForward(I)I
    .locals 1
    .param p1, "aExtra"    # I

    .prologue
    .line 233
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public getModuleState()I
    .locals 1

    .prologue
    .line 379
    const/16 v0, 0x9

    return v0
.end method

.method public onEnter()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onLeave()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public pause()I
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public resetFcMp4Content()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public rewind(I)I
    .locals 1
    .param p1, "aExtra"    # I

    .prologue
    .line 254
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public seek(I)I
    .locals 1
    .param p1, "aMsec"    # I

    .prologue
    .line 313
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public setFcMp4Content(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aEntityId"    # Ljava/lang/String;
    .param p3, "aParam"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;
    .param p4, "aScheduleEnable"    # Z
    .param p5, "aSchedule"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    .prologue
    .line 133
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public suspend()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method
