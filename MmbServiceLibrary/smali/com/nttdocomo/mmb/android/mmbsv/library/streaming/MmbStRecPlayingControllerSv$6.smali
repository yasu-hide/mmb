.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$6;
.super Ljava/lang/Object;
.source "MmbStRecPlayingControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->notifyPositionCommonWrapped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;

.field final synthetic val$msec:J


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;J)V
    .locals 0

    .prologue
    .line 2318
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$6;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;

    iput-wide p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$6;->val$msec:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2322
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$6;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getActivityRecListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;

    move-result-object v0

    .line 2323
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;
    if-eqz v0, :cond_0

    .line 2326
    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$6;->val$msec:J

    invoke-interface {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;->onNotifyPosition(J)V

    .line 2328
    :cond_0
    return-void
.end method
