.class Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;
.super Ljava/lang/Object;
.source "MtvUiRemoveList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->removeFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 696
    sput-boolean v5, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->sIsDeleting:Z

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, "count":I
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 699
    const-string v2, "MtvUiRemoveList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFile:mMtvFiles.length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mTVFilesCount :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1200(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 702
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1300(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_7

    .line 703
    const-string v2, "MtvUiRemoveList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFile:mItemsCheckedState item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mTVFilesCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1200(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getIndex()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->deleteTvFile(ILjava/lang/String;Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;)V

    .line 707
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1400(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestFileIndex()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 708
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1400(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestFileIndex(I)V

    .line 712
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1300(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Z

    move-result-object v2

    aput-boolean v6, v2, v1

    .line 714
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v2

    if-eq v5, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v2

    if-ne v5, v2, :cond_6

    .line 717
    :cond_1
    const-string v2, "MtvUiRemoveList"

    const-string v3, "removeFile:mItemsCheckedState break"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_2
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1400(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestFileIndex()I

    move-result v2

    if-lt v2, v0, :cond_3

    .line 728
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1400(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1400(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestFileIndex()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestFileIndex(I)V

    .line 731
    :cond_3
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1200(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I

    move-result v2

    if-gtz v2, :cond_4

    .line 733
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1500(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V

    .line 737
    .end local v1    # "i":I
    :cond_4
    return-void

    .line 709
    .restart local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1400(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestFileIndex()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1400(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestFileIndex()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 720
    :cond_6
    const-string v2, "MtvUiRemoveList"

    const-string v3, "removeFile:mItemsCheckedState continue"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1210(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I

    .line 701
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
