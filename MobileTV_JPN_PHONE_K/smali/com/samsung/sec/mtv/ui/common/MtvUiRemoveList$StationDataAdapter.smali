.class public Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MtvUiRemoveList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StationDataAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private check:Landroid/widget/CheckBox;

.field private mCount:I

.field private mCountText:Landroid/widget/TextView;

.field private mNameText:Landroid/widget/TextView;

.field private mTitleName:[Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .line 1344
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1345
    return-void
.end method

.method public constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/String;

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .line 1349
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1350
    iput-object p4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->mTitleName:[Ljava/lang/String;

    .line 1351
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 1354
    move-object v0, p2

    .line 1356
    .local v0, "stationDataView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1357
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1358
    .local v2, "vi":Landroid/view/LayoutInflater;
    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1360
    .end local v2    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->mTitleName:[Ljava/lang/String;

    aget-object v1, v3, p1

    .line 1361
    .local v1, "temp":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->deleteStationData_GetNetworkItemCount(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->mCount:I

    .line 1363
    const v3, 0x7f0a005c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->mNameText:Landroid/widget/TextView;

    .line 1364
    const v3, 0x7f0a005d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->mCountText:Landroid/widget/TextView;

    .line 1366
    const v3, 0x7f0a005e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->check:Landroid/widget/CheckBox;

    .line 1367
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->check:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1369
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->check:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1300(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Z

    move-result-object v4

    aget-boolean v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1370
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->mNameText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1300(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Z

    move-result-object v4

    aget-boolean v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1371
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->mCountText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1300(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Z

    move-result-object v4

    aget-boolean v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1373
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->check:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 1374
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->check:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 1376
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->mNameText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->mCountText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1378
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->mCountText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->mCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    return-object v0
.end method

.method public setChecked(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "isChecked"    # Z

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;IZ)V

    .line 1394
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1395
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->notifyDataSetChanged()V

    .line 1396
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2500(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkItemCount(I)V

    .line 1397
    return-void
.end method

.method public toggle(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1384
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1900(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1385
    .local v0, "isChecked":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1, p1, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;IZ)V

    .line 1386
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1387
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->notifyDataSetChanged()V

    .line 1388
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2500(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkItemCount(I)V

    .line 1389
    return-void

    .line 1384
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
