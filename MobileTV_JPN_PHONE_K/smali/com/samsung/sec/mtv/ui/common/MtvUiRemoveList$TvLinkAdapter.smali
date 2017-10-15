.class Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MtvUiRemoveList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TvLinkAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private check:Landroid/widget/CheckBox;

.field private mMtvLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rsrcID"    # I

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .line 1404
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1405
    return-void
.end method

.method public constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/content/Context;I[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rsrcID"    # I
    .param p4, "object"    # [Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .line 1408
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1409
    iput-object p4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->mMtvLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 1410
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 1415
    move-object v3, p2

    .line 1416
    .local v3, "tvLinkView":Landroid/view/View;
    if-nez v3, :cond_0

    .line 1417
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 1418
    .local v4, "vi":Landroid/view/LayoutInflater;
    const v5, 0x7f030013

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1422
    .end local v4    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->mMtvLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    aget-object v2, v5, p1

    .line 1423
    .local v2, "link":Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
    if-eqz v2, :cond_1

    .line 1424
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1700(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1426
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1428
    const v5, 0x7f0a0068

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1429
    .local v0, "icon":Landroid/widget/ImageView;
    const v5, 0x7f0a0069

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1431
    .local v1, "infoTextView1":Landroid/widget/TextView;
    const v5, 0x7f0a006a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1433
    const v5, 0x7f0a006b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->check:Landroid/widget/CheckBox;

    .line 1434
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->check:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1300(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Z

    move-result-object v6

    aget-boolean v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1436
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->check:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 1437
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->check:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 1440
    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getCproBMType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1456
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1464
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "infoTextView1":Landroid/widget/TextView;
    :goto_1
    return-object v3

    .line 1442
    .restart local v0    # "icon":Landroid/widget/ImageView;
    .restart local v1    # "infoTextView1":Landroid/widget/TextView;
    :pswitch_0
    const v5, 0x7f020088

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1446
    :pswitch_1
    const v5, 0x7f020089

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1450
    :pswitch_2
    const v5, 0x7f02008f

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1460
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "infoTextView1":Landroid/widget/TextView;
    :cond_1
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1700(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1462
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 1440
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setChecked(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "isChecked"    # Z

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;IZ)V

    .line 1477
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1478
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->notifyDataSetChanged()V

    .line 1479
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkItemCount(I)V

    .line 1480
    return-void
.end method

.method public toggle(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1467
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1900(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1468
    .local v0, "isChecked":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1, p1, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;IZ)V

    .line 1469
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1470
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->notifyDataSetChanged()V

    .line 1471
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    iget-object v2, v2, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkItemCount(I)V

    .line 1472
    return-void

    .line 1467
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
