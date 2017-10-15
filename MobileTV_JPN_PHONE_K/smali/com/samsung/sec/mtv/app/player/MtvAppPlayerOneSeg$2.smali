.class Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$2;
.super Ljava/lang/Object;
.source "MtvAppPlayerOneSeg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)V
    .locals 0

    .prologue
    .line 2711
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$2;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2714
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2715
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Posting OPEN from Retry Runnable "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$2;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v1, 0x5002

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$3300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIILjava/lang/Object;)Z

    .line 2720
    :goto_0
    return-void

    .line 2718
    :cond_0
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Parameters mCurContext ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] mPendingParam ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Cannot retry channel search"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
