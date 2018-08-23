.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;
.super Landroid/os/Handler;
.source "MmbFcBrowMwView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "THandler"
.end annotation


# instance fields
.field final synthetic this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;


# direct methods
.method private constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)V
    .locals 0

    .prologue
    .line 4759
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;)V
    .locals 0
    .param p1, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;
    .param p2, "x1"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;

    .prologue
    .line 4759
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "aMsg"    # Landroid/os/Message;

    .prologue
    .line 4763
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 4779
    :cond_0
    :goto_0
    return-void

    .line 4765
    :pswitch_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->hide()V

    goto :goto_0

    .line 4768
    :pswitch_1
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$5100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)I

    move-result v0

    .line 4770
    .local v0, "pos":I
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$5200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$5300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4771
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 4772
    rem-int/lit16 v1, v0, 0x3e8

    rsub-int v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 4776
    .end local v0    # "pos":I
    :pswitch_2
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$5400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)V

    goto :goto_0

    .line 4763
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
