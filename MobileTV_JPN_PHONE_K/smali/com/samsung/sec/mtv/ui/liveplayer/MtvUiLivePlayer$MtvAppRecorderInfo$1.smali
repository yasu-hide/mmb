.class Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;
.super Ljava/lang/Object;
.source "MtvUiLivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)V
    .locals 0

    .prologue
    .line 6486
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6489
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->access$17100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6491
    const-string v0, "MtvAppRecorderInfo"

    const-string v1, "RecordTimer is reset. Exiting Counter"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6508
    :goto_0
    return-void

    .line 6495
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->access$17108(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)I

    .line 6496
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->access$17100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 6498
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->access$7202(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;Z)Z

    .line 6499
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->access$17200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6500
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->access$17200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    const/16 v1, 0x88

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 6502
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->access$17200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6504
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->access$17200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    const/16 v1, 0x7d

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->access$17100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 6507
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->access$17300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
