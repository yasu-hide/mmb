.class Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;
.super Ljava/lang/Thread;
.source "MmbStCtlMwJniWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmbStCtlMwNotifyMessageThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbStCtlMwNotifyMessageThread"


# instance fields
.field final synthetic this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;


# direct methods
.method private constructor <init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;
    .param p2, "x1"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$1;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;-><init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)V

    return-void
.end method

.method private notifyMessage(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;)V
    .locals 12
    .param p1, "aMessage"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 316
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() start!!"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->getEventId()I

    move-result v1

    .line 320
    .local v1, "eventid":I
    invoke-virtual {p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->getData()[I

    move-result-object v0

    .line 321
    .local v0, "data":[I
    invoke-virtual {p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;->getSize()I

    move-result v3

    .line 323
    .local v3, "size":I
    packed-switch v1, :pswitch_data_0

    .line 583
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :goto_0
    return-void

    .line 327
    :pswitch_0
    if-ne v10, v3, :cond_0

    .line 328
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onCompleteScan()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    aget v7, v0, v9

    invoke-interface {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onCompleteScan(II)V

    goto :goto_0

    .line 332
    :cond_0
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :pswitch_1
    if-ne v11, v3, :cond_1

    .line 339
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onCompleteStartSt()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    aget v7, v0, v9

    aget v8, v0, v10

    invoke-interface {v5, v6, v7, v8}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onCompleteStartSt(III)V

    goto :goto_0

    .line 343
    :cond_1
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 349
    :pswitch_2
    if-ne v11, v3, :cond_2

    .line 350
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onCompleteSelectCh()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    aget v7, v0, v9

    aget v8, v0, v10

    invoke-interface {v5, v6, v7, v8}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onCompleteSelectCh(III)V

    goto/16 :goto_0

    .line 354
    :cond_2
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    :pswitch_3
    if-ne v9, v3, :cond_3

    .line 361
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onChangeViewingStatus()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    invoke-interface {v5, v6}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onChangeViewingStatus(I)V

    goto/16 :goto_0

    .line 365
    :cond_3
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    :pswitch_4
    if-ne v9, v3, :cond_4

    .line 372
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onChangeAntennaLevel()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    invoke-interface {v5, v6}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onChangeAntennaLevel(I)V

    goto/16 :goto_0

    .line 376
    :cond_4
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 382
    :pswitch_5
    if-ne v9, v3, :cond_5

    .line 383
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onNotifyServiceNg()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    invoke-interface {v5, v6}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onNotifyServiceNg(I)V

    goto/16 :goto_0

    .line 387
    :cond_5
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 392
    :pswitch_6
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onUpdatePmt()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    invoke-interface {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onUpdatePmt()V

    goto/16 :goto_0

    .line 397
    :pswitch_7
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onUpdateNit()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    invoke-interface {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onUpdateNit()V

    goto/16 :goto_0

    .line 402
    :pswitch_8
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onUpdateInt()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    invoke-interface {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onUpdateInt()V

    goto/16 :goto_0

    .line 407
    :pswitch_9
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onUpdateBit()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    invoke-interface {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onUpdateBit()V

    goto/16 :goto_0

    .line 412
    :pswitch_a
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onUpdateEit()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    invoke-interface {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onUpdateEit()V

    goto/16 :goto_0

    .line 417
    :pswitch_b
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onUpdateSdt()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    invoke-interface {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onUpdateSdt()V

    goto/16 :goto_0

    .line 422
    :pswitch_c
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onUpdateEmm()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    invoke-interface {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onUpdateEmm()V

    goto/16 :goto_0

    .line 428
    :pswitch_d
    if-ne v9, v3, :cond_6

    .line 429
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onNotifyError()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    invoke-interface {v5, v6}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onNotifyError(I)V

    goto/16 :goto_0

    .line 433
    :cond_6
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 439
    :pswitch_e
    const/4 v5, 0x6

    if-ne v5, v3, :cond_7

    .line 440
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onVideoInformation()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;

    invoke-direct {v4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;-><init>()V

    .line 443
    .local v4, "stereoView":Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;
    aget v5, v0, v11

    iput v5, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;->stereoViewType:I

    .line 444
    const/4 v5, 0x4

    aget v5, v0, v5

    iput v5, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;->framePackingArrangementType:I

    .line 445
    const/4 v5, 0x5

    aget v5, v0, v5

    iput v5, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;->contentInterpretationType:I

    .line 447
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    aget v7, v0, v9

    aget v8, v0, v10

    invoke-interface {v5, v6, v7, v8, v4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onVideoInformation(IIILmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;)V

    goto/16 :goto_0

    .line 450
    .end local v4    # "stereoView":Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;
    :cond_7
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 456
    :pswitch_f
    if-ne v9, v3, :cond_8

    .line 457
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onAudioInformation()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    invoke-interface {v5, v6}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onAudioInformation(I)V

    goto/16 :goto_0

    .line 461
    :cond_8
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 467
    :pswitch_10
    if-ne v9, v3, :cond_9

    .line 468
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onChangeAudioComponent()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    int-to-short v6, v6

    invoke-interface {v5, v6}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onChangeAudioComponent(S)V

    goto/16 :goto_0

    .line 472
    :cond_9
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    :pswitch_11
    if-ne v10, v3, :cond_a

    .line 479
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call captionNotifyLangNumSetEnable()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    aget v7, v0, v9

    int-to-byte v7, v7

    invoke-interface {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->captionNotifyLangNumSetEnable(IB)V

    goto/16 :goto_0

    .line 483
    :cond_a
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    :pswitch_12
    if-ne v9, v3, :cond_b

    .line 490
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call captionNotifyNothingFixedTime()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    invoke-interface {v5, v6}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->captionNotifyNothingFixedTime(I)V

    goto/16 :goto_0

    .line 494
    :cond_b
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 500
    :pswitch_13
    if-ne v9, v3, :cond_c

    .line 501
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call captionNotifyRestart()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    invoke-interface {v5, v6}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->captionNotifyRestart(I)V

    goto/16 :goto_0

    .line 505
    :cond_c
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 511
    :pswitch_14
    if-ne v9, v3, :cond_d

    .line 512
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call captionNotifyRecv()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    invoke-interface {v5, v6}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->captionNotifyRecv(I)V

    goto/16 :goto_0

    .line 516
    :cond_d
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 522
    :pswitch_15
    if-ne v10, v3, :cond_f

    .line 524
    aget v5, v0, v9

    if-nez v5, :cond_e

    .line 525
    const/4 v2, 0x0

    .line 530
    .local v2, "exist":Z
    :goto_1
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call captionNotifyExist()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    invoke-interface {v5, v6, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->captionNotifyExist(IZ)V

    goto/16 :goto_0

    .line 528
    .end local v2    # "exist":Z
    :cond_e
    const/4 v2, 0x1

    .restart local v2    # "exist":Z
    goto :goto_1

    .line 534
    .end local v2    # "exist":Z
    :cond_f
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 540
    :pswitch_16
    if-ne v11, v3, :cond_10

    .line 541
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onCompleteStartPlay()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    aget v7, v0, v9

    aget v8, v0, v10

    invoke-interface {v5, v6, v7, v8}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onCompleteStartPlay(III)V

    goto/16 :goto_0

    .line 545
    :cond_10
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :pswitch_17
    if-ne v9, v3, :cond_11

    .line 552
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onPlayToEnd()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    invoke-interface {v5, v6}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onPlayToEnd(I)V

    goto/16 :goto_0

    .line 556
    :cond_11
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 562
    :pswitch_18
    if-ne v9, v3, :cond_12

    .line 563
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onFastForwardToEnd()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    invoke-interface {v5, v6}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onFastForwardToEnd(I)V

    goto/16 :goto_0

    .line 567
    :cond_12
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 573
    :pswitch_19
    if-ne v9, v3, :cond_13

    .line 574
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

    const-string v7, "notifyMessage() call onRewindToTop()"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    move-result-object v5

    aget v6, v0, v8

    invoke-interface {v5, v6}, Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;->onRewindToTop(I)V

    goto/16 :goto_0

    .line 578
    :cond_13
    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v5

    const-string v6, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1388
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 278
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v1

    const-string v2, "MmbStCtlMwNotifyMessageThread"

    const-string v3, "run() start!!"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$200(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Ljava/util/Queue;

    move-result-object v2

    monitor-enter v2

    .line 284
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v1

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->isMmbDebuggableD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v1

    const-string v3, "MmbStCtlMwNotifyMessageThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run() queue size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$200(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$200(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;

    .line 288
    .local v0, "message":Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;
    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0, v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->notifyMessage(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;)V

    .line 298
    monitor-exit v2

    goto :goto_0

    .end local v0    # "message":Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 294
    .restart local v0    # "message":Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$302(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;Z)Z

    .line 295
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v1

    const-string v3, "MmbStCtlMwNotifyMessageThread"

    const-string v4, "run() end!!"

    invoke-virtual {v1, v3, v4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    return-void
.end method

.method public setQueue(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;)I
    .locals 6
    .param p1, "aMessage"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;

    .prologue
    .line 242
    const/4 v1, -0x1

    .line 244
    .local v1, "ret":I
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v2

    const-string v3, "MmbStCtlMwNotifyMessageThread"

    const-string v4, "setQueue() start!!"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$200(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 249
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->isMmbDebuggableD()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v2

    const-string v3, "MmbStCtlMwNotifyMessageThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setQueue() queue size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$200(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 252
    :cond_0
    const/4 v1, 0x0

    .line 263
    :goto_0
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v2

    const-string v3, "MmbStCtlMwNotifyMessageThread"

    const-string v4, "setQueue() end!! ret = "

    invoke-virtual {v2, v3, v4, v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 264
    return v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "exception":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v2

    const-string v3, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v0    # "exception":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 258
    .local v0, "exception":Ljava/lang/ClassCastException;
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v2

    const-string v3, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    .end local v0    # "exception":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v0

    .line 261
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v2

    const-string v3, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 220
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v1

    const-string v2, "MmbStCtlMwNotifyMessageThread"

    const-string v3, "start() start!!"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v1

    const-string v2, "MmbStCtlMwNotifyMessageThread"

    const-string v3, "start() end!!"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "exception":Ljava/lang/IllegalThreadStateException;
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->this$0:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-static {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    move-result-object v1

    const-string v2, "MmbStCtlMwNotifyMessageThread"

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

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
