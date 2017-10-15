.class public Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;
.super Landroid/app/DialogFragment;
.source "MtvUiSleepTimerDialogFrag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$CustomTimePickerDialog;
    }
.end annotation


# static fields
.field public static final MTV_UI_SLEEP_TIMER_ARG_REMAIN_TIME:Ljava/lang/String; = "remainTime"

.field private static final MTV_UI_SLEEP_TIMER_DIALOG_TYPE_EXIT_APPLICATION:I = 0x2

.field private static final MTV_UI_SLEEP_TIMER_DIALOG_TYPE_SELECTION:I = 0x0

.field private static final MTV_UI_SLEEP_TIMER_DIALOG_TYPE_SELECTION_CUSTOM:I = 0x1

.field public static final MTV_UI_SLEEP_TIMER_DIALOG_TYPE_SELECTION_CUSTOM_STRING:Ljava/lang/String; = "custom"

.field public static final MTV_UI_SLEEP_TIMER_PENDING_INTENT_REQUEST_CODE:I = 0x4d2

.field public static final MTV_UI_SLEEP_TIMER_TURN_OFF:Ljava/lang/String; = "expire"

.field private static final SLEEP_TIMER_10MIN:I = 0x1

.field private static final SLEEP_TIMER_1HOUR:I = 0x3

.field private static final SLEEP_TIMER_2HOUR:I = 0x4

.field private static final SLEEP_TIMER_30MIN:I = 0x2

.field private static final SLEEP_TIMER_CUSTOM:I = 0x5

.field private static final SLEEP_TIMER_NONE:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "MtvUiSleepTimerDialogFrag"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentSleepTime:I

.field private mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

.field private mNewCustomSleepTime:I

.field private mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 50
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 66
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->setCustomSleepTime(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    .prologue
    .line 29
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mNewCustomSleepTime:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mNewCustomSleepTime:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getCustomSleepTime()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->setAutoTimer(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    .prologue
    .line 29
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mCurrentSleepTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    return-object p1
.end method

.method private createDialogByType(I)Landroid/app/AlertDialog;
    .locals 11
    .param p1, "type"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "dialog":Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 204
    :goto_0
    :pswitch_0
    return-object v0

    .line 115
    :pswitch_1
    const/4 v5, 0x6

    .line 116
    .local v5, "sleep_timer_length":I
    const/4 v3, 0x0

    .line 117
    .local v3, "sleep_timer_idx":I
    const/4 v2, -0x1

    .line 118
    .local v2, "index":I
    new-array v6, v5, [Ljava/lang/String;

    .line 120
    .local v6, "sleep_timer_time":[Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "sleep_timer_idx":I
    .local v4, "sleep_timer_idx":I
    const v7, 0x7f070291

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 121
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "sleep_timer_idx":I
    .restart local v3    # "sleep_timer_idx":I
    const v7, 0x7f0701de

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 122
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "sleep_timer_idx":I
    .restart local v4    # "sleep_timer_idx":I
    const v7, 0x7f0701de

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x1e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 123
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "sleep_timer_idx":I
    .restart local v3    # "sleep_timer_idx":I
    const v7, 0x7f0701da

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 124
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "sleep_timer_idx":I
    .restart local v4    # "sleep_timer_idx":I
    const v7, 0x7f0701db

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 125
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "sleep_timer_idx":I
    .restart local v3    # "sleep_timer_idx":I
    const v7, 0x7f070220

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 127
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 144
    const/4 v2, 0x5

    .line 148
    :goto_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0701ef

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$3;

    invoke-direct {v8, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)V

    invoke-virtual {v7, v6, v2, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07020b

    new-instance v9, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$2;

    invoke-direct {v9, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 129
    :sswitch_0
    const/4 v2, 0x0

    .line 130
    goto :goto_1

    .line 132
    :sswitch_1
    const/4 v2, 0x1

    .line 133
    goto :goto_1

    .line 135
    :sswitch_2
    const/4 v2, 0x2

    .line 136
    goto :goto_1

    .line 138
    :sswitch_3
    const/4 v2, 0x3

    .line 139
    goto :goto_1

    .line 141
    :sswitch_4
    const/4 v2, 0x4

    .line 142
    goto :goto_1

    .line 180
    .end local v2    # "index":I
    .end local v3    # "sleep_timer_idx":I
    .end local v5    # "sleep_timer_length":I
    .end local v6    # "sleep_timer_time":[Ljava/lang/String;
    :pswitch_2
    const v7, 0x7f0702e5

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "dialogMessage":Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0701ef

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070298

    new-instance v9, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$5;

    invoke-direct {v9, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$5;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07020b

    new-instance v9, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$4;

    invoke-direct {v9, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$4;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x1e -> :sswitch_2
        0x3c -> :sswitch_3
        0x78 -> :sswitch_4
    .end sparse-switch
.end method

.method private getCustomSleepTime()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mNewCustomSleepTime:I

    return v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 61
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;-><init>()V

    .line 62
    .local v0, "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;
    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v0
.end method

.method public static setAlarm(Landroid/content/Context;JZ)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aftertime_min"    # J
    .param p3, "set"    # Z

    .prologue
    .line 241
    const-string v6, "MtvUiSleepTimerDialogFrag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAlarm aftertime_min "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-wide/16 v6, 0x3c

    mul-long v0, p1, v6

    .line 243
    .local v0, "aftertime_sec":J
    const-wide/16 v6, 0x1

    cmp-long v6, p1, v6

    if-gez v6, :cond_0

    .line 244
    const/4 p3, 0x0

    .line 245
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.samsung.sec.mtv.ACTION_MTV_SLEEP_TIMER_ALARM"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v4, "intent":Landroid/content/Intent;
    const/16 v6, 0x4d2

    const/high16 v7, 0x8000000

    invoke-static {p0, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 251
    .local v5, "sender":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 252
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 253
    const/16 v6, 0xd

    long-to-int v7, v0

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 255
    if-eqz p3, :cond_1

    .line 257
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 258
    .local v2, "am":Landroid/app/AlarmManager;
    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2, v6, v8, v9, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 259
    const-string v6, "MtvUiSleepTimerDialogFrag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "auto-power off set : after min : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 262
    .end local v2    # "am":Landroid/app/AlarmManager;
    :cond_1
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 263
    .restart local v2    # "am":Landroid/app/AlarmManager;
    invoke-virtual {v2, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 264
    const-string v6, "MtvUiSleepTimerDialogFrag"

    const-string v7, "cancelled auto-power off "

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAutoTimer(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selectionButton"    # I

    .prologue
    const/4 v4, 0x0

    .line 208
    const/4 v0, 0x1

    .line 209
    .local v0, "setAlarm":Z
    packed-switch p2, :pswitch_data_0

    .line 219
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mNewCustomSleepTime:I

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAutoPowerOffTime(I)V

    .line 220
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mNewCustomSleepTime:I

    int-to-long v2, v1

    invoke-static {p1, v2, v3, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->setAlarm(Landroid/content/Context;JZ)V

    .line 221
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v2, 0xdf

    invoke-interface {v1, v2, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 222
    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 225
    return-void

    .line 210
    :pswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mNewCustomSleepTime:I

    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :pswitch_2
    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mNewCustomSleepTime:I

    goto :goto_0

    .line 212
    :pswitch_3
    const/16 v1, 0x1e

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mNewCustomSleepTime:I

    goto :goto_0

    .line 213
    :pswitch_4
    const/16 v1, 0x3c

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mNewCustomSleepTime:I

    goto :goto_0

    .line 214
    :pswitch_5
    const/16 v1, 0x78

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mNewCustomSleepTime:I

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private setCustomSleepTime(II)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 228
    mul-int/lit8 v0, p1, 0x3c

    add-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mNewCustomSleepTime:I

    .line 229
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mContext:Landroid/content/Context;

    .line 82
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 83
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 84
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 85
    .local v6, "args":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 86
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-eqz v6, :cond_0

    .line 87
    const-string v1, "remainTime"

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mCurrentSleepTime:I

    .line 88
    const-string v1, "expire"

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->createDialogByType(I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    const-string v1, "custom"

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$CustomTimePickerDialog;

    .end local v0    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mCurrentSleepTime:I

    div-int/lit8 v3, v3, 0x3c

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->mCurrentSleepTime:I

    rem-int/lit8 v4, v4, 0x3c

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$CustomTimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 94
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 95
    .local v7, "tx":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0702de

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    .line 100
    .end local v7    # "tx":Landroid/widget/TextView;
    :cond_2
    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->createDialogByType(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method
