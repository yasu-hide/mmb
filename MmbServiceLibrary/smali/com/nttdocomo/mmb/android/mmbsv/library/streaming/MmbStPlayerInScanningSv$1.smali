.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv$1;
.super Ljava/lang/Object;
.source "MmbStPlayerInScanningSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->onCompleteScan(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;

.field final synthetic val$result:Z

.field final synthetic val$uparam:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;ZI)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;

    iput-boolean p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv$1;->val$result:Z

    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv$1;->val$uparam:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->getActivityListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    move-result-object v0

    .line 169
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;
    if-eqz v0, :cond_0

    .line 171
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv$1;->val$result:Z

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv$1;->val$uparam:I

    invoke-interface {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;->onScanFinished(ZI)V

    .line 173
    :cond_0
    return-void
.end method
