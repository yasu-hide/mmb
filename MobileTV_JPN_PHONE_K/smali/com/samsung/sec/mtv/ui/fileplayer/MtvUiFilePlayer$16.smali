.class Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$16;
.super Ljava/lang/Object;
.source "MtvUiFilePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onPlayerNotification(III)V
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
    .line 1943
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$16;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$16;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$5300(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$16;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isBmlFullView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$16;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$5500(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$5400()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1948
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$16;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$5600(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    const/16 v1, 0x7a

    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$5400()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1950
    :cond_0
    return-void
.end method
