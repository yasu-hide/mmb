.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;
.super Landroid/os/Handler;
.source "MtvUiChannelSchedule.java"


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
    .line 96
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    new-instance v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x13d
        :pswitch_0
    .end packed-switch
.end method
