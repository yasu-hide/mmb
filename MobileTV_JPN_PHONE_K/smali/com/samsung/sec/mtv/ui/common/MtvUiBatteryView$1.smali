.class Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$1;
.super Landroid/os/Handler;
.source "MtvUiBatteryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 394
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 401
    :goto_0
    return-void

    .line 396
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->postInvalidate()V

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
