.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$17;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$MmbBmlRunnableRes;
.source "MmbStBmlObjectControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onTvLinkEnrolReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;Z)V
    .locals 0
    .param p2, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .param p3, "x1"    # Z

    .prologue
    .line 3298
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$17;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$MmbBmlRunnableRes;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3301
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$17;->mResult:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logEnterFunction([Ljava/lang/Object;)V

    .line 3303
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$17;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$17;->mResult:Z

    invoke-interface {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;->onAddTvLinkFinished(Z)V

    .line 3304
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeaveFunction()V

    .line 3305
    return-void
.end method
