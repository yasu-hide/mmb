.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$8;
.super Ljava/lang/Object;
.source "MmbStControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifySeekResult(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

.field final synthetic val$result:I

.field final synthetic val$userParam:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;II)V
    .locals 0

    .prologue
    .line 7492
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$8;->val$result:I

    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$8;->val$userParam:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7495
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getActivityRecListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;

    move-result-object v0

    .line 7496
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;
    if-eqz v0, :cond_0

    .line 7497
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$8;->val$result:I

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$8;->val$userParam:I

    invoke-interface {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;->onSeekInfo(II)V

    .line 7499
    :cond_0
    return-void
.end method
