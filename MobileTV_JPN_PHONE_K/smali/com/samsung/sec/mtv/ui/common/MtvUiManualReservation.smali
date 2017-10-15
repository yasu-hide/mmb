.class public Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;
.super Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.source "MtvUiManualReservation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$9;,
        Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;,
        Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;
    }
.end annotation


# static fields
.field private static final DURATION_MORETHAN_4HOURS:I = 0x0

.field private static final DURATION_START_END_SAME:I = 0x2

.field private static final DURATION_VALID:I = 0x1

.field private static final MANUAL_RESERVE_EPG_SERVICE_ID:Ljava/lang/String; = "epgServiceId"

.field private static final MANUAL_RESERVE_STATE_CHANNEL:Ljava/lang/String; = "ChannelListIndex"

.field private static final MANUAL_RESERVE_TYPE_DIALOG_CHANNEL_NUMBER:I = 0x3

.field private static final MANUAL_RESERVE_TYPE_DIALOG_END_DATE:I = 0x4

.field private static final MANUAL_RESERVE_TYPE_DIALOG_END_TIME:I = 0x5

.field private static final MANUAL_RESERVE_TYPE_DIALOG_RESRV_TYPE:I = 0x0

.field private static final MANUAL_RESERVE_TYPE_DIALOG_START_DATE:I = 0x1

.field private static final MANUAL_RESERVE_TYPE_DIALOG_START_TIME:I = 0x2

.field private static final MAX_VALID_DURATION:I = 0xdbba00

.field private static final POPUP_ARGS:Ljava/lang/String; = "popupArgs"

.field private static final POPUP_TYPE:Ljava/lang/String; = "popupType"

.field private static final PROGRAM_NAME_MAX_LENGTH:I = 0xff

.field private static final TAG:Ljava/lang/String; = "MtvUiManualReservation"

.field private static final WEEK_TO_LONG:I = 0x240c8400


# instance fields
.field private endTimeFragment:Landroid/app/DialogFragment;

.field public mActionBar:Landroid/app/ActionBar;

.field private mChannelListIndex:I

.field private mChannelNum:Landroid/widget/Button;

.field mChannelServiceID:I

.field private mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

.field private mCurrentPopupType:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDummyEditTextBox:Landroid/widget/EditText;

.field private mEndDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field mEndDay:I

.field mEndHour:I

.field mEndMinute:I

.field mEndMonth:I

.field mEndYear:I

.field mEpgreservationServiceID:I

.field mIsReserveFromEPG:Z

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field mPch:I

.field private mPrevReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

.field private mProgramInputName:Landroid/widget/EditText;

.field private mProgramName:Ljava/lang/String;

.field mReservationType:I

.field private mReserveDialog:Landroid/app/AlertDialog;

.field private mReserveEndDate:Landroid/widget/Button;

.field private mReserveEndTime:Landroid/widget/Button;

.field private mReserveStartDate:Landroid/widget/Button;

.field private mReserveStartTime:Landroid/widget/Button;

.field private mReserveType:Landroid/widget/Button;

.field private mSavedBundle:Landroid/os/Bundle;

.field private mStartDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field mStartDay:I

.field mStartHour:I

.field mStartMinute:I

.field mStartMonth:I

.field mStartYear:I

.field mVch:I

.field public popupSaveDate:Ljava/util/Calendar;

.field reserve_cancel_menu:Landroid/view/MenuItem;

.field reserve_save_menu:Landroid/view/MenuItem;

.field selectedItem:I

.field private startTimeFragment:Landroid/app/DialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;-><init>()V

    .line 84
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->NONE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mCurrentPopupType:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .line 101
    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mIsReserveFromEPG:Z

    .line 106
    iput v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPch:I

    .line 107
    iput v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->selectedItem:I

    .line 114
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPrevReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 116
    iput v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    .line 117
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 118
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mSavedBundle:Landroid/os/Bundle;

    .line 120
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reserve_save_menu:Landroid/view/MenuItem;

    .line 121
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reserve_cancel_menu:Landroid/view/MenuItem;

    .line 125
    iput v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEpgreservationServiceID:I

    .line 127
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mProgramName:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->startTimeFragment:Landroid/app/DialogFragment;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->endTimeFragment:Landroid/app/DialogFragment;

    .line 1285
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 1322
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$7;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$7;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 1345
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$8;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$8;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1429
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->popupSaveDate:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mProgramName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mProgramInputName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->saveManualReserve()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reset()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelNum:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    .prologue
    .line 70
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)[Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;III)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->formatDate(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartDate:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndDate:Landroid/widget/Button;

    return-object v0
.end method

.method private convertEPGInfoToReserve(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/samsung/sec/mtv/provider/MtvReservation;
    .locals 20
    .param p1, "epgType"    # I
    .param p2, "epgPrgName"    # Ljava/lang/String;
    .param p3, "epgChNum"    # I
    .param p4, "epgStartDate"    # Ljava/lang/String;
    .param p5, "epgEndDate"    # Ljava/lang/String;
    .param p6, "epgreservationServiceID"    # I

    .prologue
    .line 858
    move/from16 v3, p3

    .line 859
    .local v3, "reservePch":I
    const/4 v4, -0x1

    .line 860
    .local v4, "reserveVch":I
    const/4 v5, -0x1

    .line 862
    .local v5, "reserveLock":I
    const-wide/16 v6, 0x0

    .local v6, "reserveStartTime":J
    const-wide/16 v8, 0x0

    .line 863
    .local v8, "reserveEndTime":J
    const/16 v19, 0x0

    .local v19, "startTime":Ljava/util/Date;
    const/16 v17, 0x0

    .line 864
    .local v17, "endTime":Ljava/util/Date;
    const-string v10, ""

    .local v10, "reservePgName":Ljava/lang/String;
    const-string v11, ""

    .line 866
    .local v11, "reserveDetails":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 867
    const/4 v12, 0x0

    .line 871
    .local v12, "reserveIntent":I
    :goto_0
    if-eqz p2, :cond_0

    .line 872
    move-object/from16 v10, p2

    .line 875
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByPChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v15

    .line 876
    .local v15, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v15, :cond_1

    .line 877
    iget v4, v15, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    .line 880
    :cond_1
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/M/d H:mm"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 882
    .local v18, "fmt":Ljava/text/SimpleDateFormat;
    :try_start_0
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v19

    .line 883
    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 888
    :goto_1
    if-eqz v19, :cond_2

    .line 889
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 890
    :cond_2
    if-eqz v17, :cond_3

    .line 891
    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 892
    :cond_3
    new-instance v2, Lcom/samsung/sec/mtv/provider/MtvReservation;

    const/4 v13, 0x0

    move/from16 v14, p6

    invoke-direct/range {v2 .. v14}, Lcom/samsung/sec/mtv/provider/MtvReservation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;III)V

    return-object v2

    .line 869
    .end local v12    # "reserveIntent":I
    .end local v15    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v18    # "fmt":Ljava/text/SimpleDateFormat;
    :cond_4
    const/4 v12, 0x1

    .restart local v12    # "reserveIntent":I
    goto :goto_0

    .line 884
    .restart local v15    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .restart local v18    # "fmt":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v16

    .line 885
    .local v16, "e":Ljava/text/ParseException;
    const-string v2, "MtvUiManualReservation"

    const-string v13, "convertEPGInfoToReserve caught in date parsing"

    invoke-static {v2, v13}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method private formatDate(III)Ljava/lang/String;
    .locals 4
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 1338
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/M/d"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1339
    .local v1, "simpledateformat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (EEE)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 1340
    new-instance v0, Ljava/util/Date;

    add-int/lit16 v2, p1, -0x76c

    invoke-direct {v0, v2, p2, p3}, Ljava/util/Date;-><init>(III)V

    .line 1341
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private formatTime(II)Ljava/lang/String;
    .locals 8
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xc

    .line 1251
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1252
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1253
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0, p2}, Ljava/util/Date;->setMinutes(I)V

    .line 1254
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1255
    .local v1, "reserveMinute":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1279
    :goto_0
    return-object v3

    .line 1261
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1263
    if-ge p1, v5, :cond_2

    .line 1264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_1

    const-string v3, "12"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 1266
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ne p1, v5, :cond_3

    const-string v3, "12"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    add-int/lit8 v3, p1, -0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    .line 1270
    :cond_4
    if-ge p1, v5, :cond_8

    .line 1271
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ja"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_5

    const-string v3, "0"

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    .line 1274
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_7

    const-string v3, "12"

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    .line 1276
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ja"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p1, v5, :cond_9

    const-string v3, "0"

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v3, p1, -0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5

    .line 1279
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p1, v5, :cond_b

    const-string v3, "12"

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v3, p1, -0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6
.end method

.method private initReservationVariables()V
    .locals 20

    .prologue
    .line 202
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReservationType:I

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 205
    .local v14, "mTime":J
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 206
    .local v17, "year":Ljava/text/SimpleDateFormat;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v2, "H"

    invoke-direct {v12, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 207
    .local v12, "hour":Ljava/text/SimpleDateFormat;
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v2, "M"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 208
    .local v16, "month":Ljava/text/SimpleDateFormat;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v2, "d"

    invoke-direct {v10, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 210
    .local v10, "day":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    .line 211
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    .line 212
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    .line 213
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    .line 214
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    .line 216
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    const/16 v8, 0x17

    if-ge v2, v8, :cond_4

    .line 217
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    .line 231
    :goto_0
    const/4 v13, 0x0

    .line 232
    .local v13, "inReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    const/4 v3, -0x1

    .line 234
    .local v3, "epgReservationType":I
    const/4 v5, -0x1

    .line 236
    .local v5, "epgReservationChNo":I
    const-string v6, ""

    .line 237
    .local v6, "epgReservationStartDate":Ljava/lang/String;
    const-string v7, ""

    .line 238
    .local v7, "epgReservationEndDate":Ljava/lang/String;
    const-string v4, ""

    .line 241
    .local v4, "epgReservationProgramName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mIsReserveFromEPG:Z

    if-eqz v2, :cond_5

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 246
    .local v11, "epgIntent":Landroid/content/Intent;
    const-string v2, "EXTRA_RESERVATION_TYPE"

    const/4 v8, -0x1

    invoke-virtual {v11, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 247
    const-string v2, "EXTRA_RESERVATION_SERVICE_ID"

    const/4 v8, -0x1

    invoke-virtual {v11, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEpgreservationServiceID:I

    .line 248
    const-string v2, "EXTRA_RESERVATION_CHANNEL_NO"

    const/4 v8, -0x1

    invoke-virtual {v11, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 250
    const-string v2, "EXTRA_RESERVATION_START_DATE"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 251
    const-string v2, "EXTRA_RESERVATION_START_DATE"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 252
    :cond_0
    const-string v2, "EXTRA_RESERVATION_END_DATE"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 253
    const-string v2, "EXTRA_RESERVATION_END_DATE"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 254
    :cond_1
    const-string v2, "EXTRA_RESERVATION_PROGRAM_NAME"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 255
    const-string v2, "EXTRA_RESERVATION_PROGRAM_NAME"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    :cond_2
    const-string v2, "MtvUiManualReservation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "epgReservationChNo = "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, " mEpgreservationServiceID= "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEpgreservationServiceID:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEpgreservationServiceID:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->convertEPGInfoToReserve(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v13

    .line 258
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->setRemineReservation(Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    .line 269
    .end local v11    # "epgIntent":Landroid/content/Intent;
    :cond_3
    :goto_1
    const-string v2, "MtvUiManualReservation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "initReservationVariables() :: mPch = "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPch:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, " mChannelServiceID = "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelServiceID:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void

    .line 219
    .end local v3    # "epgReservationType":I
    .end local v4    # "epgReservationProgramName":Ljava/lang/String;
    .end local v5    # "epgReservationChNo":I
    .end local v6    # "epgReservationStartDate":Ljava/lang/String;
    .end local v7    # "epgReservationEndDate":Ljava/lang/String;
    .end local v13    # "inReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 220
    .local v9, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 221
    const/4 v2, 0x5

    const/4 v8, 0x1

    invoke-virtual {v9, v2, v8}, Ljava/util/Calendar;->add(II)V

    .line 222
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 223
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    .line 224
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    .line 225
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    .line 226
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    goto/16 :goto_0

    .line 261
    .end local v9    # "calendar":Ljava/util/Calendar;
    .restart local v3    # "epgReservationType":I
    .restart local v4    # "epgReservationProgramName":Ljava/lang/String;
    .restart local v5    # "epgReservationChNo":I
    .restart local v6    # "epgReservationStartDate":Ljava/lang/String;
    .restart local v7    # "epgReservationEndDate":Ljava/lang/String;
    .restart local v13    # "inReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPrevReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v2, :cond_6

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPrevReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->setRemineReservation(Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    goto/16 :goto_1

    .line 267
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->setNewReserve()V

    goto/16 :goto_1
.end method

.method private initViewControl()V
    .locals 6

    .prologue
    .line 327
    const v1, 0x7f0a0014

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelNum:Landroid/widget/Button;

    .line 328
    const v1, 0x7f0a0012

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mDummyEditTextBox:Landroid/widget/EditText;

    .line 329
    const v1, 0x7f0a0019

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mProgramInputName:Landroid/widget/EditText;

    .line 330
    const v1, 0x7f0a0015

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartDate:Landroid/widget/Button;

    .line 331
    const v1, 0x7f0a0017

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndDate:Landroid/widget/Button;

    .line 332
    const v1, 0x7f0a0016

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartTime:Landroid/widget/Button;

    .line 333
    const v1, 0x7f0a0018

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndTime:Landroid/widget/Button;

    .line 334
    const v1, 0x7f0a0013

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveType:Landroid/widget/Button;

    .line 340
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mProgramInputName:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 341
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mProgramInputName:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 342
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelNum:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartDate:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartTime:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndDate:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndTime:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveType:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)V

    .line 373
    .local v0, "filter":Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mProgramInputName:Landroid/widget/EditText;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xff

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 374
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mProgramInputName:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 376
    return-void
.end method

.method private onEndTimeSet(II)V
    .locals 8
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 1226
    new-instance v2, Ljava/util/Date;

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndYear:I

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMonth:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDay:I

    invoke-direct {v2, v4, v5, v6}, Ljava/util/Date;-><init>(III)V

    .line 1227
    .local v2, "inputDate":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Date;-><init>(III)V

    .line 1229
    .local v3, "startDate":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1230
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    .line 1231
    .local v0, "defaultHour":I
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    .line 1233
    .local v1, "defaultMinute":I
    if-le v0, p1, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->EndTimeShouldBeSetAfterStartTimeAlert()V

    .line 1247
    .end local v0    # "defaultHour":I
    .end local v1    # "defaultMinute":I
    :goto_0
    return-void

    .line 1236
    .restart local v0    # "defaultHour":I
    .restart local v1    # "defaultMinute":I
    :cond_0
    if-ne v0, p1, :cond_1

    .line 1237
    if-lt v1, p2, :cond_1

    .line 1238
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->EndTimeShouldBeSetAfterStartTimeAlert()V

    goto :goto_0

    .line 1243
    .end local v0    # "defaultHour":I
    .end local v1    # "defaultMinute":I
    :cond_1
    iput p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    .line 1244
    iput p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMinute:I

    .line 1246
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndTime:Landroid/widget/Button;

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMinute:I

    invoke-direct {p0, v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->formatTime(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private onStartTimeSet(II)V
    .locals 10
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 1203
    new-instance v2, Ljava/util/Date;

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    invoke-direct {v2, v3, v6, v7}, Ljava/util/Date;-><init>(III)V

    .line 1204
    .local v2, "inputDate":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getDefaultDate()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    .line 1205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1206
    .local v4, "streamTime":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v0

    .line 1207
    .local v0, "defaultHour":I
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v1

    .line 1209
    .local v1, "defaultMinute":I
    if-le v0, p1, :cond_0

    .line 1210
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->startTimeShouldBeSetAfterCurrentTimeAlert()V

    .line 1223
    .end local v0    # "defaultHour":I
    .end local v1    # "defaultMinute":I
    .end local v4    # "streamTime":J
    :goto_0
    return-void

    .line 1212
    .restart local v0    # "defaultHour":I
    .restart local v1    # "defaultMinute":I
    .restart local v4    # "streamTime":J
    :cond_0
    if-ne v0, p1, :cond_1

    .line 1213
    if-lt v1, p2, :cond_1

    .line 1214
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->startTimeShouldBeSetAfterCurrentTimeAlert()V

    goto :goto_0

    .line 1219
    .end local v0    # "defaultHour":I
    .end local v1    # "defaultMinute":I
    .end local v4    # "streamTime":J
    :cond_1
    iput p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    .line 1220
    iput p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    .line 1222
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartTime:Landroid/widget/Button;

    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    iget v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    invoke-direct {p0, v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->formatTime(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private reloadReservationVariables(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 274
    const-string v1, "ChannelListIndex"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    .line 276
    const-string v1, "epgServiceId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEpgreservationServiceID:I

    .line 277
    const-string v1, "mPch"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPch:I

    .line 278
    const-string v1, "MtvUiManualReservation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reloadReservationVariables() :: mPch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mChannelListIndex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelNum:Landroid/widget/Button;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getDisplayChannelText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    if-le v1, v4, :cond_1

    .line 283
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPch:I

    .line 284
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mVch:I

    .line 285
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelServiceID:I

    .line 287
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelNum:Landroid/widget/Button;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getDisplayChannelText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_0
    :goto_0
    const-string v1, "mStartDate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 295
    .local v0, "date":Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    .line 296
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    .line 297
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    .line 298
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    .line 299
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    .line 300
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartDate:Landroid/widget/Button;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->formatDate(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartTime:Landroid/widget/Button;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->formatTime(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const-string v1, "mEndDate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .end local v0    # "date":Ljava/util/Calendar;
    check-cast v0, Ljava/util/Calendar;

    .line 304
    .restart local v0    # "date":Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndYear:I

    .line 305
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMonth:I

    .line 306
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDay:I

    .line 307
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    .line 308
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMinute:I

    .line 309
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndDate:Landroid/widget/Button;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndYear:I

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMonth:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDay:I

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->formatDate(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndTime:Landroid/widget/Button;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMinute:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->formatTime(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const-string v1, "mReservationType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReservationType:I

    .line 313
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReservationType:I

    if-ne v1, v5, :cond_2

    .line 315
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveType:Landroid/widget/Button;

    const v2, 0x7f070315

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 322
    :goto_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mProgramInputName:Landroid/widget/EditText;

    const-string v2, "mProgramInputName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-void

    .line 289
    .end local v0    # "date":Ljava/util/Calendar;
    :cond_1
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPch:I

    if-eq v1, v4, :cond_0

    .line 291
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelNum:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070043

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 319
    .restart local v0    # "date":Ljava/util/Calendar;
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveType:Landroid/widget/Button;

    const v2, 0x7f0702ad

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mIsReserveFromEPG:Z

    .line 525
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    .line 526
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPrevReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 527
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    .line 528
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    .line 529
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 530
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mSavedBundle:Landroid/os/Bundle;

    .line 533
    return-void
.end method

.method private saveManualReserve()V
    .locals 20

    .prologue
    .line 900
    new-instance v2, Ljava/util/Date;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    add-int/lit16 v3, v3, -0x76c

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    add-int/lit8 v4, v5, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Ljava/util/Date;-><init>(IIIIII)V

    .line 901
    .local v2, "date":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    .line 902
    .local v18, "longStartingTime":J
    new-instance v2, Ljava/util/Date;

    .end local v2    # "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndYear:I

    add-int/lit16 v3, v3, -0x76c

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMonth:I

    add-int/lit8 v4, v5, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDay:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMinute:I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Ljava/util/Date;-><init>(IIIIII)V

    .line 903
    .restart local v2    # "date":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 904
    .local v10, "longEndingTime":J
    const v3, 0x7f0a0019

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 905
    .local v12, "pgmName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 906
    .local v16, "mServiceID":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mIsReserveFromEPG:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelServiceID:I

    if-eqz v3, :cond_1

    .line 907
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEpgreservationServiceID:I

    move/from16 v16, v0

    .line 908
    const-string v3, "MtvUiManualReservation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveManualReserve: mEpgreservationServiceID - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEpgreservationServiceID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :goto_0
    const-string v3, "MtvUiManualReservation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveManualReserve:: mServiceID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    new-instance v4, Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPch:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mVch:I

    const/4 v7, -0x1

    const-string v13, ""

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReservationType:I

    const/4 v15, 0x0

    move-wide/from16 v8, v18

    invoke-direct/range {v4 .. v16}, Lcom/samsung/sec/mtv/provider/MtvReservation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;III)V

    .line 919
    .local v4, "newReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 920
    const-string v3, "MtvUiManualReservation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saving manualReserve this.mPch = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPch:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPrevReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v3, :cond_2

    .line 923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPrevReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->update(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 927
    :goto_1
    iget-wide v6, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v3, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->setReservationAlarm(Landroid/content/Context;JZZ)V

    .line 930
    const v3, 0x7f0702c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 931
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 932
    .local v17, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.samsung.sec.mtv"

    const-string v6, "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 933
    const-string v3, "popup_type"

    const/4 v5, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 934
    const-string v3, "Alert_title"

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 935
    const/high16 v3, 0x14000000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 936
    const-string v3, "MtvUiManualReservation"

    const-string v5, "Mobile Tv Lanuch antenna"

    invoke-static {v3, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->startActivity(Landroid/content/Intent;)V

    .line 938
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reset()V

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->finish()V

    .line 942
    return-void

    .line 913
    .end local v4    # "newReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelServiceID:I

    move/from16 v16, v0

    goto/16 :goto_0

    .line 925
    .restart local v4    # "newReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->updateOrInsert(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    goto :goto_1
.end method

.method private setRemineReservation(Lcom/samsung/sec/mtv/provider/MtvReservation;)V
    .locals 14
    .param p1, "inReservation"    # Lcom/samsung/sec/mtv/provider/MtvReservation;

    .prologue
    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, "ch_flag":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    array-length v9, v9

    if-ge v3, v9, :cond_1

    .line 670
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v9, v9, v3

    iget v9, v9, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    iget v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v9, v9, v3

    iget v9, v9, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    iget v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v9, v9, v3

    iget v9, v9, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    if-nez v9, :cond_3

    .line 671
    :cond_0
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelNum:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getDisplayChannelText(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v9, v9, v3

    iget v9, v9, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPch:I

    .line 673
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v9, v9, v3

    iget v9, v9, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mVch:I

    .line 674
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v9, v9, v3

    iget v9, v9, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelServiceID:I

    .line 675
    iput v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    .line 676
    const/4 v0, 0x1

    .line 681
    :cond_1
    if-nez v0, :cond_2

    .line 682
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelNum:Landroid/widget/Button;

    iget v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget v9, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPch:I

    .line 684
    const/4 v9, -0x1

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mVch:I

    .line 685
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelServiceID:I

    .line 687
    :cond_2
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mProgramInputName:Landroid/widget/EditText;

    iget-object v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 689
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy/M/d"

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 690
    .local v5, "setDate":Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (EEE)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 691
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartDate:Landroid/widget/Button;

    new-instance v10, Ljava/util/Date;

    iget-wide v12, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndDate:Landroid/widget/Button;

    new-instance v10, Ljava/util/Date;

    iget-wide v12, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 694
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v9, "H"

    invoke-direct {v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 695
    .local v6, "setTimeHour":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v9, "mm"

    invoke-direct {v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 697
    .local v7, "setTimeMinute":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 699
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartTime:Landroid/widget/Button;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/util/Date;

    iget-wide v12, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    iget-wide v12, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 710
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 712
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndTime:Landroid/widget/Button;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/util/Date;

    iget-wide v12, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    iget-wide v12, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 722
    :goto_2
    iget v9, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v9, :cond_c

    .line 724
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveType:Landroid/widget/Button;

    const v10, 0x7f0702ad

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    .line 725
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReservationType:I

    .line 732
    :goto_3
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 733
    .local v8, "year":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v9, "M"

    invoke-direct {v4, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 734
    .local v4, "month":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v9, "d"

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 736
    .local v1, "day":Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/util/Date;

    iget-wide v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    .line 737
    new-instance v9, Ljava/util/Date;

    iget-wide v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    .line 738
    new-instance v9, Ljava/util/Date;

    iget-wide v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    .line 739
    new-instance v9, Ljava/util/Date;

    iget-wide v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    .line 740
    new-instance v9, Ljava/util/Date;

    iget-wide v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    .line 742
    new-instance v9, Ljava/util/Date;

    iget-wide v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndYear:I

    .line 743
    new-instance v9, Ljava/util/Date;

    iget-wide v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMonth:I

    .line 744
    new-instance v9, Ljava/util/Date;

    iget-wide v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDay:I

    .line 745
    new-instance v9, Ljava/util/Date;

    iget-wide v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    .line 746
    new-instance v9, Ljava/util/Date;

    iget-wide v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMinute:I

    .line 748
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->checkInputAllField(Z)V

    .line 749
    return-void

    .line 666
    .end local v1    # "day":Ljava/text/SimpleDateFormat;
    .end local v4    # "month":Ljava/text/SimpleDateFormat;
    .end local v5    # "setDate":Ljava/text/SimpleDateFormat;
    .end local v6    # "setTimeHour":Ljava/text/SimpleDateFormat;
    .end local v7    # "setTimeMinute":Ljava/text/SimpleDateFormat;
    .end local v8    # "year":Ljava/text/SimpleDateFormat;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 703
    .restart local v5    # "setDate":Ljava/text/SimpleDateFormat;
    .restart local v6    # "setTimeHour":Ljava/text/SimpleDateFormat;
    .restart local v7    # "setTimeMinute":Ljava/text/SimpleDateFormat;
    :cond_4
    new-instance v9, Ljava/util/Date;

    iget-wide v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 704
    .local v2, "hr":I
    const/16 v9, 0xc

    if-ge v2, v9, :cond_6

    .line 705
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartTime:Landroid/widget/Button;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_5

    const-string v9, "12"

    :goto_4
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v11, Ljava/util/Date;

    iget-wide v12, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v11}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_4

    .line 707
    :cond_6
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartTime:Landroid/widget/Button;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0xc

    if-ne v2, v9, :cond_7

    const-string v9, "12"

    :goto_5
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v11, Ljava/util/Date;

    iget-wide v12, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {v11}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v9, v2, -0xc

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_5

    .line 716
    .end local v2    # "hr":I
    :cond_8
    new-instance v9, Ljava/util/Date;

    iget-wide v10, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 717
    .restart local v2    # "hr":I
    const/16 v9, 0xc

    if-ge v2, v9, :cond_a

    .line 718
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndTime:Landroid/widget/Button;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_9

    const-string v9, "12"

    :goto_6
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v11, Ljava/util/Date;

    iget-wide v12, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v11}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_6

    .line 720
    :cond_a
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndTime:Landroid/widget/Button;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0xc

    if-ne v2, v9, :cond_b

    const-string v9, "12"

    :goto_7
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v11, Ljava/util/Date;

    iget-wide v12, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {v11}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v9, v2, -0xc

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_7

    .line 728
    .end local v2    # "hr":I
    :cond_c
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveType:Landroid/widget/Button;

    const v10, 0x7f070315

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    .line 729
    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReservationType:I

    goto/16 :goto_3
.end method

.method private showMtvDialog(I)V
    .locals 14
    .param p1, "dialogType"    # I

    .prologue
    const/16 v13, 0x1f

    const/16 v12, 0xb

    const/4 v2, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1051
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1052
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1053
    .local v7, "c":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 1149
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1153
    .end local v7    # "c":Ljava/util/Calendar;
    :cond_0
    return-void

    .line 1055
    .restart local v7    # "c":Ljava/util/Calendar;
    :pswitch_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->RESRV_TYPE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mCurrentPopupType:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .line 1056
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0702d5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050012

    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReservationType:I

    if-nez v0, :cond_1

    move v0, v10

    :goto_1
    new-instance v3, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$4;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$4;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07020b

    new-instance v2, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$3;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    .line 1080
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1081
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1082
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_1
    move v0, v11

    .line 1056
    goto :goto_1

    .line 1085
    :pswitch_1
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->CHANNEL_NUMBER:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mCurrentPopupType:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .line 1086
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    array-length v0, v0

    new-array v8, v0, [Ljava/lang/CharSequence;

    .line 1087
    .local v8, "channelNameList":[Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    array-length v0, v0

    if-ge v9, v0, :cond_3

    .line 1088
    invoke-virtual {p0, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getDisplayChannelText(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    .line 1089
    aget-object v0, v8, v9

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelNum:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1090
    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    .line 1087
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1093
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0702d1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    new-instance v2, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;

    invoke-direct {v2, p0, v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v8, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07020b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    .line 1108
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1109
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1110
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 1113
    .end local v8    # "channelNameList":[Ljava/lang/CharSequence;
    .end local v9    # "i":I
    :pswitch_2
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->START_DATE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mCurrentPopupType:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .line 1114
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    .line 1115
    const/16 v0, 0x7d0

    invoke-virtual {v7, v0, v10, v11}, Ljava/util/Calendar;->set(III)V

    .line 1116
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    check-cast v0, Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 1117
    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 1118
    const/16 v0, 0x7f5

    invoke-virtual {v7, v0, v12, v13}, Ljava/util/Calendar;->set(III)V

    .line 1119
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    check-cast v0, Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 1120
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1121
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1124
    :pswitch_3
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->START_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mCurrentPopupType:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .line 1125
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->START_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;-><init>(IILcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->startTimeFragment:Landroid/app/DialogFragment;

    .line 1126
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->startTimeFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "startTime"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1129
    :pswitch_4
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->END_DATE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mCurrentPopupType:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .line 1130
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndYear:I

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMonth:I

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    .line 1131
    const/16 v0, 0x7d0

    invoke-virtual {v7, v0, v10, v11}, Ljava/util/Calendar;->set(III)V

    .line 1132
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    check-cast v0, Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 1133
    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 1134
    const/16 v0, 0x7f5

    invoke-virtual {v7, v0, v12, v13}, Ljava/util/Calendar;->set(III)V

    .line 1135
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    check-cast v0, Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 1136
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1137
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1141
    :pswitch_5
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->END_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mCurrentPopupType:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .line 1142
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMinute:I

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->END_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;-><init>(IILcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->endTimeFragment:Landroid/app/DialogFragment;

    .line 1143
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->endTimeFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "endTime"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1053
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public EndTimeShouldBeSetAfterStartTimeAlert()V
    .locals 3

    .prologue
    .line 1165
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070245

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070298

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1170
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1486
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1493
    return-void
.end method

.method public checkInputAllField(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 844
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reserve_save_menu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 845
    if-eqz p1, :cond_1

    .line 847
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reserve_save_menu:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reserve_save_menu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public durationWrongAlert()V
    .locals 6

    .prologue
    .line 1183
    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReservationType:I

    if-nez v2, :cond_0

    const v1, 0x7f0702f2

    .line 1184
    .local v1, "msg_id":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1186
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0701e0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070298

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1192
    return-void

    .line 1183
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "msg_id":I
    :cond_0
    const v1, 0x7f0702f3

    goto :goto_0
.end method

.method public getDefaultDate()J
    .locals 12

    .prologue
    .line 975
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 976
    .local v8, "streamTime":J
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 977
    .local v6, "defaultYear":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "M"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 978
    .local v4, "defaultMonth":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "d"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 980
    .local v2, "defaultDay":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 981
    .local v5, "defaultY":I
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 982
    .local v3, "defaultM":I
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 983
    .local v0, "defaultD":I
    new-instance v1, Ljava/util/Date;

    add-int/lit8 v7, v3, -0x1

    invoke-direct {v1, v5, v7, v0}, Ljava/util/Date;-><init>(III)V

    .line 984
    .local v1, "defaultDate":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    return-wide v10
.end method

.method public getDisplayChannelText(I)Ljava/lang/String;
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/16 v6, 0x63

    .line 752
    const/4 v2, 0x0

    .line 753
    .local v2, "returnText":Ljava/lang/String;
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v1

    .line 755
    .local v1, "releaseMode":Z
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    if-eqz v3, :cond_b

    if-ltz p1, :cond_b

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    array-length v3, v3

    if-ge p1, v3, :cond_b

    .line 757
    const-string v3, "MtvUiManualReservation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MtvChannel  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/provider/MtvChannel;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MultiChannel No:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const/4 v0, 0x0

    .line 761
    .local v0, "channelName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_1

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    :goto_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    if-ne v3, v7, :cond_9

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-eqz v3, :cond_9

    .line 766
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    rem-int/lit8 v3, v3, 0xa

    if-ne v3, v7, :cond_5

    .line 767
    :cond_0
    if-nez v1, :cond_3

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-ge v3, v6, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v0    # "channelName":Ljava/lang/String;
    :goto_2
    move-object v3, v2

    .line 790
    :goto_3
    return-object v3

    .line 763
    .restart local v0    # "channelName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, p1

    iget-object v0, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    goto/16 :goto_0

    .line 768
    :cond_2
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 770
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-ge v3, v6, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 772
    :cond_5
    if-nez v1, :cond_7

    .line 773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "         "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-ge v3, v6, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_6
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 775
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-ge v3, v6, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_8
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 779
    :cond_9
    if-nez v1, :cond_a

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 782
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 787
    .end local v0    # "channelName":Ljava/lang/String;
    :cond_b
    const-string v3, "MtvUiManualReservation"

    const-string v4, "getDisplayChannelText() : invalid index passed returning default channel name..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const v3, 0x7f070215

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2
.end method

.method public isReservationAlreadyTime()Z
    .locals 14

    .prologue
    .line 988
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getAllReserves(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v9

    check-cast v9, [Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 989
    .local v9, "reserve":[Lcom/samsung/sec/mtv/provider/MtvReservation;
    new-instance v0, Ljava/util/Date;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    add-int/lit16 v1, v2, -0x76c

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 990
    .local v0, "tStartDate":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndYear:I

    add-int/lit16 v2, v2, -0x76c

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMonth:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDay:I

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMinute:I

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ljava/util/Date;-><init>(IIIIII)V

    .line 991
    .local v1, "tEndDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 992
    .local v12, "mStartTime":J
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 994
    .local v10, "mEndTime":J
    if-nez v9, :cond_0

    .line 995
    const/4 v2, 0x1

    .line 1014
    :goto_0
    return v2

    .line 997
    :cond_0
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 999
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v2, v9

    if-ge v8, v2, :cond_6

    .line 1000
    aget-object v2, v9, v8

    iget-wide v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 1001
    aget-object v2, v9, v8

    iget-wide v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    cmp-long v2, v12, v2

    if-nez v2, :cond_2

    aget-object v2, v9, v8

    iget-wide v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    cmp-long v2, v10, v2

    if-nez v2, :cond_2

    .line 1003
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPrevReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v2, :cond_1

    aget-object v2, v9, v8

    iget v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPrevReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    if-ne v2, v3, :cond_1

    .line 1004
    const/4 v2, 0x1

    goto :goto_0

    .line 1005
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1007
    :cond_2
    aget-object v2, v9, v8

    iget-wide v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    cmp-long v2, v12, v2

    if-gez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPrevReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v2, :cond_3

    aget-object v2, v9, v8

    iget v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPrevReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    if-eq v2, v3, :cond_5

    .line 1008
    :cond_3
    aget-object v2, v9, v8

    iget-wide v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    cmp-long v2, v10, v2

    if-gtz v2, :cond_4

    .line 1009
    const/4 v2, 0x1

    goto :goto_0

    .line 1010
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 999
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1014
    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isReservationDurationValid()I
    .locals 10

    .prologue
    .line 963
    new-instance v0, Ljava/util/GregorianCalendar;

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    .line 964
    .local v0, "startTime":Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndYear:I

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMonth:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDay:I

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMinute:I

    invoke-direct/range {v1 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    .line 965
    .local v1, "endTime":Ljava/util/GregorianCalendar;
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v8, v2, v4

    .line 966
    .local v8, "duration":J
    const-wide/32 v2, 0xdbba00

    cmp-long v2, v8, v2

    if-lez v2, :cond_0

    .line 967
    const/4 v2, 0x0

    .line 970
    :goto_0
    return v2

    .line 968
    :cond_0
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 969
    const/4 v2, 0x2

    goto :goto_0

    .line 970
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isStartTimeGreaterThanCurrentTime()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 945
    new-instance v2, Ljava/util/Date;

    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    iget v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    invoke-direct {v2, v6, v7, v8}, Ljava/util/Date;-><init>(III)V

    .line 946
    .local v2, "inputDate":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getDefaultDate()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 947
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 948
    .local v4, "streamTime":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v0

    .line 949
    .local v0, "defaultHour":I
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->getMinutes()I

    move-result v1

    .line 950
    .local v1, "defaultMinute":I
    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    if-le v0, v6, :cond_1

    .line 958
    .end local v0    # "defaultHour":I
    .end local v1    # "defaultMinute":I
    .end local v4    # "streamTime":J
    :cond_0
    :goto_0
    return v3

    .line 952
    .restart local v0    # "defaultHour":I
    .restart local v1    # "defaultMinute":I
    .restart local v4    # "streamTime":J
    :cond_1
    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    if-ne v0, v6, :cond_2

    .line 953
    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    if-ge v1, v6, :cond_0

    .line 958
    .end local v0    # "defaultHour":I
    .end local v1    # "defaultMinute":I
    .end local v4    # "streamTime":J
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1018
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1048
    :goto_0
    return-void

    .line 1020
    :pswitch_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->showMtvDialog(I)V

    goto :goto_0

    .line 1024
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->showMtvDialog(I)V

    goto :goto_0

    .line 1029
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->showMtvDialog(I)V

    goto :goto_0

    .line 1033
    :pswitch_3
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->showMtvDialog(I)V

    goto :goto_0

    .line 1038
    :pswitch_4
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->showMtvDialog(I)V

    goto :goto_0

    .line 1043
    :pswitch_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->showMtvDialog(I)V

    goto :goto_0

    .line 1018
    :pswitch_data_0
    .packed-switch 0x7f0a0013
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const-string v3, "MtvUiManualReservation"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-nez p1, :cond_0

    .line 135
    invoke-static {v6}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 136
    :cond_0
    invoke-static {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->updateBatteryInfo(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    const-string v3, "MtvUiManualReservation"

    const-string v4, "Battery Level is low..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->showLowBatteryPopup()V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->finish()V

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mSavedBundle:Landroid/os/Bundle;

    .line 144
    const v3, 0x7f030004

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->setContentView(I)V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mActionBar:Landroid/app/ActionBar;

    .line 147
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getAllAvailableChannels(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    .line 149
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 151
    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 152
    iput-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mProgramName:Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->initViewControl()V

    .line 155
    sget-boolean v3, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->EPGAPP_ENABLED:Z

    if-eqz v3, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 158
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACTION_DTV_RESERVATION_DETAILS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    iput-boolean v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mIsReserveFromEPG:Z

    .line 164
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-boolean v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mIsReserveFromEPG:Z

    if-nez v3, :cond_5

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, "inReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 168
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 169
    const-string v3, "MtvReservation"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    new-array v3, v6, [Z

    invoke-static {p0, v4, v5, v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v1

    .line 171
    :cond_4
    if-eqz v1, :cond_6

    .line 172
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPrevReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 177
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "inReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_5
    :goto_1
    if-nez p1, :cond_7

    .line 179
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->initReservationVariables()V

    .line 186
    :goto_2
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    if-eqz v3, :cond_9

    .line 187
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelsList:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    array-length v3, v3

    if-ge v3, v7, :cond_8

    .line 189
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelNum:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 197
    :goto_3
    sget-boolean v3, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v3, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 174
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "inReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_6
    iput-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPrevReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    goto :goto_1

    .line 183
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "inReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reloadReservationVariables(Landroid/os/Bundle;)V

    goto :goto_2

    .line 192
    :cond_8
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelNum:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 195
    :cond_9
    const-string v3, "MtvUiManualReservation"

    const-string v4, " mChannelsList is null !!! "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 554
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 555
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 556
    .local v2, "inflater":Landroid/view/MenuInflater;
    const v6, 0x7f090001

    invoke-virtual {v2, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 557
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reserve_cancel_menu:Landroid/view/MenuItem;

    .line 558
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reserve_save_menu:Landroid/view/MenuItem;

    .line 559
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reserve_save_menu:Landroid/view/MenuItem;

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 563
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelNum:Landroid/widget/Button;

    if-eqz v6, :cond_2

    .line 566
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelNum:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "channelNumString":Ljava/lang/String;
    const-string v1, ""

    .line 568
    .local v1, "emptyString":Ljava/lang/String;
    const v6, 0x7f070215

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v3, v5

    .line 569
    .local v3, "isSaveDisabled":Z
    :cond_1
    if-nez v3, :cond_2

    .line 570
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reserve_save_menu:Landroid/view/MenuItem;

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 573
    .end local v0    # "channelNumString":Ljava/lang/String;
    .end local v1    # "emptyString":Ljava/lang/String;
    .end local v3    # "isSaveDisabled":Z
    :cond_2
    new-instance v4, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)V

    .line 614
    .local v4, "menuListener":Landroid/view/MenuItem$OnMenuItemClickListener;
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reserve_save_menu:Landroid/view/MenuItem;

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 615
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reserve_cancel_menu:Landroid/view/MenuItem;

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 616
    return v5
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 538
    const-string v0, "MtvUiManualReservation"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    .line 546
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEpgreservationServiceID:I

    .line 547
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onDestroy()V

    .line 548
    return-void
.end method

.method public onFragEvent(ILjava/lang/Object;)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    .line 1435
    const-string v1, "MtvUiManualReservation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFragEvent: event["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    sparse-switch p1, :sswitch_data_0

    .line 1458
    :cond_0
    :goto_0
    return-void

    .line 1439
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->finish()V

    goto :goto_0

    :sswitch_1
    move-object v0, p2

    .line 1442
    check-cast v0, Ljava/util/Calendar;

    .line 1443
    .local v0, "cal":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 1444
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->onStartTimeSet(II)V

    goto :goto_0

    .end local v0    # "cal":Ljava/util/Calendar;
    :sswitch_2
    move-object v0, p2

    .line 1449
    check-cast v0, Ljava/util/Calendar;

    .line 1450
    .restart local v0    # "cal":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 1451
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->onEndTimeSet(II)V

    goto :goto_0

    .line 1437
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x10f -> :sswitch_1
        0x110 -> :sswitch_2
    .end sparse-switch
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/16 v13, 0x1f

    const/16 v12, 0xb

    const/4 v2, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 379
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onResume()V

    .line 380
    const-string v0, "MtvUiManualReservation"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->finish()V

    .line 485
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartTime:Landroid/widget/Button;

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    invoke-direct {p0, v1, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->formatTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndTime:Landroid/widget/Button;

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMinute:I

    invoke-direct {p0, v1, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->formatTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.stop.app-in-app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->sendBroadcast(Landroid/content/Intent;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v0, :cond_2

    .line 396
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 398
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mIsReserveFromEPG:Z

    if-eqz v0, :cond_5

    .line 399
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f070282

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4

    .line 407
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reserve_save_menu:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 408
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->reserve_save_menu:Landroid/view/MenuItem;

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 409
    :cond_3
    const v0, 0x7f070247

    const v1, 0x7f07021b

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->newInstance(II)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v3, "EPGErrorDialogFragment"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 413
    :cond_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mDummyEditTextBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 420
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mSavedBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mSavedBundle:Landroid/os/Bundle;

    const-string v1, "popupArgs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->popupSaveDate:Ljava/util/Calendar;

    .line 423
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->popupSaveDate:Ljava/util/Calendar;

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 424
    .local v4, "year":I
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->popupSaveDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 425
    .local v5, "monthofYear":I
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->popupSaveDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 426
    .local v6, "dayofMonth":I
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->popupSaveDate:Ljava/util/Calendar;

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 427
    .local v8, "hourOfDay":I
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->popupSaveDate:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 428
    .local v9, "minute":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 430
    .local v7, "c":Ljava/util/Calendar;
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$9;->$SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiManualReservation$PopupType:[I

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mSavedBundle:Landroid/os/Bundle;

    const-string v3, "popupType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->valueOf(Ljava/lang/String;)Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 433
    :pswitch_1
    invoke-direct {p0, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->showMtvDialog(I)V

    goto/16 :goto_0

    .line 400
    .end local v4    # "year":I
    .end local v5    # "monthofYear":I
    .end local v6    # "dayofMonth":I
    .end local v7    # "c":Ljava/util/Calendar;
    .end local v8    # "hourOfDay":I
    .end local v9    # "minute":I
    :cond_5
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPrevReservation:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v0, :cond_6

    .line 401
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f070240

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 403
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f070282

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 437
    .restart local v4    # "year":I
    .restart local v5    # "monthofYear":I
    .restart local v6    # "dayofMonth":I
    .restart local v7    # "c":Ljava/util/Calendar;
    .restart local v8    # "hourOfDay":I
    .restart local v9    # "minute":I
    :pswitch_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->showMtvDialog(I)V

    goto/16 :goto_0

    .line 441
    :pswitch_3
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->START_DATE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mCurrentPopupType:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .line 442
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    .line 443
    const/16 v0, 0x7d0

    invoke-virtual {v7, v0, v10, v11}, Ljava/util/Calendar;->set(III)V

    .line 444
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    check-cast v0, Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 445
    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 446
    const/16 v0, 0x7f5

    invoke-virtual {v7, v0, v12, v13}, Ljava/util/Calendar;->set(III)V

    .line 447
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    check-cast v0, Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 448
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 449
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 450
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 453
    :pswitch_4
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->START_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mCurrentPopupType:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .line 454
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->START_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;-><init>(IILcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->startTimeFragment:Landroid/app/DialogFragment;

    .line 455
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->startTimeFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "startTime"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 459
    :pswitch_5
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->END_DATE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mCurrentPopupType:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .line 460
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    .line 461
    const/16 v0, 0x7d0

    invoke-virtual {v7, v0, v10, v11}, Ljava/util/Calendar;->set(III)V

    .line 462
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    check-cast v0, Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 463
    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 464
    const/16 v0, 0x7f5

    invoke-virtual {v7, v0, v12, v13}, Ljava/util/Calendar;->set(III)V

    .line 465
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    check-cast v0, Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 466
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 467
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 468
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 471
    :pswitch_6
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->END_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mCurrentPopupType:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .line 472
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMinute:I

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->END_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;-><init>(IILcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->endTimeFragment:Landroid/app/DialogFragment;

    .line 473
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->endTimeFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "endTime"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 489
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 490
    const-string v1, "MtvUiManualReservation"

    const-string v2, "onSaveInstanceState()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v1, "ChannelListIndex"

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelListIndex:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    const-string v1, "epgServiceId"

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEpgreservationServiceID:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 495
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 496
    .local v0, "date":Ljava/util/Calendar;
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 497
    const-string v1, "mStartDate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 499
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 500
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndYear:I

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMonth:I

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDay:I

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMinute:I

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 501
    const-string v1, "mEndDate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 502
    const-string v1, "mReservationType"

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReservationType:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    const-string v1, "mPch"

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPch:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 504
    const-string v1, "mProgramInputName"

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mProgramInputName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 507
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->NONE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mCurrentPopupType:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    instance-of v1, v1, Landroid/app/DatePickerDialog;

    if-eqz v1, :cond_1

    .line 511
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveDialog:Landroid/app/AlertDialog;

    check-cast v6, Landroid/app/DatePickerDialog;

    .line 512
    .local v6, "datepicker":Landroid/app/DatePickerDialog;
    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->clearFocus()V

    .line 514
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->popupSaveDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getYear()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 515
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->popupSaveDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 516
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->popupSaveDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 519
    .end local v6    # "datepicker":Landroid/app/DatePickerDialog;
    :cond_1
    const-string v1, "popupType"

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mCurrentPopupType:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v1, "popupArgs"

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->popupSaveDate:Ljava/util/Calendar;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 521
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1479
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mProgramName:Ljava/lang/String;

    .line 1480
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1462
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0019

    if-ne v0, v1, :cond_0

    .line 1463
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1464
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1471
    :cond_0
    :goto_0
    return v2

    .line 1466
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 1464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setNewReserve()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 621
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy/M/d"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 623
    .local v3, "setDate":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (EEE)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 624
    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndYear:I

    .line 625
    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMonth:I

    .line 626
    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDay:I

    .line 627
    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMinute:I

    .line 628
    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_0

    .line 629
    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    .line 644
    :goto_0
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveType:Landroid/widget/Button;

    const v7, 0x7f0702ad

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iput v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReservationType:I

    .line 647
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelNum:Landroid/widget/Button;

    const v7, 0x7f070215

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartDate:Landroid/widget/Button;

    new-instance v7, Ljava/util/Date;

    iget v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    add-int/lit16 v8, v8, -0x76c

    iget v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    invoke-direct {v7, v8, v9, v10}, Ljava/util/Date;-><init>(III)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndDate:Landroid/widget/Button;

    new-instance v7, Ljava/util/Date;

    iget v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndYear:I

    add-int/lit16 v8, v8, -0x76c

    iget v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMonth:I

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDay:I

    invoke-direct {v7, v8, v9, v10}, Ljava/util/Date;-><init>(III)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveStartTime:Landroid/widget/Button;

    iget v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    iget v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    invoke-direct {p0, v7, v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->formatTime(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReserveEndTime:Landroid/widget/Button;

    iget v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    iget v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMinute:I

    invoke-direct {p0, v7, v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->formatTime(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 661
    return-void

    .line 631
    :cond_0
    iput v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndHour:I

    .line 632
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 633
    .local v5, "year":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "M"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 634
    .local v2, "month":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "d"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 635
    .local v1, "day":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 636
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 637
    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 638
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 639
    .local v4, "streamTime":Ljava/lang/Long;
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndYear:I

    .line 640
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndMonth:I

    .line 641
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mEndDay:I

    goto/16 :goto_0
.end method

.method public setStartTimeWithinOneWeekAlert()V
    .locals 3

    .prologue
    .line 1173
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0702db

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070298

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1178
    return-void
.end method

.method public showAlreadyReserveDlg()V
    .locals 3

    .prologue
    .line 1195
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0702f5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070298

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1200
    return-void
.end method

.method public startTimeShouldBeSetAfterCurrentTimeAlert()V
    .locals 3

    .prologue
    .line 1156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0702ec

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070298

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1162
    return-void
.end method
