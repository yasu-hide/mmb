.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MtvUiFragTVLinkList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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
.field private mMtvLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rsrcID"    # I

    .prologue
    .line 456
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 457
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rsrcID"    # I
    .param p3, "object"    # [Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .prologue
    .line 460
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 461
    iput-object p3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkAdapter;->mMtvLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 462
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 466
    move-object v3, p2

    .line 467
    .local v3, "tvLinkView":Landroid/view/View;
    if-nez v3, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 469
    .local v4, "vi":Landroid/view/LayoutInflater;
    const v5, 0x7f030013

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 472
    .end local v4    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkAdapter;->mMtvLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    aget-object v2, v5, p1

    .line 473
    .local v2, "link":Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
    if-eqz v2, :cond_1

    .line 474
    const v5, 0x7f0a0068

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 475
    .local v0, "icon":Landroid/widget/ImageView;
    const v5, 0x7f0a0069

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 477
    .local v1, "infoTextView1":Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getCproBMType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 492
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

    .line 493
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 496
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "infoTextView1":Landroid/widget/TextView;
    :cond_1
    return-object v3

    .line 479
    .restart local v0    # "icon":Landroid/widget/ImageView;
    .restart local v1    # "infoTextView1":Landroid/widget/TextView;
    :pswitch_0
    const v5, 0x7f020088

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 483
    :pswitch_1
    const v5, 0x7f020089

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 487
    :pswitch_2
    const v5, 0x7f02008f

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
