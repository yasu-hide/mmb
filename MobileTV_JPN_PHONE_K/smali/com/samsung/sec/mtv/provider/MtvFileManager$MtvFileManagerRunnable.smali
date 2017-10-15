.class Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerRunnable;
.super Ljava/lang/Object;
.source "MtvFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/provider/MtvFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MtvFileManagerRunnable"
.end annotation


# static fields
.field private static final MAX_TRIES:I = 0x5


# instance fields
.field private mCurrentTry:I

.field private mListener:Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;)V
    .locals 1
    .param p1, "mListener"    # Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;

    .prologue
    .line 1670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1668
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerRunnable;->mCurrentTry:I

    .line 1671
    iput-object p1, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerRunnable;->mListener:Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;

    .line 1672
    return-void
.end method

.method private fetchTVFilesList()[Lcom/samsung/sec/mtv/provider/MtvFile;
    .locals 1

    .prologue
    .line 1717
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerRunnable;->mCurrentTry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerRunnable;->mCurrentTry:I

    .line 1718
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getAvailableTVRecFilesEx(Z)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1676
    const/4 v1, 0x0

    .line 1679
    .local v1, "isProcessingContinued":Z
    :cond_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerRunnable;->fetchTVFilesList()[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->access$202([Lcom/samsung/sec/mtv/provider/MtvFile;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 1680
    const-string v2, "MtvFileManager"

    const-string v3, "availableTvFiles changed.... Posting to MtvFileManagerListener"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->access$300()V

    .line 1683
    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->access$400()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1685
    const/4 v1, 0x1

    .line 1686
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerRunnable;->mListener:Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;

    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->access$200()[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;->onPostUpdate([Lcom/samsung/sec/mtv/provider/MtvFile;Z)V

    .line 1687
    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->access$200()[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->access$200()[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1

    .line 1711
    :goto_0
    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerRunnable;->mCurrentTry:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    .line 1713
    :goto_1
    return-void

    .line 1695
    :cond_1
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1697
    :catch_0
    move-exception v0

    .line 1699
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "MtvFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException occured !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1705
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const-string v2, "MtvFileManager"

    const-string v3, "DB Not  Modified ! Returning !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    const/4 v1, 0x0

    .line 1707
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerRunnable;->mListener:Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;

    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->access$200()[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;->onPostUpdate([Lcom/samsung/sec/mtv/provider/MtvFile;Z)V

    goto :goto_1
.end method
