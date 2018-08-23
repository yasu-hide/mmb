.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$5;
.super Ljava/lang/Object;
.source "MmbStRecPlayingControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->createThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;)V
    .locals 0

    .prologue
    .line 2247
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setNotifyPositionEvent()V
    .locals 1

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->notifyPositionCommonWrapped()V

    .line 2276
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2250
    :goto_0
    sget-boolean v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->mPositionFlag:Z

    if-eqz v1, :cond_0

    .line 2255
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$5;->setNotifyPositionEvent()V

    .line 2258
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2259
    :catch_0
    move-exception v0

    .line 2260
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 2261
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2264
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
