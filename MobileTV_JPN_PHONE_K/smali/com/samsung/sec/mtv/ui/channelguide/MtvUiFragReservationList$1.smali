.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$1;
.super Ljava/lang/Object;
.source "MtvUiFragReservationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->reenablListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->access$200(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 550
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->access$200(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 551
    return-void
.end method
