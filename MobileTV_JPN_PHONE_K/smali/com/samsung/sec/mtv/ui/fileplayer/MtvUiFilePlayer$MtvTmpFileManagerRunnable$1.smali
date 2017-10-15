.class Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable$1;
.super Ljava/lang/Object;
.source "MtvUiFilePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable;)V
    .locals 0

    .prologue
    .line 2708
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable$1;->this$1:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable$1;->this$1:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->checkIsFileRunning()V

    .line 2711
    return-void
.end method
