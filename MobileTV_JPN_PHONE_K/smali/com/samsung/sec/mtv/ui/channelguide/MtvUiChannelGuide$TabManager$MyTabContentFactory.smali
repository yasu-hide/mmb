.class final Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$MyTabContentFactory;
.super Ljava/lang/Object;
.source "MtvUiChannelGuide.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyTabContentFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/app/Activity;

.field final synthetic this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;Landroid/app/Activity;)V
    .locals 0
    .param p2, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$MyTabContentFactory;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$MyTabContentFactory;->mContext:Landroid/app/Activity;

    .line 642
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 646
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$MyTabContentFactory;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 647
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 648
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 649
    return-object v0
.end method
