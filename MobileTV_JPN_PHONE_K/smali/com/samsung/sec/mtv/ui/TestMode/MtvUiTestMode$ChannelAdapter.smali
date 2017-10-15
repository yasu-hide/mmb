.class public Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$ChannelAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MtvUiTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContainer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutId:I

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$ChannelAdapter;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .line 714
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 715
    iput-object p4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$ChannelAdapter;->mContainer:Ljava/util/List;

    .line 716
    iput p3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$ChannelAdapter;->mLayoutId:I

    .line 717
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$ChannelAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 718
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 721
    move-object v1, p2

    .line 722
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_0

    .line 723
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$ChannelAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$ChannelAdapter;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 725
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$ChannelAdapter;->mContainer:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 726
    .local v0, "channel":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 728
    const v2, 0x7f0a011a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    return-object v1
.end method
