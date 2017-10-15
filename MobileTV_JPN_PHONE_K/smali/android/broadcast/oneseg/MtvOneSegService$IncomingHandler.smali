.class Landroid/broadcast/oneseg/MtvOneSegService$IncomingHandler;
.super Landroid/os/Handler;
.source "MtvOneSegService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/broadcast/oneseg/MtvOneSegService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncomingHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 193
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 194
    return-void
.end method
