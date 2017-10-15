.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$2;
.super Ljava/lang/Object;
.source "MtvUiChannelSchedule.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x0

    .line 551
    const-string v4, "MtvUiChannelSchedule"

    const-string v5, "mScheduleListListener"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_3

    .line 555
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/provider/MtvProgram;

    .line 556
    .local v1, "pgm":Lcom/samsung/sec/mtv/provider/MtvProgram;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 557
    .local v2, "progInfo":Landroid/os/Bundle;
    const-string v4, "pgmPch"

    iget v5, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 558
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByPChannel(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 559
    .local v0, "mchannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v0, :cond_0

    .line 560
    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 561
    const-string v4, "channelName"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v6, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    new-array v5, v8, [Z

    invoke-static {v4, v6, v7, v5}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v3

    .line 566
    .local v3, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v0, :cond_1

    .line 567
    const-string v4, "channelName"

    iget-object v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_1
    const-string v4, "startTime"

    iget-wide v6, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 570
    const-string v4, "endtime"

    iget-wide v6, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 571
    const-string v4, "programName"

    iget-object v5, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v4, "MtvUiChannelSchedule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " pgm.mPgmDetail :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmDetail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v4, "programDesc"

    iget-object v5, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmDetail:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v4, "reservationType"

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v5, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->checkForReservationType(Lcom/samsung/sec/mtv/provider/MtvProgram;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    const-string v4, "pgmVch"

    iget v5, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mVch:I

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    if-eqz v3, :cond_2

    .line 577
    const-string v4, "rsrvStatus"

    iget v5, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 579
    :cond_2
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$600(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)I

    move-result v4

    if-ne p3, v4, :cond_5

    .line 580
    const-string v4, "isNowOnAir"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 584
    :goto_1
    sget-object v4, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const/high16 v5, 0x7f0a0000

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v4, v2, v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addUnManagedFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;Landroid/os/Bundle;ILandroid/app/Activity;)V

    .line 585
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->setSelectItemTextColor(I)V

    .line 587
    .end local v0    # "mchannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v1    # "pgm":Lcom/samsung/sec/mtv/provider/MtvProgram;
    .end local v2    # "progInfo":Landroid/os/Bundle;
    .end local v3    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_3
    return-void

    .line 563
    .restart local v0    # "mchannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .restart local v1    # "pgm":Lcom/samsung/sec/mtv/provider/MtvProgram;
    .restart local v2    # "progInfo":Landroid/os/Bundle;
    :cond_4
    const-string v4, "channelName"

    iget-object v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    .restart local v3    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_5
    const-string v4, "isNowOnAir"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method
