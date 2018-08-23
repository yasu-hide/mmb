.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;
.super Ljava/lang/Object;
.source "MmbFcMp4MwPlayerWrapperSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected volatile mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

.field protected volatile mHandler:Landroid/os/Handler;

.field protected volatile mThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mThread:Ljava/lang/Thread;

    .line 52
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mThread:Ljava/lang/Thread;

    .line 64
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method protected chapterForward()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->chapterForward()V

    .line 622
    return-void
.end method

.method protected chapterRewind()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->chapterRewind()V

    .line 634
    return-void
.end method

.method protected clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 80
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mThread:Ljava/lang/Thread;

    .line 81
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 83
    return-void
.end method

.method protected drawLastFrame()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->drawLastFrame()V

    .line 658
    return-void
.end method

.method protected fastForward()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->fastForward()V

    .line 586
    return-void
.end method

.method protected fastForward(I)V
    .locals 1
    .param p1, "aSpeed"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->fastForward(I)V

    .line 574
    return-void
.end method

.method protected getAudioMute()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getAudioMute()I

    move-result v0

    return v0
.end method

.method protected getChapterIdList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "aChapterIdList":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;>;"
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getChapterIdList(Ljava/util/List;)V

    .line 147
    return-void
.end method

.method protected getCurrentPosition()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method protected getDuration()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method protected getFastForwardEnable()B
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getFastForwardEnable()B

    move-result v0

    return v0
.end method

.method protected getFastForwardEnableOnChapter(I)Z
    .locals 1
    .param p1, "aChapterId"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getFastForwardEnableOnChapter(I)Z

    move-result v0

    return v0
.end method

.method protected getIntervalOnChapter(IILmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;)V
    .locals 1
    .param p1, "aSeqLabelId"    # I
    .param p2, "aChapterId"    # I
    .param p3, "aInterval"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getIntervalOnChapter(IILmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;)V

    .line 162
    return-void
.end method

.method protected getRewindEnable()B
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getRewindEnable()B

    move-result v0

    return v0
.end method

.method protected getSequenceLabel(I)I
    .locals 1
    .param p1, "aPosition"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getSequenceLabel(I)I

    move-result v0

    return v0
.end method

.method protected getVideoHeight()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method protected getVideoWidth()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method protected isLooping()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method protected isResumeInfoExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->isResumeInfoExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected pause()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->pause()V

    .line 562
    return-void
.end method

.method protected prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->prepare()V

    .line 466
    return-void
.end method

.method protected release()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->release()V

    .line 490
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 478
    return-void
.end method

.method protected resume()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->resume()V

    .line 514
    return-void
.end method

.method protected rewind()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->rewind()V

    .line 610
    return-void
.end method

.method protected rewind(I)V
    .locals 1
    .param p1, "aSpeed"    # I

    .prologue
    .line 597
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->rewind(I)V

    .line 598
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-direct {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 98
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 99
    return-void
.end method

.method protected seekTo(I)V
    .locals 1
    .param p1, "aMsec"    # I

    .prologue
    .line 645
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->seekTo(I)V

    .line 646
    return-void
.end method

.method protected setAudioMute(I)V
    .locals 1
    .param p1, "aMute"    # I

    .prologue
    .line 393
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setAudioMute(I)V

    .line 394
    return-void
.end method

.method protected setAudioOutDev(I)V
    .locals 1
    .param p1, "aAudioHW"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setAudioOutDev(I)V

    .line 382
    return-void
.end method

.method protected setAudioStreamType(I)V
    .locals 1
    .param p1, "aStreamType"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setAudioStreamType(I)V

    .line 370
    return-void
.end method

.method protected setCaptionDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setCaptionDisplay(Landroid/view/SurfaceHolder;)V

    .line 321
    return-void
.end method

.method protected setCaptionLang(I)V
    .locals 1
    .param p1, "aLang"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setCaptionLang(I)V

    .line 454
    return-void
.end method

.method protected setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDataSource(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method protected setDataSource(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCntIndex"    # Ljava/lang/String;
    .param p3, "aPtime"    # I
    .param p4, "aUseLicenceFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDataSource(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 297
    return-void
.end method

.method protected setDataSource(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aFilePath"    # Ljava/lang/String;
    .param p3, "aUseLicenceFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDataSource(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    return-void
.end method

.method protected setDispCaption(Z)V
    .locals 1
    .param p1, "aDisp"    # Z

    .prologue
    .line 441
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDispCaption(Z)V

    .line 442
    return-void
.end method

.method protected setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 309
    return-void
.end method

.method protected setLooping(Z)V
    .locals 1
    .param p1, "aLooping"    # Z

    .prologue
    .line 345
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setLooping(Z)V

    .line 346
    return-void
.end method

.method protected setOnCompletionListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    .prologue
    .line 693
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnCompletionListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;)V

    .line 694
    return-void
.end method

.method protected setOnDimChangeListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnDimChangeListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;)V

    .line 730
    return-void
.end method

.method protected setOnErrorListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnErrorListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;)V

    .line 706
    return-void
.end method

.method protected setOnInfoListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnInfoListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;)V

    .line 682
    return-void
.end method

.method protected setOnSeekCompleteListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnSeekCompleteListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;)V

    .line 718
    return-void
.end method

.method protected setParentalRate(I)V
    .locals 1
    .param p1, "aPrtlRate"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setParentalRate(I)V

    .line 418
    return-void
.end method

.method protected setResumePlaying(Z)V
    .locals 1
    .param p1, "aResumePlaying"    # Z

    .prologue
    .line 357
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setResumePlaying(Z)V

    .line 358
    return-void
.end method

.method protected setSapMode(I)V
    .locals 1
    .param p1, "aSapMode"    # I

    .prologue
    .line 429
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setSapMode(I)V

    .line 430
    return-void
.end method

.method protected setTrickPlayForceDisable()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setTrickPlayForceDisable()V

    .line 670
    return-void
.end method

.method protected setWakeMode(Landroid/content/Context;I)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aMode"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1, p2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 334
    return-void
.end method

.method protected start()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->start()V

    .line 526
    return-void
.end method

.method protected stop()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->stop()V

    .line 550
    return-void
.end method

.method protected suspend()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->suspend()V

    .line 502
    return-void
.end method

.method protected syncStart(J)V
    .locals 1
    .param p1, "aOpenDateTime"    # J

    .prologue
    .line 537
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->mFcMp4Player:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1, p2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->syncStart(J)V

    .line 538
    return-void
.end method
