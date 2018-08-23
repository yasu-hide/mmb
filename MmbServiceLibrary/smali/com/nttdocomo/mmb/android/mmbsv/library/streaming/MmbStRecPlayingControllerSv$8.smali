.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$8;
.super Ljava/lang/Object;
.source "MmbStRecPlayingControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->checkParentalDo(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;

.field final synthetic val$fixresult:I

.field final synthetic val$fixstatus:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;II)V
    .locals 0

    .prologue
    .line 2659
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$8;->val$fixstatus:I

    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$8;->val$fixresult:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2663
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getActivityListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    move-result-object v0

    .line 2664
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;
    if-eqz v0, :cond_0

    .line 2666
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$8;->val$fixstatus:I

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$8;->val$fixresult:I

    invoke-interface {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;->onViewStatusChanged(II)V

    .line 2668
    :cond_0
    return-void
.end method
