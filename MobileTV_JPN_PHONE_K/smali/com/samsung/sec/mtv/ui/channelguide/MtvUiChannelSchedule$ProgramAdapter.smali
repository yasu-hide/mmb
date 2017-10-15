.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;
.super Landroid/widget/BaseAdapter;
.source "MtvUiChannelSchedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgramAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mtvPrograms:[Lcom/samsung/sec/mtv/provider/MtvProgram;

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;Landroid/content/Context;[Lcom/samsung/sec/mtv/provider/MtvProgram;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "objects"    # [Lcom/samsung/sec/mtv/provider/MtvProgram;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 428
    iput-object p3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->mtvPrograms:[Lcom/samsung/sec/mtv/provider/MtvProgram;

    .line 429
    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->context:Landroid/content/Context;

    .line 430
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 434
    return-void
.end method

.method private isDatechanged(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 528
    const/4 v4, 0x0

    .line 529
    .local v4, "separator":Z
    if-nez p1, :cond_0

    .line 530
    const/4 v4, 0x1

    .line 541
    :goto_0
    return v4

    .line 532
    :cond_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->mtvPrograms:[Lcom/samsung/sec/mtv/provider/MtvProgram;

    add-int/lit8 v6, p1, -0x1

    aget-object v3, v5, v6

    .line 533
    .local v3, "previousProgram":Lcom/samsung/sec/mtv/provider/MtvProgram;
    new-instance v2, Ljava/sql/Date;

    iget-wide v6, v3, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    invoke-direct {v2, v6, v7}, Ljava/sql/Date;-><init>(J)V

    .line 534
    .local v2, "preDate":Ljava/sql/Date;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->mtvPrograms:[Lcom/samsung/sec/mtv/provider/MtvProgram;

    aget-object v1, v5, p1

    .line 535
    .local v1, "curProgram":Lcom/samsung/sec/mtv/provider/MtvProgram;
    new-instance v0, Ljava/sql/Date;

    iget-wide v6, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    invoke-direct {v0, v6, v7}, Ljava/sql/Date;-><init>(J)V

    .line 536
    .local v0, "curDate":Ljava/sql/Date;
    invoke-virtual {v2}, Ljava/sql/Date;->getDay()I

    move-result v5

    invoke-virtual {v0}, Ljava/sql/Date;->getDay()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 537
    const/4 v4, 0x1

    goto :goto_0

    .line 539
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->mtvPrograms:[Lcom/samsung/sec/mtv/provider/MtvProgram;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->mtvPrograms:[Lcom/samsung/sec/mtv/provider/MtvProgram;

    array-length v0, v0

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/samsung/sec/mtv/provider/MtvProgram;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->mtvPrograms:[Lcom/samsung/sec/mtv/provider/MtvProgram;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->getItem(I)Lcom/samsung/sec/mtv/provider/MtvProgram;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 452
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->mtvPrograms:[Lcom/samsung/sec/mtv/provider/MtvProgram;

    aget-object v7, v13, p1

    .line 461
    .local v7, "program":Lcom/samsung/sec/mtv/provider/MtvProgram;
    const/4 v8, 0x0

    .line 462
    .local v8, "programView":Landroid/view/View;
    const/4 v5, 0x0

    .line 463
    .local v5, "mCurrentServiceID":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030015

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 464
    if-eqz v7, :cond_3

    .line 465
    invoke-virtual {v8, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 466
    const v13, 0x7f0a0072

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 467
    .local v11, "seperatorTextView":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->isDatechanged(I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 468
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v13, "yyyy.M.d(EEE)"

    invoke-direct {v10, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 469
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v13, Ljava/sql/Date;

    iget-wide v14, v7, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    invoke-direct {v13, v14, v15}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v10, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "H:mm"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/sql/Date;

    iget-wide v0, v7, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 475
    .local v12, "strDate":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "H:mm"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/sql/Date;

    iget-wide v0, v7, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    move-wide/from16 v16, v0

    invoke-direct/range {v15 .. v17}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 477
    const v13, 0x7f0a0074

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 478
    .local v4, "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v13}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 479
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v13}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v5

    .line 480
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->context:Landroid/content/Context;

    iget-wide v14, v7, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Z

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v16}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v9

    .line 483
    .local v9, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v9, :cond_6

    iget v13, v9, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v13, :cond_6

    iget-wide v14, v9, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    iget-wide v0, v7, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-nez v13, :cond_6

    iget-wide v14, v9, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    iget-wide v0, v7, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-nez v13, :cond_6

    iget v13, v9, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-ne v13, v5, :cond_6

    .line 484
    if-eqz v9, :cond_5

    iget v13, v9, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v13, :cond_5

    .line 485
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v13}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$400(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)[Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 490
    :cond_1
    :goto_1
    const/16 v13, 0xff

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 498
    :goto_2
    const v13, 0x7f0a0075

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    const v13, 0x7f0a0076

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-object v14, v7, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v13}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v13

    if-nez v13, :cond_2

    .line 501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    new-instance v14, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v15}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v13, v14}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$002(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 503
    :cond_2
    const/4 v6, 0x0

    .line 504
    .local v6, "pgm":Landroid/broadcast/helper/types/MtvOneSegProgram;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$502(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 506
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v13}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getCurrentProgram()Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v6

    .line 508
    if-eqz v6, :cond_8

    iget-wide v14, v7, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    invoke-virtual {v6}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getStartTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_8

    iget-wide v14, v7, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    invoke-virtual {v6}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getEndTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_8

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 511
    .local v2, "currentTime":J
    const-string v13, "MtvUiChannelSchedule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "match - currentTime - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-wide v14, v7, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    cmp-long v13, v14, v2

    if-gtz v13, :cond_7

    iget-wide v14, v7, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    cmp-long v13, v14, v2

    if-ltz v13, :cond_7

    .line 514
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    move/from16 v0, p1

    invoke-static {v13, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$602(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;I)I

    .line 515
    const v13, 0x7f0a0077

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 523
    .end local v2    # "currentTime":J
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v6    # "pgm":Landroid/broadcast/helper/types/MtvOneSegProgram;
    .end local v9    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .end local v11    # "seperatorTextView":Landroid/widget/TextView;
    .end local v12    # "strDate":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object v8

    .line 471
    .restart local v11    # "seperatorTextView":Landroid/widget/TextView;
    :cond_4
    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 487
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    .restart local v9    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .restart local v12    # "strDate":Ljava/lang/String;
    :cond_5
    if-eqz v9, :cond_1

    iget v13, v9, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 488
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v13}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$400(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)[Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 493
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v13}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$400(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)[Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto/16 :goto_2

    .line 517
    .restart local v2    # "currentTime":J
    .restart local v6    # "pgm":Landroid/broadcast/helper/types/MtvOneSegProgram;
    :cond_7
    const v13, 0x7f0a0077

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 520
    .end local v2    # "currentTime":J
    :cond_8
    const v13, 0x7f0a0077

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public setSelectItemTextColor(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 456
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->notifyDataSetChanged()V

    .line 457
    return-void
.end method
