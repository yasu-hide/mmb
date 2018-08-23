.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$18;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$MmbBmlRunnableArgments;
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
.method varargs constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 3317
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$18;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$MmbBmlRunnableArgments;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3320
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$18;->mArgments:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .line 3326
    .local v0, "aLink":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$18;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    invoke-interface {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;->onRequestAddTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    .line 3330
    return-void
.end method
