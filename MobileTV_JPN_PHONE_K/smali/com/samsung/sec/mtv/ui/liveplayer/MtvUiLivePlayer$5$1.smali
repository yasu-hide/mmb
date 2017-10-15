.class Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5$1;
.super Ljava/lang/Object;
.source "MtvUiLivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 505
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;

    iget-object v4, v4, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v2

    .line 507
    .local v2, "oneSegProgramList":[Landroid/broadcast/helper/types/MtvOneSegProgram;
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;

    iget-object v4, v4, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v4

    if-nez v4, :cond_0

    .line 508
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;

    iget-object v4, v4, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;

    iget-object v6, v6, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5102(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 510
    :cond_0
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;

    iget-object v4, v4, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v3

    .line 511
    .local v3, "vch":I
    const/4 v1, 0x0

    .line 512
    .local v1, "mtvDBProgram":Lcom/samsung/sec/mtv/provider/MtvProgram;
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;

    iget-object v4, v4, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->delete(Landroid/content/Context;Landroid/net/Uri;)V

    .line 513
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    .line 514
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 515
    aget-object v4, v2, v0

    if-nez v4, :cond_2

    .line 522
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 517
    .restart local v0    # "i":I
    :cond_2
    new-instance v1, Lcom/samsung/sec/mtv/provider/MtvProgram;

    .end local v1    # "mtvDBProgram":Lcom/samsung/sec/mtv/provider/MtvProgram;
    aget-object v4, v2, v0

    invoke-direct {v1, v4, v3}, Lcom/samsung/sec/mtv/provider/MtvProgram;-><init>(Landroid/broadcast/helper/types/MtvOneSegProgram;I)V

    .line 518
    .restart local v1    # "mtvDBProgram":Lcom/samsung/sec/mtv/provider/MtvProgram;
    if-eqz v1, :cond_3

    .line 519
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;

    iget-object v4, v4, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v4, v1}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->updateOrInsert(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvProgram;)V

    .line 514
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
