.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInFastForwardingSv$1;
.super Ljava/lang/Object;
.source "MmbStRecPlayerInFastForwardingSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInFastForwardingSv;->onFastForwardToEnd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInFastForwardingSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInFastForwardingSv;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInFastForwardingSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInFastForwardingSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 278
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInFastForwardingSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInFastForwardingSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInFastForwardingSv;->getActivityRecListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;

    move-result-object v0

    .line 279
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;
    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;->onStopPlaying()V

    .line 282
    :cond_0
    return-void
.end method
