.class Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;
.super Ljava/lang/Thread;
.source "MmbStRecMwJniWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmbStRecMwNotifyMessageThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbStRecMwNotifyMessageThread"


# instance fields
.field final synthetic this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;


# direct methods
.method private constructor <init>(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;
    .param p2, "x1"    # Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$1;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;-><init>(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)V

    return-void
.end method

.method private notifyMessage(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;)V
    .locals 12
    .param p1, "aMessage"    # Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 273
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v5

    const-string v6, "MmbStRecMwNotifyMessageThread"

    const-string v7, "notifyMessage() start!!"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->getEventId()I

    move-result v1

    .line 277
    .local v1, "eventid":I
    invoke-virtual {p1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->getData()[I

    move-result-object v0

    .line 278
    .local v0, "data":[I
    invoke-virtual {p1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;->getSize()I

    move-result v4

    .line 280
    .local v4, "size":I
    packed-switch v1, :pswitch_data_0

    .line 333
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v5

    const-string v6, "MmbStRecMwNotifyMessageThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyMessage() invalid EventID["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :goto_0
    return-void

    .line 284
    :pswitch_0
    if-ne v11, v4, :cond_0

    .line 285
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v5

    const-string v6, "MmbStRecMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onCompletePrepRec()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$400(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwListener;

    move-result-object v5

    aget v6, v0, v8

    aget v7, v0, v9

    aget v8, v0, v10

    invoke-interface {v5, v6, v7, v8}, Lmmb/android/MmbStRecMw/MmbStRecMwListener;->onCompletePrepRec(III)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v5

    const-string v6, "MmbStRecMwNotifyMessageThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyMessage() data size invalid! EventId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",Size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :pswitch_1
    if-ne v9, v4, :cond_1

    .line 296
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v5

    const-string v6, "MmbStRecMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onChangeAntennaLevel()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$400(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwListener;

    move-result-object v5

    aget v6, v0, v8

    invoke-interface {v5, v6}, Lmmb/android/MmbStRecMw/MmbStRecMwListener;->onChangeAntennaLevel(I)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v5

    const-string v6, "MmbStRecMwNotifyMessageThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyMessage() data size invalid! EventId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",Size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    :pswitch_2
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v5

    const-string v6, "MmbStRecMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onUpdatePmt()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$400(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwListener;

    move-result-object v5

    invoke-interface {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwListener;->onUpdatePmt()V

    goto/16 :goto_0

    .line 310
    :pswitch_3
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v5

    const-string v6, "MmbStRecMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onUpdateEit()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$400(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwListener;

    move-result-object v5

    invoke-interface {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwListener;->onUpdateEit()V

    goto/16 :goto_0

    .line 315
    :pswitch_4
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v5

    const-string v6, "MmbStRecMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onUpdateSdt()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$400(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwListener;

    move-result-object v5

    invoke-interface {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwListener;->onUpdateSdt()V

    goto/16 :goto_0

    .line 321
    :pswitch_5
    if-ne v11, v4, :cond_2

    .line 322
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v5

    const-string v6, "MmbStRecMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onCompleteRec()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-wide/16 v2, 0x0

    .line 324
    .local v2, "rectime":J
    aget v5, v0, v10

    int-to-long v2, v5

    .line 325
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$400(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwListener;

    move-result-object v5

    aget v6, v0, v8

    aget v7, v0, v9

    invoke-interface {v5, v6, v7, v2, v3}, Lmmb/android/MmbStRecMw/MmbStRecMwListener;->onCompleteRec(IIJ)V

    goto/16 :goto_0

    .line 328
    .end local v2    # "rectime":J
    :cond_2
    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v5

    const-string v6, "MmbStRecMwNotifyMessageThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyMessage() data size invalid! EventId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",Size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1770
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 235
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v1

    const-string v2, "MmbStRecMwNotifyMessageThread"

    const-string v3, "run() start!!"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_0
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$200(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Ljava/util/Queue;

    move-result-object v2

    monitor-enter v2

    .line 241
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v1

    invoke-virtual {v1}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isMmbDebuggableD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v1

    const-string v3, "MmbStRecMwNotifyMessageThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run() queue size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$200(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$200(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;

    .line 245
    .local v0, "message":Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;
    if-eqz v0, :cond_1

    .line 247
    invoke-direct {p0, v0}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->notifyMessage(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;)V

    .line 255
    monitor-exit v2

    goto :goto_0

    .end local v0    # "message":Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 251
    .restart local v0    # "message":Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$302(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;Z)Z

    .line 252
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v1

    const-string v3, "MmbStRecMwNotifyMessageThread"

    const-string v4, "run() end!!"

    invoke-virtual {v1, v3, v4}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    return-void
.end method

.method public setQueue(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;)I
    .locals 6
    .param p1, "aMessage"    # Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;

    .prologue
    .line 199
    const/4 v1, -0x1

    .line 201
    .local v1, "ret":I
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v2

    const-string v3, "MmbStRecMwNotifyMessageThread"

    const-string v4, "setQueue() start!!"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$200(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 206
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isMmbDebuggableD()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v2

    const-string v3, "MmbStRecMwNotifyMessageThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setQueue() queue size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$200(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 209
    :cond_0
    const/4 v1, 0x0

    .line 220
    :goto_0
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v2

    const-string v3, "MmbStRecMwNotifyMessageThread"

    const-string v4, "setQueue() end!! ret = "

    invoke-virtual {v2, v3, v4, v1}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    return v1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "exception":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v2

    const-string v3, "MmbStRecMwNotifyMessageThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setQueue() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    .end local v0    # "exception":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 215
    .local v0, "exception":Ljava/lang/ClassCastException;
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v2

    const-string v3, "MmbStRecMwNotifyMessageThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setQueue() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    .end local v0    # "exception":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v0

    .line 218
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v2

    const-string v3, "MmbStRecMwNotifyMessageThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setQueue() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 177
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v1

    const-string v2, "MmbStRecMwNotifyMessageThread"

    const-string v3, "start() start!!"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v1

    const-string v2, "MmbStRecMwNotifyMessageThread"

    const-string v3, "start() end!!"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "exception":Ljava/lang/IllegalThreadStateException;
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->this$0:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    move-result-object v1

    const-string v2, "MmbStRecMwNotifyMessageThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
