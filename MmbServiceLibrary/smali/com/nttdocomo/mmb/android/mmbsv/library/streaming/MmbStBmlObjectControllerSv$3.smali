.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$3;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$MmbBmlRunnableArgments;
.source "MmbStBmlObjectControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onPasswordReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;)V
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
    .line 1874
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$MmbBmlRunnableArgments;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1877
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$3;->mArgments:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1883
    .local v0, "param":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$3;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    invoke-interface {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;->onRequestPassword(I)V

    .line 1887
    return-void
.end method
