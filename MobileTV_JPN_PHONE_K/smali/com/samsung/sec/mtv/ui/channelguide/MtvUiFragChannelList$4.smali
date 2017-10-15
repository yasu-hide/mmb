.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$4;
.super Ljava/lang/Object;
.source "MtvUiFragChannelList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1603
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$4;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1605
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartScanProgessBar: Cancel pressed issuing cancel scan"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$4;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$800(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)V

    .line 1607
    return-void
.end method
