.class Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$20;
.super Ljava/lang/Object;
.source "MtvUiLivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->onPlayerNotification(III)V
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
    .line 4944
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$20;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4946
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$20;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4947
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$20;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->closeOptionsMenu()V

    .line 4948
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$20;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4502(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Landroid/view/Menu;)Landroid/view/Menu;

    .line 4950
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$20;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$13300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setVisibility(I)V

    .line 4951
    return-void
.end method
