.class Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$11;
.super Ljava/lang/Object;
.source "MtvUiSViewCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$11;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1029
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$11;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2100(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1030
    const-string v1, "MtvUiSViewCover"

    const-string v2, "RunnableNextPreviousChannel dispatched from Queue -> Gonna Open !"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$11;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$11;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2200(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$11;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2300(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->prepareUri(IIZ)Landroid/broadcast/helper/MtvURI;

    move-result-object v0

    .line 1034
    .local v0, "mNewURI":Landroid/broadcast/helper/MtvURI;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$11;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2100(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v1

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    .line 1036
    .end local v0    # "mNewURI":Landroid/broadcast/helper/MtvURI;
    :cond_0
    return-void
.end method
