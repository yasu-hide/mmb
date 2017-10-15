.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;
.super Ljava/lang/Object;
.source "MtvUiChannelSchedule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->reserveContextMenuDialog(Ljava/lang/String;ILcom/samsung/sec/mtv/provider/MtvProgram;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

.field final synthetic val$bIsNowOnAir:Z

.field final synthetic val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;Lcom/samsung/sec/mtv/provider/MtvProgram;Z)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iput-boolean p3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$bIsNowOnAir:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 18
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 702
    const/16 v17, 0x0

    .line 703
    .local v17, "updatedReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    const/4 v13, 0x0

    .line 704
    .local v13, "mServiceID":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    if-nez v3, :cond_0

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    new-instance v4, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$102(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 707
    :cond_0
    const-string v3, "MtvUiChannelSchedule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "program.mPch :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v13

    .line 709
    const-string v3, "MtvUiChannelSchedule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "program.mPch :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mServiceID :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    packed-switch p2, :pswitch_data_0

    .line 813
    :goto_0
    return-void

    .line 715
    :pswitch_0
    const/4 v2, 0x0

    .line 716
    .local v2, "programNow":Lcom/samsung/sec/mtv/provider/MtvProgram;
    const/4 v15, 0x0

    .line 718
    .local v15, "reservationType":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$bIsNowOnAir:Z

    if-eqz v3, :cond_2

    .line 719
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setIsNowOnAirReservation(Z)V

    .line 720
    new-instance v2, Lcom/samsung/sec/mtv/provider/MtvProgram;

    .end local v2    # "programNow":Lcom/samsung/sec/mtv/provider/MtvProgram;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget v4, v4, Lcom/samsung/sec/mtv/provider/MtvProgram;->mVch:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvProgram;->mLock:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x7d0

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v8, v8, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-object v10, v10, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-object v11, v11, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmDetail:Ljava/lang/String;

    invoke-direct/range {v2 .. v11}, Lcom/samsung/sec/mtv/provider/MtvProgram;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;)V

    .line 725
    .restart local v2    # "programNow":Lcom/samsung/sec/mtv/provider/MtvProgram;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v4, v4, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    const/4 v6, 0x0

    new-array v6, v6, [Z

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v16

    .line 726
    .local v16, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v6, v3, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v6, v3, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-ne v3, v13, :cond_4

    .line 727
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v3, :cond_3

    .line 728
    const/4 v15, 0x2

    .line 738
    :cond_1
    :goto_2
    const/4 v3, 0x2

    if-ne v15, v3, :cond_5

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v3, :cond_5

    .line 739
    new-instance v17, Lcom/samsung/sec/mtv/provider/MtvReservation;

    .end local v17    # "updatedReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4, v13}, Lcom/samsung/sec/mtv/provider/MtvReservation;-><init>(Lcom/samsung/sec/mtv/provider/MtvProgram;III)V

    .line 740
    .restart local v17    # "updatedReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->updateOrInsert(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    .line 749
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->setReservationAlarm(Landroid/content/Context;JZZ)V

    .line 751
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$1000()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 723
    .end local v16    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    goto/16 :goto_1

    .line 730
    .restart local v16    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_3
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 731
    const/4 v15, 0x1

    goto :goto_2

    .line 735
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 741
    :cond_5
    const/4 v3, 0x1

    if-ne v15, v3, :cond_6

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v3, :cond_6

    .line 742
    new-instance v17, Lcom/samsung/sec/mtv/provider/MtvReservation;

    .end local v17    # "updatedReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4, v13}, Lcom/samsung/sec/mtv/provider/MtvReservation;-><init>(Lcom/samsung/sec/mtv/provider/MtvProgram;III)V

    .line 743
    .restart local v17    # "updatedReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->updateOrInsert(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    goto :goto_3

    .line 745
    :cond_6
    new-instance v17, Lcom/samsung/sec/mtv/provider/MtvReservation;

    .end local v17    # "updatedReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4, v13}, Lcom/samsung/sec/mtv/provider/MtvReservation;-><init>(Lcom/samsung/sec/mtv/provider/MtvProgram;III)V

    .line 746
    .restart local v17    # "updatedReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->updateOrInsert(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    goto :goto_3

    .line 757
    .end local v2    # "programNow":Lcom/samsung/sec/mtv/provider/MtvProgram;
    .end local v15    # "reservationType":I
    .end local v16    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :pswitch_1
    const/4 v15, 0x0

    .line 759
    .restart local v15    # "reservationType":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$bIsNowOnAir:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 760
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 761
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 762
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v3, v12}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 767
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v4, v4, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    const/4 v6, 0x0

    new-array v6, v6, [Z

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v16

    .line 768
    .restart local v16    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v16, :cond_b

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v6, v3, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_b

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v6, v3, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_b

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-ne v3, v13, :cond_b

    .line 769
    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v3, :cond_a

    .line 770
    const/4 v15, 0x2

    .line 780
    :cond_8
    :goto_4
    if-eqz v15, :cond_9

    if-eqz v16, :cond_c

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-eqz v3, :cond_c

    .line 781
    :cond_9
    new-instance v17, Lcom/samsung/sec/mtv/provider/MtvReservation;

    .end local v17    # "updatedReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->val$program:Lcom/samsung/sec/mtv/provider/MtvProgram;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v5, v13}, Lcom/samsung/sec/mtv/provider/MtvReservation;-><init>(Lcom/samsung/sec/mtv/provider/MtvProgram;III)V

    .line 782
    .restart local v17    # "updatedReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->updateOrInsert(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->setReservationAlarm(Landroid/content/Context;JZZ)V

    .line 785
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$1000()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->notifyDataSetChanged()V

    .line 806
    :goto_5
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$1000()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 772
    :cond_a
    if-eqz v16, :cond_8

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 773
    const/4 v15, 0x1

    goto :goto_4

    .line 777
    :cond_b
    const/4 v15, 0x0

    goto :goto_4

    .line 787
    :cond_c
    const/4 v14, -0x1

    .line 788
    .local v14, "msg":I
    const v14, 0x7f0702ce

    .line 790
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07020c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070298

    new-instance v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07020b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_5

    .line 711
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
