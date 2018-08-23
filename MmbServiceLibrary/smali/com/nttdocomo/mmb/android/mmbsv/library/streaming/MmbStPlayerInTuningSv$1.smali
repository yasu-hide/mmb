.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv$1;
.super Ljava/lang/Object;
.source "MmbStPlayerInTuningSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv;->onCompleteSelectCh(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv;

.field final synthetic val$result:I

.field final synthetic val$uparam:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv;II)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv$1;->val$result:I

    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv$1;->val$uparam:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 351
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv;->getActivityListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    move-result-object v0

    .line 352
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;
    if-eqz v0, :cond_0

    .line 354
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv$1;->val$result:I

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv$1;->val$uparam:I

    invoke-interface {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;->onTuneFinished(II)V

    .line 356
    :cond_0
    return-void
.end method
