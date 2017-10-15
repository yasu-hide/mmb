.class Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$9;
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
    .line 4426
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x6a

    .line 4428
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$9800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4429
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$9900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 4430
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$10000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 4431
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$10100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 4434
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$10200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$10200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getVolumeLevel()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    .line 4435
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$10300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4436
    :cond_1
    return-void
.end method
