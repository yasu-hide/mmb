.class public Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;
.super Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.source "MtvUiPopUpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;
    }
.end annotation


# static fields
.field public static final MTV_UI_POPUP_TYPE_SAVE_AND_EXIT_CONFIRMATION_ANTENNA:I = 0x9

.field public static final POPUP_TYPE:Ljava/lang/String; = "popup_type"

.field public static final POPUP_TYPE_3LM_BLOCKING:I = 0x6

.field public static final POPUP_TYPE_LAUNCH_ANTENNA_ALERT:I = 0x3

.field public static final POPUP_TYPE_LAUNCH_ANTENNA_ALERT_DIALOG:I = 0x8

.field public static final POPUP_TYPE_LOW_BATTERY:I = 0x0

.field public static final POPUP_TYPE_LOW_MEMORY:I = 0x7

.field public static final POPUP_TYPE_MEDIA_MOUNTED:I = 0x4

.field public static final POPUP_TYPE_MEDIA_UNMOUNTED:I = 0x5

.field public static final POPUP_TYPE_RESERVATION_ALERT:I = 0x2

.field public static final POPUP_TYPE_SLEEP_TIMER_EXIT:I = 0x1

.field private static SLEEP_TIMER_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MtvUiPopUpActivity"

.field private static isBatteryLowPopupAvailable:Z

.field private static isMemoryLowPopupAvailable:Z

.field private static mPopupUiMsgHandler:Landroid/os/Handler;

.field public static mtvUiPopUpActivity:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

.field public static type:I


# instance fields
.field private AfetrreservationOk:Z

.field private AnatenaAlertfrom:Z

.field private RunnablePopupExpire:Ljava/lang/Runnable;

.field private dialogGravity:I

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

.field private mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mReservationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    sput-boolean v1, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isBatteryLowPopupAvailable:Z

    .line 70
    sput-boolean v1, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isMemoryLowPopupAvailable:Z

    .line 75
    const/4 v0, -0x1

    sput v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->type:I

    .line 83
    sput v1, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->SLEEP_TIMER_NONE:I

    .line 88
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$1;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$1;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPopupUiMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    .line 74
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 76
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mContext:Landroid/content/Context;

    .line 78
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->AfetrreservationOk:Z

    .line 79
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->AnatenaAlertfrom:Z

    .line 82
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    .line 85
    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->dialogGravity:I

    .line 504
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$13;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$13;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->RunnablePopupExpire:Ljava/lang/Runnable;

    .line 696
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->RunnablePopupExpire:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPopupUiMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mReservationId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->handleLaunchAntennaOK()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->handleLaunchAntennaEnable()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->handleExternalMedia()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->handleLowBatteryOK()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->handleLowMemoryOK()V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->SLEEP_TIMER_NONE:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->handleSleepTimerOK()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->handleReservationOK()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method private createPopup(I)V
    .locals 12
    .param p1, "type"    # I

    .prologue
    .line 129
    packed-switch p1, :pswitch_data_0

    .line 401
    const-string v7, "MtvUiPopUpActivity"

    const-string v8, "INVALID POPUP TYPE"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 131
    :pswitch_0
    sget-boolean v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isBatteryLowPopupAvailable:Z

    if-nez v7, :cond_1

    .line 132
    const/4 v7, 0x1

    sput-boolean v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isBatteryLowPopupAvailable:Z

    .line 133
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f07026a

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070249

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070298

    new-instance v9, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$2;

    invoke-direct {v9, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    .line 145
    sget-object v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPopupUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->RunnablePopupExpire:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    goto :goto_0

    .line 153
    :pswitch_1
    sget-boolean v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isMemoryLowPopupAvailable:Z

    if-nez v7, :cond_2

    .line 154
    const/4 v7, 0x1

    sput-boolean v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isMemoryLowPopupAvailable:Z

    .line 155
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f07026c

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07026d

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070298

    new-instance v9, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$3;

    invoke-direct {v9, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    .line 167
    sget-object v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPopupUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->RunnablePopupExpire:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    goto :goto_0

    .line 177
    :pswitch_2
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v5

    .line 178
    .local v5, "mMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    const/4 v3, 0x0

    .line 179
    .local v3, "dialogMessage":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v7

    const/16 v8, 0x5007

    if-ne v7, v8, :cond_3

    .line 180
    const v7, 0x7f0702e6

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    :goto_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0701ef

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070298

    new-instance v9, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$5;

    invoke-direct {v9, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$5;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07020b

    new-instance v9, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$4;

    invoke-direct {v9, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$4;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    .line 206
    sget-object v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPopupUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->RunnablePopupExpire:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 182
    :cond_3
    const v7, 0x7f0702e5

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 210
    .end local v3    # "dialogMessage":Ljava/lang/String;
    .end local v5    # "mMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 212
    .local v4, "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 215
    const-string v7, "dbId"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mReservationId:I

    .line 216
    new-instance v7, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 217
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mReservationId:I

    invoke-static {v7, v8}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v6

    .line 221
    .local v6, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewCoverClosed()Z

    move-result v7

    if-nez v7, :cond_5

    .line 222
    if-eqz v6, :cond_5

    iget v7, v6, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v7, :cond_6

    const/4 v7, 0x1

    :goto_2
    iget v8, v6, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    const/4 v8, 0x1

    :goto_3
    or-int/2addr v7, v8

    if-eqz v7, :cond_5

    .line 223
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    if-nez v7, :cond_4

    .line 224
    new-instance v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$1;)V

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    .line 225
    :cond_4
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->access$700(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;)V

    .line 228
    :cond_5
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 229
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0702bd

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 230
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f07031b

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 231
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f070298

    new-instance v9, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$6;

    invoke-direct {v9, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$6;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f07020b

    new-instance v9, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$7;

    invoke-direct {v9, p0, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$7;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 257
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v2, "broadcastIntent":Landroid/content/Intent;
    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_END_DIALOG_CLOSE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 261
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    .line 262
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 263
    sget-object v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPopupUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->RunnablePopupExpire:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 222
    .end local v2    # "broadcastIntent":Landroid/content/Intent;
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 265
    .restart local v2    # "broadcastIntent":Landroid/content/Intent;
    :cond_8
    sget-object v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPopupUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->RunnablePopupExpire:Ljava/lang/Runnable;

    const-wide/16 v10, 0xfa0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 270
    .end local v2    # "broadcastIntent":Landroid/content/Intent;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v6    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :pswitch_4
    iget-boolean v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->AnatenaAlertfrom:Z

    if-eqz v7, :cond_b

    .line 272
    const v7, 0x7f0701e0

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "Title":Ljava/lang/String;
    :goto_4
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f020073

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->hasExternalAntenna()Z

    move-result v7

    if-eqz v7, :cond_c

    const v7, 0x7f0701e2

    :goto_5
    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070298

    new-instance v9, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$8;

    invoke-direct {v9, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$8;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    .line 288
    new-instance v7, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 289
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewCoverClosed()Z

    move-result v7

    if-nez v7, :cond_a

    .line 291
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    if-nez v7, :cond_9

    .line 292
    new-instance v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$1;)V

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    .line 293
    :cond_9
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->access$700(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;)V

    .line 297
    :cond_a
    sget-object v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPopupUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->RunnablePopupExpire:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 274
    .end local v0    # "Title":Ljava/lang/String;
    :cond_b
    const v7, 0x7f0702bd

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "Title":Ljava/lang/String;
    goto :goto_4

    .line 276
    :cond_c
    const v7, 0x7f0701e1

    goto :goto_5

    .line 305
    .end local v0    # "Title":Ljava/lang/String;
    :pswitch_5
    const v7, 0x7f070265

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "antenna_Title":Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f020073

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07024b

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07020b

    new-instance v9, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$10;

    invoke-direct {v9, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$10;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070298

    new-instance v9, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$9;

    invoke-direct {v9, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$9;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    .line 340
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    if-nez v7, :cond_d

    .line 342
    new-instance v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$1;)V

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    .line 344
    :cond_d
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->access$700(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;)V

    goto/16 :goto_0

    .line 350
    .end local v1    # "antenna_Title":Ljava/lang/String;
    :pswitch_6
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->is3LMEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->handle3LMBlocking()V

    goto/16 :goto_0

    .line 354
    :pswitch_7
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f07024c

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070278

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    .line 358
    sget-object v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPopupUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->RunnablePopupExpire:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 363
    :pswitch_8
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f07024c

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07027a

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    .line 367
    sget-object v7, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPopupUiMsgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->RunnablePopupExpire:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 372
    :pswitch_9
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f070249

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0702c3

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f020073

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070298

    new-instance v9, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$12;

    invoke-direct {v9, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$12;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07020b

    new-instance v9, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11;

    invoke-direct {v9, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method private handle3LMBlocking()V
    .locals 2

    .prologue
    .line 573
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->is3LMEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const v0, 0x7f070299

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 576
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 577
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    .line 579
    :cond_0
    return-void
.end method

.method private handleExternalMedia()V
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 552
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    .line 553
    return-void
.end method

.method private handleLaunchAntennaEnable()V
    .locals 2

    .prologue
    .line 665
    const-string v0, "MtvUiPopUpActivity"

    const-string v1, "handleLaunchAntennaEnable..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v0, :cond_0

    .line 668
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAntennaOnOff()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAntennaOnOff(I)V

    .line 673
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    .line 674
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPopupUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->access$1300(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 675
    return-void
.end method

.method private handleLaunchAntennaOK()V
    .locals 6

    .prologue
    .line 638
    const-string v1, "MtvUiPopUpActivity"

    const-string v2, "handleLaunchAntennaOK..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v1, :cond_0

    .line 641
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 645
    :cond_0
    const-string v1, "MtvUiPopUpActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreferences.getComingReservationID()---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getComingReservationID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getComingReservationID()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 649
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getComingReservationID()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 651
    .local v0, "mReserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v0, :cond_1

    .line 653
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    if-eqz v1, :cond_1

    .line 655
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPopupUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->access$1300(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 661
    .end local v0    # "mReserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 662
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    .line 663
    return-void
.end method

.method private handleLowBatteryOK()V
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isBatteryLowPopupAvailable:Z

    .line 561
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 562
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    .line 563
    return-void
.end method

.method private handleLowMemoryOK()V
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isMemoryLowPopupAvailable:Z

    .line 568
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 569
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    .line 570
    return-void
.end method

.method private handleReservationOK()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 597
    const-string v2, "MtvUiPopUpActivity"

    const-string v5, "handleReservationOK..."

    invoke-static {v2, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v2, :cond_0

    .line 600
    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 603
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->AfetrreservationOk:Z

    .line 604
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 605
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 606
    const-string v2, "MtvUiPopUpActivity"

    const-string v5, "handleReservationOK... SCOVER"

    invoke-static {v2, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    new-instance v2, Landroid/content/ComponentName;

    const-string v5, "com.samsung.sec.mtv"

    const-string v6, "com.samsung.sec.mtv.ui.sviewcover.MtvUiSViewCover"

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 608
    const-string v2, "com.samsung.sec.mtv.ACTION_MTV_SVIEW_COVER_VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 611
    const-string v2, "directLaunch"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 612
    const-string v2, "dbId"

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mReservationId:I

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 613
    const-string v2, "youNeedToShowAlert"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 622
    :goto_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewCoverClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 623
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mReservationId:I

    invoke-static {v2, v5}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v1

    .line 625
    .local v1, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    iget v5, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-ne v5, v3, :cond_4

    :goto_2
    or-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 626
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    if-eqz v2, :cond_1

    .line 627
    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPopupUiMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mMtvReservationAlertControl:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->access$1300(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 633
    .end local v1    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->startActivity(Landroid/content/Intent;)V

    .line 634
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    .line 635
    return-void

    .line 616
    :cond_2
    const-string v2, "MtvUiPopUpActivity"

    const-string v5, "handleReservationOK... LIVEPLAYER"

    invoke-static {v2, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v2, "dbId"

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mReservationId:I

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    const-string v2, "youNeedToShowAlert"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 619
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 620
    new-instance v2, Landroid/content/ComponentName;

    const-string v5, "com.samsung.sec.mtv"

    const-string v6, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .restart local v1    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_3
    move v2, v4

    .line 625
    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private handleSleepTimerOK()V
    .locals 2

    .prologue
    .line 586
    const-string v0, "MtvUiPopUpActivity"

    const-string v1, "handleSleepTimerOK"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 593
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 594
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    .line 595
    return-void
.end method

.method public static isBatteryLowPopupAvailable()Z
    .locals 1

    .prologue
    .line 677
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isBatteryLowPopupAvailable:Z

    return v0
.end method

.method public static isMemoryLowPopupAvailable()Z
    .locals 1

    .prologue
    .line 682
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isMemoryLowPopupAvailable:Z

    return v0
.end method

.method private suppressCoverUI(Z)V
    .locals 4
    .param p1, "mSuppress"    # Z

    .prologue
    .line 488
    const-string v1, "MtvUiPopUpActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending broadcast s cover state change, mSuppress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 490
    .local v0, "mCChangeCoverStateIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 492
    const-string v1, "sender"

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 494
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const-string v1, "MtvUiPopUpActivity"

    const-string v2, "OnCreate"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sput-object p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mtvUiPopUpActivity:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    .line 105
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->requestWindowFeature(I)Z

    .line 106
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x680400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mContext:Landroid/content/Context;

    .line 116
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "popup_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->type:I

    .line 119
    const-string v1, "Alert_title"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->AnatenaAlertfrom:Z

    .line 120
    const-string v1, "MtvUiPopUpActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnCreate -type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget v1, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->type:I

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->createPopup(I)V

    .line 122
    sget-boolean v1, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 124
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 477
    const-string v0, "MtvUiPopUpActivity"

    const-string v1, "OnDestroy"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isBatteryLowPopupAvailable:Z

    .line 479
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mContext:Landroid/content/Context;

    .line 480
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 483
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    .line 485
    :cond_0
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onDestroy()V

    .line 486
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 449
    const-string v1, "MtvUiPopUpActivity"

    const-string v2, "OnPause"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v1, :cond_0

    .line 451
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 453
    :cond_0
    const-string v1, "MtvUiPopUpActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreferences.getReservationAlertID()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mReservationId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mReservationId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->AfetrreservationOk:Z

    if-eqz v1, :cond_1

    .line 455
    const-string v1, "MtvUiPopUpActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreferences.getReservationAlertID()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->AfetrreservationOk:Z

    .line 458
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 459
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dbId"

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mReservationId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    const-string v1, "youNeedToShowAlert"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 462
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 463
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.sec.mtv"

    const-string v3, "com.samsung.sec.mtv.ui.sviewcover.MtvUiSViewCover"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 466
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->startActivity(Landroid/content/Intent;)V

    .line 469
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "MtvUiPopUpActivity"

    const-string v2, " onpause startActivity"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onPause()V

    .line 471
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 474
    :cond_2
    return-void

    .line 465
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.sec.mtv"

    const-string v3, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 406
    const-string v0, "MtvUiPopUpActivity"

    const-string v1, "OnResume"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onResume()V

    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.stop.app-in-app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v0, :cond_2

    .line 422
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 433
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->suppressCoverUI(Z)V

    .line 434
    const/16 v0, 0x30

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->dialogGravity:I

    .line 435
    const-string v0, "MtvUiPopUpActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialogGravity TOP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->dialogGravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :goto_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->dialogGravity:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 443
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 444
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 438
    :cond_3
    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->suppressCoverUI(Z)V

    .line 439
    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->dialogGravity:I

    .line 440
    const-string v0, "MtvUiPopUpActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialogGravity CENTER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->dialogGravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 690
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 691
    const-string v0, "Alert_title"

    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->AnatenaAlertfrom:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 692
    return-void
.end method
