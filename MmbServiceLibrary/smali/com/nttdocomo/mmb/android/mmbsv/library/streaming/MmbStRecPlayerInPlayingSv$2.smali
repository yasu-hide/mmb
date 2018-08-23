.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv$2;
.super Ljava/lang/Object;
.source "MmbStRecPlayerInPlayingSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->onPlayToEnd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 441
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->getActivityRecListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;

    move-result-object v0

    .line 442
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;
    if-eqz v0, :cond_0

    .line 443
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;->onPlayStatusChanged(I)V

    .line 445
    :cond_0
    return-void
.end method
