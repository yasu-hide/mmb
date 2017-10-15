.class Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$1;
.super Landroid/os/Handler;
.source "MtvUiFragHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    .line 102
    return-void
.end method
