.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$11;
.super Ljava/lang/Object;
.source "MmbStStreamingControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->onVideoInformationCommonWrapped(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;

.field final synthetic val$videoparam:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;)V
    .locals 0

    .prologue
    .line 3300
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$11;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$11;->val$videoparam:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3303
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$11;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getActivityListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    move-result-object v0

    .line 3304
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;
    if-eqz v0, :cond_0

    .line 3306
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$11;->val$videoparam:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    invoke-interface {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;->onVideoParameterChanged(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;)V

    .line 3308
    :cond_0
    return-void
.end method
