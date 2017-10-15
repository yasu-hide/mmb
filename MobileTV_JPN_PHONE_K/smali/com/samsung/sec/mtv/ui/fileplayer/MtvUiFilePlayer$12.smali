.class Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$12;
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
    .line 1826
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$12;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$12;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$12;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    const/16 v1, 0x116

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    .line 1832
    :cond_0
    return-void
.end method
