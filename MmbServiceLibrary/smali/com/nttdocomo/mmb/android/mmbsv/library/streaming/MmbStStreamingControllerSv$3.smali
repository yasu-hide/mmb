.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$3;
.super Ljava/lang/Object;
.source "MmbStStreamingControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->onChangeViewingStatusCommonWrapped(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;

.field final synthetic val$fixresult:I

.field final synthetic val$viewstatus:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;II)V
    .locals 0

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$3;->val$viewstatus:I

    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$3;->val$fixresult:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1262
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getActivityListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    move-result-object v0

    .line 1263
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;
    if-eqz v0, :cond_0

    .line 1265
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$3;->val$viewstatus:I

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$3;->val$fixresult:I

    invoke-interface {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;->onViewStatusChanged(II)V

    .line 1267
    :cond_0
    return-void
.end method
