.class Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$18;
.super Ljava/lang/Object;
.source "MtvUiFilePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V
    .locals 0

    .prologue
    .line 2132
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$18;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x6a

    .line 2134
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$18;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$5700(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$18;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$5800(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 2136
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$18;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$5900(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 2137
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$18;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$6000(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 2140
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$18;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$6100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$18;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$6100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getVolumeLevel()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    .line 2141
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$18;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$4700(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$18;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$6200(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2142
    :cond_1
    return-void
.end method
