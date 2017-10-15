.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$1;
.super Ljava/lang/Object;
.source "MtvUiFragChannelList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->scrollChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 510
    :cond_1
    return-void
.end method
