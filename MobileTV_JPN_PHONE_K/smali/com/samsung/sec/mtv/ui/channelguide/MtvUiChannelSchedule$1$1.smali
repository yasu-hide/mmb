.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1$1;
.super Ljava/lang/Object;
.source "MtvUiChannelSchedule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;

    iget-object v2, v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$002(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;

    iget-object v2, v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->updateProgramsByVch(Landroid/content/Context;[Landroid/broadcast/helper/types/MtvOneSegProgram;IZ)Z

    .line 109
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$200(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;I)V

    .line 110
    return-void
.end method
