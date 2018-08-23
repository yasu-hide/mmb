.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$9;
.super Ljava/lang/Object;
.source "MmbStControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyPositionWrapped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

.field final synthetic val$msec:J


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;J)V
    .locals 0

    .prologue
    .line 7570
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$9;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    iput-wide p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$9;->val$msec:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 7574
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$9;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getActivityRecListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;

    move-result-object v0

    .line 7575
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;
    if-eqz v0, :cond_0

    .line 7578
    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$9;->val$msec:J

    invoke-interface {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;->onNotifyPosition(J)V

    .line 7580
    :cond_0
    return-void
.end method
