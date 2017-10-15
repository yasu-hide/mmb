.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$2;
.super Ljava/lang/Object;
.source "MtvUiFragTVFilesList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Remove dialog progress"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$200(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 122
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$302(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$400(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)V

    .line 125
    return-void
.end method
