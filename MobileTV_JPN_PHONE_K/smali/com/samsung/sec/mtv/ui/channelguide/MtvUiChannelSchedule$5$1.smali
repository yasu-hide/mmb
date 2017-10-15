.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5$1;
.super Ljava/lang/Object;
.source "MtvUiChannelSchedule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 796
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v2, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->delete(Landroid/content/Context;JLandroid/net/Uri;)V

    .line 797
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v2, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v1, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->setReservationAlarm(Landroid/content/Context;JZZ)V

    .line 799
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$1000()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->notifyDataSetChanged()V

    .line 800
    return-void
.end method
