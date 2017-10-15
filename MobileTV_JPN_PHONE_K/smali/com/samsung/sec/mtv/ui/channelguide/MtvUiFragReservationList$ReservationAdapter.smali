.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;
.super Landroid/widget/CursorAdapter;
.source "MtvUiFragReservationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReservationAdapter"
.end annotation


# static fields
.field private static final ICON_FAIL:I = 0x1

.field private static final ICON_NORMAL:I


# instance fields
.field private final mIcon:[[Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 294
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    .line 295
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 285
    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->mIcon:[[Landroid/graphics/drawable/Drawable;

    .line 297
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 300
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->mIcon:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 301
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->mIcon:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 302
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->mIcon:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 303
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->mIcon:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 304
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 308
    invoke-static/range {p3 .. p3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v7

    .line 309
    .local v7, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 310
    const/4 v11, 0x0

    .line 313
    .local v11, "strDate":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    const-string v13, "en"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 315
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    invoke-static {v12}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 316
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "M/d (EEE) H:mm"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/util/Date;

    iget-wide v14, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 319
    :goto_0
    iget-wide v12, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_3

    .line 321
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    invoke-static {v12}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 322
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "H:mm"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/util/Date;

    iget-wide v0, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 380
    :goto_1
    const-string v3, ""

    .line 381
    .local v3, "channelName":Ljava/lang/String;
    iget v12, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    iget v13, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByVChannel(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v2

    .line 382
    .local v2, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v2, :cond_14

    .line 383
    iget-object v12, v2, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 384
    iget-object v3, v2, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 389
    :cond_0
    :goto_2
    const v12, 0x7f0a0074

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->mIcon:[[Landroid/graphics/drawable/Drawable;

    iget v14, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->selectStatusIconIndex(Lcom/samsung/sec/mtv/provider/MtvReservation;)I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    const v12, 0x7f0a012d

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    const v12, 0x7f0a012c

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v13, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    const v12, 0x7f0a006a

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 395
    return-void

    .line 318
    .end local v2    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v3    # "channelName":Ljava/lang/String;
    :cond_1
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "M/d (EEE) h:mm a"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/util/Date;

    iget-wide v14, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 324
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "h:mm a"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/util/Date;

    iget-wide v0, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 327
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " -            "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 332
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    invoke-static {v12}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 334
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "M/d (EEE) H:mm"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/util/Date;

    iget-wide v14, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 352
    :goto_3
    iget-wide v12, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_13

    .line 354
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    invoke-static {v12}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 355
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "H:mm"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/util/Date;

    iget-wide v0, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 337
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ja"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 339
    new-instance v8, Ljava/util/GregorianCalendar;

    sget-object v12, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-direct {v8, v12}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 340
    .local v8, "start":Ljava/util/Calendar;
    iget-wide v12, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-virtual {v8, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 341
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getHours()I

    move-result v9

    .line 342
    .local v9, "startHrs":I
    const/16 v12, 0xc

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 343
    .local v10, "startMins":I
    const/16 v12, 0xc

    if-ge v9, v12, :cond_8

    .line 344
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "M/d (EEE) "

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/util/Date;

    iget-wide v0, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v13}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v9, :cond_6

    const-string v12, "0"

    :goto_4
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v12, 0xa

    if-ge v10, v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_5
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    :cond_6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_4

    :cond_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_5

    .line 346
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "M/d (EEE) "

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/util/Date;

    iget-wide v0, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v12, 0xc

    if-ne v9, v12, :cond_9

    const-string v12, "0"

    :goto_6
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v12, 0xa

    if-ge v10, v12, :cond_a

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_7
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    :cond_9
    add-int/lit8 v12, v9, -0xc

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_6

    :cond_a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_7

    .line 350
    .end local v8    # "start":Ljava/util/Calendar;
    .end local v9    # "startHrs":I
    .end local v10    # "startMins":I
    :cond_b
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "M/d (EEE) a h:mm"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/util/Date;

    iget-wide v14, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 358
    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ja"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 360
    new-instance v4, Ljava/util/GregorianCalendar;

    sget-object v12, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-direct {v4, v12}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 361
    .local v4, "end":Ljava/util/Calendar;
    iget-wide v12, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 362
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getHours()I

    move-result v5

    .line 363
    .local v5, "endHrs":I
    const/16 v12, 0xc

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 364
    .local v6, "endMins":I
    const/16 v12, 0xc

    if-ge v5, v12, :cond_f

    .line 365
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v13}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v5, :cond_d

    const-string v12, "0"

    :goto_8
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v12, 0xa

    if-ge v6, v12, :cond_e

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_9
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    :cond_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_8

    :cond_e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_9

    .line 368
    :cond_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v12, 0xc

    if-ne v5, v12, :cond_10

    const-string v12, "0"

    :goto_a
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v12, 0xa

    if-ge v6, v12, :cond_11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_b
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    :cond_10
    add-int/lit8 v12, v5, -0xc

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_a

    :cond_11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_b

    .line 373
    .end local v4    # "end":Ljava/util/Calendar;
    .end local v5    # "endHrs":I
    .end local v6    # "endMins":I
    :cond_12
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "a h:mm"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/util/Date;

    iget-wide v0, v7, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 377
    :cond_13
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " -            "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 386
    .restart local v2    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .restart local v3    # "channelName":Ljava/lang/String;
    :cond_14
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "channel is null "

    invoke-static {v12, v13}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public selectStatusIconIndex(Lcom/samsung/sec/mtv/provider/MtvReservation;)I
    .locals 8
    .param p1, "reservation"    # Lcom/samsung/sec/mtv/provider/MtvReservation;

    .prologue
    .line 403
    const/4 v0, -0x1

    .line 405
    .local v0, "returnIconIndex":I
    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v1, :cond_0

    iget-wide v2, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 408
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "selectStatusIconIndex() : ooops!!! hit an expired reservation,setting it failed"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v0, 0x1

    .line 410
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, p1, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 416
    :goto_0
    return v0

    .line 412
    :cond_0
    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 413
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 415
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
