.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$2;
.super Ljava/lang/Object;
.source "MmbStPlayerInIdleSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->onFinishReleaseResource(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;

.field final synthetic val$result:I

.field final synthetic val$uparam:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;II)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$2;->val$result:I

    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$2;->val$uparam:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 682
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getActivityListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    move-result-object v0

    .line 683
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;
    if-eqz v0, :cond_0

    .line 685
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$2;->val$result:I

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$2;->val$uparam:I

    invoke-interface {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;->onStartViewFinished(II)V

    .line 687
    :cond_0
    return-void
.end method
