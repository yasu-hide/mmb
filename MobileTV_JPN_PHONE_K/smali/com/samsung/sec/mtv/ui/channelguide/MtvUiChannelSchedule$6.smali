.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$6;
.super Ljava/lang/Object;
.source "MtvUiChannelSchedule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->CancelReservationDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

.field final synthetic val$mStartTime:J


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;J)V
    .locals 0

    .prologue
    .line 828
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$6;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    iput-wide p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$6;->val$mStartTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 830
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$6;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$6;->val$mStartTime:J

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->delete(Landroid/content/Context;JLandroid/net/Uri;)V

    .line 831
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$6;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->notifyDataSetChanged()V

    .line 832
    return-void
.end method
