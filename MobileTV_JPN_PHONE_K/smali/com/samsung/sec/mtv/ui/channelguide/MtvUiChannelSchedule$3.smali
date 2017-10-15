.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;
.super Ljava/lang/Object;
.source "MtvUiChannelSchedule.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 594
    .local v0, "listView":Landroid/widget/ListView;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 596
    const-string v3, "MtvUiChannelSchedule"

    const-string v4, "mScheduleListLongListener"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/provider/MtvProgram;

    .line 598
    .local v1, "pgm":Lcom/samsung/sec/mtv/provider/MtvProgram;
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v3, v1, p2, p3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;Lcom/samsung/sec/mtv/provider/MtvProgram;Landroid/view/View;I)Z

    move-result v2

    .line 599
    .local v2, "retVal":Z
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$800(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3$1;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 606
    return v2
.end method
