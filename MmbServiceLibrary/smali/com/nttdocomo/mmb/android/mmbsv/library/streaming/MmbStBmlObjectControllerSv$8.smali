.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$8;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$MmbBmlRunnableArgments;
.source "MmbStBmlObjectControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onEpgTuneReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;)V
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
    .line 2491
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$MmbBmlRunnableArgments;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2494
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$8;->mArgments:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2495
    .local v0, "aNetworkId":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$8;->mArgments:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2496
    .local v2, "aTransportStreamId":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$8;->mArgments:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2502
    .local v1, "aServiceId":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$8;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    invoke-interface {v3, v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;->onRequestTune(III)V

    .line 2509
    return-void
.end method
