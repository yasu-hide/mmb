.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$2;
.super Ljava/lang/Object;
.source "MtvUiFragChannelList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 1619
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1621
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartScanProgessBar onCancel: Progress Dialog cancelled"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$800(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)V

    .line 1623
    return-void
.end method
