.class Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$29;
.super Ljava/lang/Object;
.source "MtvUiLivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V
    .locals 0

    .prologue
    .line 5763
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$29;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 5765
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$29;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$14900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$29;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$15000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5766
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$29;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$15100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5767
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "RunnableUpdateProgramChannelInfo"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5768
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$29;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$15300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$29;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$15200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;ZZ)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 5770
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$29;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$15400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5771
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "RunnableUpdateProgramChannelInfo"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5772
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$29;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$15500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$29;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v1, v3, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$15200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;ZZ)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 5776
    :cond_1
    return-void
.end method
