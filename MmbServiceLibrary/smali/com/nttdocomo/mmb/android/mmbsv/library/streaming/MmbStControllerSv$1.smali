.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$1;
.super Ljava/lang/Object;
.source "MmbStControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyOnPause(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

.field final synthetic val$subtitleresult:I

.field final synthetic val$superimposeresult:I

.field final synthetic val$videoresult:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;III)V
    .locals 0

    .prologue
    .line 1564
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$1;->val$videoresult:I

    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$1;->val$subtitleresult:I

    iput p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$1;->val$superimposeresult:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1568
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getActivityListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    move-result-object v0

    .line 1569
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;
    if-eqz v0, :cond_0

    .line 1571
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$1;->val$videoresult:I

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$1;->val$subtitleresult:I

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$1;->val$superimposeresult:I

    invoke-interface {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;->onResultPause(III)V

    .line 1573
    :cond_0
    return-void
.end method
