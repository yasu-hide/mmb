.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$15;
.super Ljava/lang/Object;
.source "MmbStStreamingControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->captionNotifyRestartCommonWrapped(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;I)V
    .locals 0

    .prologue
    .line 3793
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$15;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$15;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3797
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$15;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getActivityListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    move-result-object v0

    .line 3798
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;
    if-eqz v0, :cond_0

    .line 3800
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$15;->val$index:I

    invoke-interface {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;->onSubtitleRestart(I)V

    .line 3802
    :cond_0
    return-void
.end method
