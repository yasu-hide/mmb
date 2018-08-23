.class Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;
.super Ljava/lang/Object;
.source "MmbStCtlMwJniWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmbStCtlMwNotifyMessage"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbStCtlMwNotifyMessage"


# instance fields
.field private mData:[I

.field private mEventId:I

.field private mSize:I

.field final synthetic this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;


# direct methods
.method public constructor <init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;I[II)V
    .locals 0
    .param p2, "aEventId"    # I
    .param p3, "aData"    # [I
    .param p4, "aSize"    # I

    .prologue
    .line 601
    iput-object p1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    invoke-virtual {p0, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->setEventId(I)V

    .line 603
    invoke-virtual {p0, p3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->setData([I)V

    .line 604
    invoke-virtual {p0, p4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->setSize(I)V

    .line 605
    return-void
.end method


# virtual methods
.method public getData()[I
    .locals 4

    .prologue
    .line 629
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->isMmbDebuggableD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v0

    const-string v1, "MmbStCtlMwNotifyMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getData() start!! mData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->mData:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->mData:[I

    return-object v0
.end method

.method public getEventId()I
    .locals 4

    .prologue
    .line 616
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v0

    const-string v1, "MmbStCtlMwNotifyMessage"

    const-string v2, "getEventId() start!! mEventId = "

    iget v3, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->mEventId:I

    invoke-virtual {v0, v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 617
    iget v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->mEventId:I

    return v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 644
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v0

    const-string v1, "MmbStCtlMwNotifyMessage"

    const-string v2, "getSize() start!! mSize = "

    iget v3, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->mSize:I

    invoke-virtual {v0, v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 645
    iget v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->mSize:I

    return v0
.end method

.method public setData([I)V
    .locals 4
    .param p1, "aData"    # [I

    .prologue
    .line 670
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->isMmbDebuggableD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v0

    const-string v1, "MmbStCtlMwNotifyMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setData() start!! aData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_0
    iput-object p1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->mData:[I

    .line 674
    return-void
.end method

.method public setEventId(I)V
    .locals 3
    .param p1, "aEventId"    # I

    .prologue
    .line 657
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v0

    const-string v1, "MmbStCtlMwNotifyMessage"

    const-string v2, "setEventId() start!! aEventId = "

    invoke-virtual {v0, v1, v2, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 658
    iput p1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->mEventId:I

    .line 659
    return-void
.end method

.method public setSize(I)V
    .locals 3
    .param p1, "aSize"    # I

    .prologue
    .line 685
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v0

    const-string v1, "MmbStCtlMwNotifyMessage"

    const-string v2, "setSize() start!! aSize = "

    invoke-virtual {v0, v1, v2, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 686
    iput p1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->mSize:I

    .line 687
    return-void
.end method
