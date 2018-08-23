.class Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;
.super Ljava/lang/Object;
.source "MmbStRecMwJniWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmbStRecMwNotifyMessage"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbStRecMwNotifyMessage"


# instance fields
.field private mData:[I

.field private mEventId:I

.field private mSize:I

.field final synthetic this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;


# direct methods
.method public constructor <init>(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;I[II)V
    .locals 0
    .param p2, "aEventId"    # I
    .param p3, "aData"    # [I
    .param p4, "aSize"    # I

    .prologue
    .line 351
    iput-object p1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-virtual {p0, p2}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->setEventId(I)V

    .line 353
    invoke-virtual {p0, p3}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->setData([I)V

    .line 354
    invoke-virtual {p0, p4}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->setSize(I)V

    .line 355
    return-void
.end method


# virtual methods
.method public getData()[I
    .locals 4

    .prologue
    .line 379
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isMmbDebuggableD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v0

    const-string v1, "MmbStRecMwNotifyMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getData() start!! mData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->mData:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->mData:[I

    return-object v0
.end method

.method public getEventId()I
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v0

    const-string v1, "MmbStRecMwNotifyMessage"

    const-string v2, "getEventId() start!! mEventId = "

    iget v3, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->mEventId:I

    invoke-virtual {v0, v1, v2, v3}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    iget v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->mEventId:I

    return v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v0

    const-string v1, "MmbStRecMwNotifyMessage"

    const-string v2, "getSize() start!! mSize = "

    iget v3, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->mSize:I

    invoke-virtual {v0, v1, v2, v3}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 395
    iget v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->mSize:I

    return v0
.end method

.method public setData([I)V
    .locals 4
    .param p1, "aData"    # [I

    .prologue
    .line 420
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isMmbDebuggableD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v0

    const-string v1, "MmbStRecMwNotifyMessage"

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

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_0
    iput-object p1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->mData:[I

    .line 424
    return-void
.end method

.method public setEventId(I)V
    .locals 3
    .param p1, "aEventId"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v0

    const-string v1, "MmbStRecMwNotifyMessage"

    const-string v2, "setEventId() start!! aEventId = "

    invoke-virtual {v0, v1, v2, p1}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 408
    iput p1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->mEventId:I

    .line 409
    return-void
.end method

.method public setSize(I)V
    .locals 3
    .param p1, "aSize"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v0}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v0

    const-string v1, "MmbStRecMwNotifyMessage"

    const-string v2, "setSize() start!! aSize = "

    invoke-virtual {v0, v1, v2, p1}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 436
    iput p1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->mSize:I

    .line 437
    return-void
.end method
