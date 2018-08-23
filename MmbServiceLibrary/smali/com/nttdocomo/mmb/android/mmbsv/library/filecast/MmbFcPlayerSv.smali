.class public interface abstract Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;
.super Ljava/lang/Object;
.source "MmbFcPlayerSv.java"


# virtual methods
.method public abstract end()V
.end method

.method public abstract getChapterInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerChapterInfoSv;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentPlayPosition()I
.end method

.method public abstract getFileDuration()I
.end method

.method public abstract getModuleState()I
.end method

.method public abstract getPlaySpeed()I
.end method

.method public abstract getRoundPlaying()Z
.end method

.method public abstract getTrickPlayEnable()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract isResumeInfoExist(Ljava/lang/String;)Z
.end method

.method public abstract play()V
.end method

.method public abstract resetFcMp4Content()V
.end method

.method public abstract resume()V
.end method

.method public abstract seek(I)I
.end method

.method public abstract setAudioSapMode(I)V
.end method

.method public abstract setCaption(I)V
.end method

.method public abstract setEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;)V
.end method

.method public abstract setFcMp4Content(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V
.end method

.method public abstract setResumePlaying(Z)V
.end method

.method public abstract setRoundPlaying(Z)V
.end method

.method public abstract setWakeMode(Landroid/content/Context;I)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract suspend()V
.end method

.method public abstract trickplay(II)I
.end method
