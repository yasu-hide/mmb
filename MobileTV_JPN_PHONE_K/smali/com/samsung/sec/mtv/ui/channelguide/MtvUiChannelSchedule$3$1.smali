.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3$1;
.super Ljava/lang/Object;
.source "MtvUiChannelSchedule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 602
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 603
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mScheduleListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 604
    return-void
.end method
