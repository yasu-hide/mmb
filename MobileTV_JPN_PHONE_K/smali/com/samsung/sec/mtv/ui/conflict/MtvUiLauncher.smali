.class public Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;
.super Landroid/app/Activity;
.source "MtvUiLauncher.java"

# interfaces
.implements Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvUiLauncher"

.field private static isstartedFromEpg:Z

.field private static reminderReservationID:I

.field private static reservationAlertNeedToShow:Z

.field private static reservationID:I


# instance fields
.field private listener:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mProgressDailog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 39
    sput v0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    .line 40
    sput v0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reminderReservationID:I

    .line 41
    sput-boolean v1, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationAlertNeedToShow:Z

    .line 42
    sput-boolean v1, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->isstartedFromEpg:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mProgressDailog:Landroid/app/ProgressDialog;

    .line 38
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mAlertDialog:Landroid/app/AlertDialog;

    .line 182
    new-instance v0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;-><init>(Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->listener:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reminderReservationID:I

    return v0
.end method

.method private createNOTTvRunningDialog()V
    .locals 3

    .prologue
    .line 248
    const-string v0, "MtvUiLauncher"

    const-string v1, "createNOTTvRunningDialog ::"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070249

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070292

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070298

    new-instance v2, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$3;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$3;-><init>(Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07020b

    new-instance v2, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$2;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$2;-><init>(Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mAlertDialog:Landroid/app/AlertDialog;

    .line 279
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$4;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$4;-><init>(Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 285
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 287
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 288
    return-void
.end method

.method private dismissAlertDialog()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    const-string v0, "MtvUiLauncher"

    const-string v1, "dismissAlertDialog : dialog null or not showing"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mProgressDailog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mProgressDailog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mProgressDailog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_0
    const-string v0, "MtvUiLauncher"

    const-string v1, "dismissDialog ::  dialog null or not showing"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private displayProgressDialog()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mProgressDailog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mProgressDailog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "MtvUiLauncher"

    const-string v1, "Already displaying Progress..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_0
    return-void

    .line 297
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mProgressDailog:Landroid/app/ProgressDialog;

    .line 299
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mProgressDailog:Landroid/app/ProgressDialog;

    const v1, 0x7f0702fc

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 300
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mProgressDailog:Landroid/app/ProgressDialog;

    const v1, 0x7f0702fb

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mProgressDailog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 302
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mProgressDailog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 303
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->mProgressDailog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private requestOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 509
    const-string v0, "MtvUiLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested Orientation in GenericPlayer ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] System Values [1:Port 0:Land -1:UnSpecified]: Mtv Values [0:Port 1:Land 3:Reverse Landscape] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->setRequestedOrientation(I)V

    .line 511
    return-void
.end method

.method private startMobileTVForEPG()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 129
    const-string v2, "MtvUiLauncher"

    const-string v3, "startMobileTVForEPG   :   ACTION_DTV_VIEW    : MObileTV running ....Start"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->listener:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->registerBaseListener(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 136
    .local v0, "epgIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "ACTION_DTV_VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v1, "launchIntent":Landroid/content/Intent;
    const-string v2, "EXTRA_VIEW_CHANNEL_NO"

    const-string v3, "EXTRA_VIEW_CHANNEL_NO"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string v2, "EXTRA_VIEW_SERVICE_ID"

    const-string v3, "EXTRA_VIEW_SERVICE_ID"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v2, "EXTRA_AREA_FLAG"

    const-string v3, "EXTRA_AREA_FLAG"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v2, "MtvUiLauncher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startMobileTVForEPG   :   epgChNo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EXTRA_VIEW_CHANNEL_NO"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", epgServiceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EXTRA_VIEW_SERVICE_ID"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " epgAreaId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EXTRA_AREA_FLAG"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.sec.mtv"

    const-string v4, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->startActivity(Landroid/content/Intent;)V

    .line 147
    const-string v2, "MtvUiLauncher"

    const-string v3, "startMobileTVForEPG   :   ACTION_DTV_VIEW    : MObileTV running ....End"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->finish()V

    .line 149
    return-void
.end method

.method private updateReservationVariables()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 106
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dbId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    .line 107
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "reminderDbId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reminderReservationID:I

    .line 109
    sget v0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    if-eq v0, v2, :cond_0

    .line 111
    const-string v0, "MtvUiLauncher"

    const-string v1, "RESERVATION_START_ALARM raised... !! ONE-SEG laucnhed for starting reservation"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "youNeedToShowAlert"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationAlertNeedToShow:Z

    .line 124
    return-void

    .line 113
    :cond_0
    sget v0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reminderReservationID:I

    if-eq v0, v2, :cond_1

    .line 116
    const-string v0, "MtvUiLauncher"

    const-string v1, "RESERVATION_REMINDER_ALARM raised... !! ONE-SEG laucnhed for preparing reservation"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    const-string v0, "MtvUiLauncher"

    const-string v1, "ONE-SEG not started for reservation... Probably launched manually !!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected closeServiceAndFinish()V
    .locals 2

    .prologue
    .line 362
    const-string v0, "MtvUiLauncher"

    const-string v1, "closeServiceAndFinish() :: "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->closeService()V

    .line 364
    invoke-static {}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->reset()V

    .line 365
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->finish()V

    .line 366
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 335
    const-string v0, "MtvUiLauncher"

    const-string v1, "onBackPressed :: called "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->closeServiceAndFinish()V

    .line 337
    return-void
.end method

.method public onCommunicationError()V
    .locals 4

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0702fa

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 382
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->dismissProgressDialog()V

    .line 383
    sget v1, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 384
    const-string v1, "MtvUiLauncher"

    const-string v2, "Reservation failed due to Unknown Return Value from assignResource dismissing the dialog..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 386
    .local v0, "mCurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 388
    .end local v0    # "mCurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->closeServiceAndFinish()V

    .line 389
    return-void
.end method

.method public onConflictWithTmm()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->createNOTTvRunningDialog()V

    .line 376
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const-string v1, "MtvUiLauncher"

    const-string v2, "OnCreate"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->registerListener(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getRotation(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 51
    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->requestOrientation(I)V

    .line 60
    :goto_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->is3LMEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAllowedBy3LMPolicy()Z

    move-result v1

    if-nez v1, :cond_3

    .line 64
    const-string v1, "MtvUiLauncher"

    const-string v2, "ONE_SEG launch blocked by 3LM !"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const v1, 0x7f070299

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->finish()V

    .line 101
    :goto_1
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getRotation(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 53
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->requestOrientation(I)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getRotation(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_2

    .line 55
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->requestOrientation(I)V

    goto :goto_0

    .line 57
    :cond_2
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->requestOrientation(I)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->listener:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->registerListener(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V

    .line 74
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->updateReservationVariables()V

    .line 76
    sget-boolean v1, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->EPGAPP_ENABLED:Z

    if-eqz v1, :cond_4

    .line 78
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, "epgItent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_DTV_VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    const-string v1, "MtvUiLauncher"

    const-string v2, "Called from EPG   :   ACTION_DTV_VIEW"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sput-boolean v4, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->isstartedFromEpg:Z

    .line 87
    .end local v0    # "epgItent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isTunerResourceAssigned()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->isstartedFromEpg:Z

    if-eqz v1, :cond_5

    .line 88
    const-string v1, "MtvUiLauncher"

    const-string v2, "Called from EPG   :   ACTION_DTV_VIEW    : MObileTV running ...."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->startMobileTVForEPG()V

    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {p0, v3, v3}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->overridePendingTransition(II)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->openService()V

    .line 98
    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->requestWindowFeature(I)Z

    .line 99
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->setContentView(I)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 343
    const-string v0, "MtvUiLauncher"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->listener:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->unregisterListener(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V

    .line 349
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->dismissAlertDialog()V

    .line 350
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->dismissProgressDialog()V

    .line 351
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->isstartedFromEpg:Z

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isConflictHandlerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->unRegisterListener(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;)V

    .line 357
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 358
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 155
    const-string v1, "MtvUiLauncher"

    const-string v2, "onNewIntent... Probably called as RESERVATION_REMINDER or RESERVATION_START alarm came"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "MtvUiLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " previous reservationID id :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "MtvUiLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " previous reminderReservationID  id :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reminderReservationID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "dbId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    const-string v1, "dbId"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    .line 161
    const-string v1, "MtvUiLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RESERVATION_START alarm came id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "MtvUiLauncher"

    const-string v2, "conflict_Pop-up is Showing Ignore the Intent"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v1, "reminderDbId"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reminderReservationID:I

    .line 166
    sget v1, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reminderReservationID:I

    if-eq v1, v4, :cond_0

    .line 167
    const-string v1, "MtvUiLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reminder Came For Some Other Reservation   :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reminderReservationID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   Cancel if there is Previous Reservation   :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget v1, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    if-eq v1, v4, :cond_2

    .line 170
    const-string v1, "MtvUiLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling previous Reservation... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 172
    .local v0, "mPreviourReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v0, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 174
    .end local v0    # "mPreviourReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_2
    sput v4, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 330
    return-void
.end method

.method public onTunerResourceAssignProcessing()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->displayProgressDialog()V

    .line 398
    return-void
.end method

.method public onTunerResourceAssignStarted()V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->displayProgressDialog()V

    .line 394
    return-void
.end method

.method public onTunerResourceAssignTimedOut(Z)V
    .locals 4
    .param p1, "isRetrying"    # Z

    .prologue
    .line 464
    if-eqz p1, :cond_0

    .line 466
    const-string v1, "MtvUiLauncher"

    const-string v2, "onTunerResourceAssignTimedOut - retrying"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0702fa

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 471
    sget v1, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 472
    const-string v1, "MtvUiLauncher"

    const-string v2, "Reservation Fail Due to TMM_RESOURCE_RELEASE_TIMEOUT"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 474
    .local v0, "mCurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 476
    .end local v0    # "mCurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->dismissProgressDialog()V

    .line 477
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->closeServiceAndFinish()V

    goto :goto_0
.end method

.method public onTunerResourceAssigned()V
    .locals 10

    .prologue
    const/high16 v9, 0x4000000

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 401
    const-string v4, "MtvUiLauncher"

    const-string v5, "onTunerResourceAssigned() :: "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->dismissProgressDialog()V

    .line 404
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->finish()V

    .line 405
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v1, "launchIntent":Landroid/content/Intent;
    sget v4, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    if-eq v4, v7, :cond_2

    .line 408
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    invoke-static {v4, v5}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v2

    .line 409
    .local v2, "mCurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v2, :cond_0

    .line 411
    iget v4, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v4, :cond_0

    iget-wide v4, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 413
    const-string v4, "MtvUiLauncher"

    const-string v5, "Background Service Start by START ALARM!"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/4 v3, 0x0

    .line 415
    .local v3, "serviceIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "serviceIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .restart local v3    # "serviceIntent":Landroid/content/Intent;
    const-string v4, "dbId"

    sget v5, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    const-string v4, "COMMAND_KEY"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    const-string v4, "youNeedToShowAlert"

    sget-boolean v5, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationAlertNeedToShow:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 461
    .end local v2    # "mCurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .end local v3    # "serviceIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 423
    .restart local v2    # "mCurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_0
    const-string v4, "MtvUiLauncher"

    const-string v5, "Reservation started afetr TMM_RESOURCE_ASSIGNED"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v4, "dbId"

    sget v5, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    const-string v4, "youNeedToShowAlert"

    sget-boolean v5, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationAlertNeedToShow:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    .end local v2    # "mCurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_1
    :goto_1
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 457
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.sec.mtv"

    const-string v6, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 427
    :cond_2
    sget v4, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reminderReservationID:I

    if-eq v4, v7, :cond_3

    .line 429
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reminderReservationID:I

    invoke-static {v4, v5}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v2

    .line 430
    .restart local v2    # "mCurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v2, :cond_1

    .line 432
    iget v4, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v4, :cond_1

    iget-wide v4, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 434
    const-string v4, "MtvUiLauncher"

    const-string v5, "Background Service Start by REMINDER ALARM !"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v3, 0x0

    .line 436
    .restart local v3    # "serviceIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "serviceIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .restart local v3    # "serviceIntent":Landroid/content/Intent;
    const-string v4, "reminderDbId"

    sget v5, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reminderReservationID:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    const-string v4, "COMMAND_KEY"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 446
    .end local v2    # "mCurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .end local v3    # "serviceIntent":Landroid/content/Intent;
    :cond_3
    sget-boolean v4, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->isstartedFromEpg:Z

    if-eqz v4, :cond_1

    .line 447
    const-string v4, "MtvUiLauncher"

    const-string v5, "Called from EPG   :   Starting MainPLayer with ACTION_DTV_VIEW...."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 449
    .local v0, "epgIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "launchIntent":Landroid/content/Intent;
    const-string v4, "ACTION_DTV_VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .restart local v1    # "launchIntent":Landroid/content/Intent;
    const-string v4, "EXTRA_VIEW_CHANNEL_NO"

    const-string v5, "EXTRA_VIEW_CHANNEL_NO"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    const-string v4, "EXTRA_VIEW_SERVICE_ID"

    const-string v5, "EXTRA_VIEW_SERVICE_ID"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    const-string v4, "EXTRA_AREA_FLAG"

    const-string v5, "EXTRA_AREA_FLAG"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    const-string v4, "MtvUiLauncher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Called from EPG   :   Starting MainPLayer with ACTION_DTV_VIEW...., epgChNo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "EXTRA_VIEW_CHANNEL_NO"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", epgServiceId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "EXTRA_VIEW_SERVICE_ID"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " epgAreaId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "EXTRA_AREA_FLAG"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method public onTunerResourceAssignmentException()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public onTunerResourceBusy(Z)V
    .locals 4
    .param p1, "isRetrying"    # Z

    .prologue
    .line 484
    if-eqz p1, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->displayProgressDialog()V

    .line 487
    const-string v1, "MtvUiLauncher"

    const-string v2, "onTunerResourceBusy - retrying"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0702fa

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 492
    sget v1, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 493
    const-string v1, "MtvUiLauncher"

    const-string v2, "Reservation fail due to TMM_RESOURCE_RELEASE_RUNNING 5 retry over"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->reservationID:I

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 495
    .local v0, "mCurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 497
    .end local v0    # "mCurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->dismissProgressDialog()V

    .line 498
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->finish()V

    goto :goto_0
.end method

.method protected showLowBatteryPopup()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 514
    const-string v1, "MtvUiLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " showLowBatteryPopup() :: isBatteryLowPopupAvailable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isBatteryLowPopupAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isFinishing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isAppExiting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isBatteryLowPopupAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getRotation(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 518
    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->setRequestedOrientation(I)V

    .line 524
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 525
    .local v0, "intentPopup":Landroid/content/Intent;
    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string v1, "popup_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 527
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->startActivity(Landroid/content/Intent;)V

    .line 529
    .end local v0    # "intentPopup":Landroid/content/Intent;
    :cond_0
    return-void

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getRotation(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 520
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->setRequestedOrientation(I)V

    goto :goto_0

    .line 522
    :cond_2
    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->setRequestedOrientation(I)V

    goto :goto_0
.end method
