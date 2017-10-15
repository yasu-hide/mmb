.class Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable;
.super Ljava/lang/Object;
.source "MtvUiFilePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtvTmpFileManagerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V
    .locals 0

    .prologue
    .line 2693
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2695
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2699
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/broadcast/sdtv/SDtvControl;->updateTVFilesDB()V

    .line 2702
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2708
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    new-instance v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable$1;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable$1;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable;)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2713
    return-void

    .line 2703
    :catch_0
    move-exception v0

    .line 2705
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
