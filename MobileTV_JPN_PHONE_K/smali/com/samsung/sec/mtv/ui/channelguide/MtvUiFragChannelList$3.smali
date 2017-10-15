.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$3;
.super Ljava/lang/Object;
.source "MtvUiFragChannelList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->StartScanProgessBar(Landroid/content/Context;)V
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
    .line 1610
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 1612
    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 1613
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartScanProgessBar:onKey KEYCODE_MENU is ignore"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    const/4 v0, 0x1

    .line 1616
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
