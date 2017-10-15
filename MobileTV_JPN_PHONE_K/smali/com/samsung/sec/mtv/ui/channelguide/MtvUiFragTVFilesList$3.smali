.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;
.super Ljava/lang/Object;
.source "MtvUiFragTVFilesList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->onPostUpdate([Lcom/samsung/sec/mtv/provider/MtvFile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)V
    .locals 0

    .prologue
    .line 846
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 849
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 851
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$800()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$800()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->getAdapterData()[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 853
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Adapter Data not changed... Retaining the old Adapter..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$1000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$800()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 866
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$1000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 867
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$1000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 870
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$1100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$1100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSelectedFileIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 872
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$1000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$1100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSelectedFileIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 876
    :cond_0
    return-void

    .line 857
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Adapter Data  changed... Creating new  Adapter..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$900(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030038

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;-><init>(Landroid/content/Context;I[Lcom/samsung/sec/mtv/provider/MtvFile;)V

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$802(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;

    goto :goto_0

    .line 863
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$802(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;

    goto :goto_0
.end method
