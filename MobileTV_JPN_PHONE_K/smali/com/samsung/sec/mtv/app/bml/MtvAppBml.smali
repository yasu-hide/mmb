.class public Lcom/samsung/sec/mtv/app/bml/MtvAppBml;
.super Ljava/lang/Object;
.source "MtvAppBml.java"

# interfaces
.implements Landroid/broadcast/IMtvOneSegBmlViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/app/bml/MtvAppBml$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvAppBml"

.field private static mContext:Landroid/content/Context;

.field private static mMtvAppBml:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;


# instance fields
.field private isBMLDialogMsgSet:Z

.field private mBmlAnimationListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;

.field private mBmlDialogListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

.field private mBmlSurfaceListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;

.field private mBmlUIMsgHandler:Landroid/os/Handler;

.field private mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

.field private mCuurUIEvt:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

.field private mDialgDisplayed:Z

.field private mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

.field mdialogMessege:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mContext:Landroid/content/Context;

    .line 55
    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppBml:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 56
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    .line 57
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 58
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlSurfaceListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;

    .line 59
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlDialogListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    .line 60
    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlAnimationListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;

    .line 61
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_BASIC:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    .line 62
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->isBMLDialogMsgSet:Z

    .line 63
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_NONE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mCuurUIEvt:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 64
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mDialgDisplayed:Z

    .line 91
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;-><init>(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    .line 74
    sput-object p1, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlAnimationListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/bml/MtvAppBml;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mCuurUIEvt:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlDialogListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlSurfaceListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;

    return-object v0
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "arr"    # [B

    .prologue
    .line 634
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    .local v1, "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 635
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "MtvAppBml"

    const-string v3, "UnsupportedEncodingException"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v1, ""

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/app/bml/MtvAppBml;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppBml:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppBml:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 86
    :cond_0
    sput-object p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mContext:Landroid/content/Context;

    .line 87
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppBml:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    return-object v0
.end method


# virtual methods
.method public appExIMEEndPeer(Z[B)V
    .locals 1
    .param p1, "in_result"    # Z
    .param p2, "in_buff"    # [B

    .prologue
    .line 473
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/IMtvOneSegBmlViewControl;->appExIMEEndPeer(Z[B)V

    .line 477
    :cond_0
    return-void
.end method

.method public cb_appIMEStartPeer([BZZII)V
    .locals 6
    .param p1, "text"    # [B
    .param p2, "isPassword"    # Z
    .param p3, "isMultiLine"    # Z
    .param p4, "mode"    # I
    .param p5, "maxlength"    # I

    .prologue
    .line 1477
    const/4 v2, 0x0

    .line 1479
    .local v2, "inputMode":I
    packed-switch p4, :pswitch_data_0

    .line 1512
    :goto_0
    :pswitch_0
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;-><init>()V

    .line 1513
    .local v0, "ImeParams":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;
    iput-boolean p3, v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->isMultiLine:Z

    .line 1514
    iput-boolean p2, v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->isPassword:Z

    .line 1515
    iput p5, v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->maxlength:I

    .line 1516
    iput v2, v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->mode:I

    .line 1517
    iput-object p1, v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->text:[B

    .line 1520
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_START_IME_INPUT_METHOD:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 1522
    .local v1, "event":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 1524
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1526
    :cond_0
    return-void

    .line 1481
    .end local v0    # "ImeParams":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;
    .end local v1    # "event":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    :pswitch_1
    const/4 v2, 0x0

    .line 1482
    goto :goto_0

    .line 1484
    :pswitch_2
    const/4 v2, 0x5

    .line 1485
    goto :goto_0

    .line 1487
    :pswitch_3
    const/4 v2, 0x6

    .line 1488
    goto :goto_0

    .line 1490
    :pswitch_4
    const/4 v2, 0x7

    .line 1491
    goto :goto_0

    .line 1493
    :pswitch_5
    const/16 v2, 0x8

    .line 1494
    goto :goto_0

    .line 1496
    :pswitch_6
    const/16 v2, 0x9

    .line 1497
    goto :goto_0

    .line 1499
    :pswitch_7
    const/16 v2, 0xa

    .line 1500
    goto :goto_0

    .line 1502
    :pswitch_8
    const/16 v2, 0xb

    .line 1503
    goto :goto_0

    .line 1505
    :pswitch_9
    const/16 v2, 0xc

    .line 1506
    goto :goto_0

    .line 1479
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public cb_bmlControlTypeChanged()V
    .locals 4

    .prologue
    .line 1530
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_KEYPAD_CHANGED:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 1532
    .local v0, "event":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1534
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1536
    :cond_0
    return-void
.end method

.method public cb_bmlHaltExecuted()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlDialogListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlDialogListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    invoke-interface {v0}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;->halt()V

    .line 751
    :cond_0
    return-void
.end method

.method public cb_destroyBMLDialog()V
    .locals 4

    .prologue
    .line 1321
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_DESTROY_DIALOGUE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 1323
    .local v0, "event":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1325
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1327
    :cond_0
    return-void
.end method

.method public cb_mailToPeer([B[B[B)V
    .locals 7
    .param p1, "in_subject"    # [B
    .param p2, "in_body"    # [B
    .param p3, "in_to_address"    # [B

    .prologue
    .line 731
    invoke-static {p1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    .line 732
    .local v4, "subject":Ljava/lang/String;
    invoke-static {p2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "body":Ljava/lang/String;
    invoke-static {p3}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, "address":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    .line 737
    .local v3, "mailto":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    .local v2, "i":Landroid/content/Intent;
    const-string v5, "text/plain"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    const-string v5, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    sget-object v5, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mContext:Landroid/content/Context;

    const-string v6, "Send mail..."

    invoke-static {v2, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 743
    return-void
.end method

.method public cb_phoneToPeer(Ljava/lang/String;)V
    .locals 4
    .param p1, "in_phone_number"    # Ljava/lang/String;

    .prologue
    .line 1350
    const-string v1, "MtvAppBml"

    const-string v2, "BML_CB_XDPA_PhoneToPeer:"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    const/4 v0, 0x0

    .line 1352
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1353
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1354
    return-void
.end method

.method public cb_processCommand(IILjava/lang/String;)Z
    .locals 3
    .param p1, "in_cmd"    # I
    .param p2, "in_reply"    # I
    .param p3, "fFuncName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 755
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-nez v2, :cond_0

    .line 816
    :goto_0
    return v0

    .line 760
    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    .line 816
    goto :goto_0

    .line 764
    :sswitch_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastDataNotifyMode()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 766
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v2, v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setDailogNeed(Z)V

    .line 767
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setReplyToEngine(Z)V

    goto :goto_1

    .line 769
    :cond_2
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastDataNotifyMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 771
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v2, p1}, Landroid/broadcast/IMtvOneSegBmlViewControl;->allowConnection(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 773
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v2, v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setDailogNeed(Z)V

    .line 774
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setReplyToEngine(Z)V

    goto :goto_1

    .line 781
    :sswitch_1
    const-string v2, "X_DPA_getCurPos"

    invoke-virtual {p3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 783
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastDataLocationMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 785
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v2, p1}, Landroid/broadcast/IMtvOneSegBmlViewControl;->allowLocation(I)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 787
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v2, v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setDailogNeed(Z)V

    .line 788
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setReplyToEngine(Z)V

    goto :goto_1

    .line 791
    :cond_3
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastDataLocationMode()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 793
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v2, v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setDailogNeed(Z)V

    .line 794
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setReplyToEngine(Z)V

    goto :goto_1

    .line 797
    :cond_4
    const-string v2, "X_DPA_getIRDID"

    invoke-virtual {p3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 799
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastDataManufactureMode()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 801
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v2, v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setDailogNeed(Z)V

    .line 802
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v2, v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setReplyToEngine(Z)V

    goto :goto_1

    .line 806
    :cond_5
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v2, v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setDailogNeed(Z)V

    .line 807
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setReplyToEngine(Z)V

    goto/16 :goto_1

    .line 760
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x98 -> :sswitch_1
    .end sparse-switch
.end method

.method public cb_setBMLFullView()V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlSurfaceListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlSurfaceListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;->setBMLFullView(Z)V

    .line 867
    :cond_0
    return-void
.end method

.method public cb_setBmlAnimationText(Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;)V
    .locals 5
    .param p1, "message"    # Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    .prologue
    .line 822
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;->MTV_APP_BML_ANIM_MSG_NONE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    .line 824
    .local v0, "animMessage":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->BML_RECEIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    if-ne p1, v2, :cond_2

    .line 826
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;->MTV_APP_BML_RECEIVING:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    .line 833
    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SET_ANIMATION_TEXT:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 835
    .local v1, "event":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 837
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 839
    :cond_1
    return-void

    .line 828
    .end local v1    # "event":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    :cond_2
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->BML_RETREIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    if-ne p1, v2, :cond_0

    .line 830
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;->MTV_APP_BML_RETREIVING:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    goto :goto_0
.end method

.method public cb_setDialogBtnNum(I)V
    .locals 5
    .param p1, "BtnNum"    # I

    .prologue
    .line 1331
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SET_DIALOG_BTN_NUM:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 1333
    .local v0, "event":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1335
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1337
    :cond_0
    return-void
.end method

.method public cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V
    .locals 5
    .param p1, "dialogMessege"    # Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    .prologue
    .line 870
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_SRTING_NONE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 871
    .local v1, "stringResId":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mdialogMessege:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    .line 873
    sget-object v2, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$2;->$SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages:[I

    invoke-virtual {p1}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1278
    :goto_0
    sget-object v2, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 1280
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->isBMLDialogMsgSet:Z

    .line 1287
    :goto_1
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SET_DIALOGUE_MSG:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 1289
    .local v0, "event":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1291
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1293
    :cond_0
    return-void

    .line 877
    .end local v0    # "event":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    :pswitch_0
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_SETLOCATION_HTTP:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 879
    goto :goto_0

    .line 883
    :pswitch_1
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_SETLOCATION_SSL_BEGIN:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 885
    goto :goto_0

    .line 889
    :pswitch_2
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_SETLOCATION_SSL_END:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 891
    goto :goto_0

    .line 895
    :pswitch_3
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_SERVER_CERT_CONFIRM_DIALOG:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 897
    goto :goto_0

    .line 901
    :pswitch_4
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_SERVER_CERT_CONFIRM_DIALOG_QEUSTION:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 903
    goto :goto_0

    .line 907
    :pswitch_5
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_ERROR_NOMEMORY:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 909
    goto :goto_0

    .line 913
    :pswitch_6
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_ERROR_MIXEDSECURETYPE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 915
    goto :goto_0

    .line 919
    :pswitch_7
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_ERROR_BADURL:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 921
    goto :goto_0

    .line 925
    :pswitch_8
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_ERROR_BADMIMETYPE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 927
    goto :goto_0

    .line 932
    :pswitch_9
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_ERROR_TOTAL_SIZEOVER:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 934
    goto :goto_0

    .line 938
    :pswitch_a
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_TRANSMITTEXTDATA:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 940
    goto :goto_0

    .line 945
    :pswitch_b
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_transmitTextDataOverIP:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 947
    goto :goto_0

    .line 951
    :pswitch_c
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_writePersistentArray:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 953
    goto :goto_0

    .line 957
    :pswitch_d
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_saveImageToMemoryCard:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 959
    goto :goto_0

    .line 963
    :pswitch_e
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_saveHttpServerImageToMemoryCard:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 965
    goto :goto_0

    .line 969
    :pswitch_f
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeCproBM:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 971
    goto :goto_0

    .line 975
    :pswitch_10
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_mailTo:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 977
    goto :goto_0

    .line 981
    :pswitch_11
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_startResidentApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 983
    goto :goto_0

    .line 987
    :pswitch_12
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_phoneTo:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 989
    goto :goto_0

    .line 993
    :pswitch_13
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeSchInfo:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 995
    goto :goto_0

    .line 999
    :pswitch_14
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeAddressBookInfo:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1001
    goto :goto_0

    .line 1005
    :pswitch_15
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getCurPos:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1007
    goto :goto_0

    .line 1011
    :pswitch_16
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getIRDID:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1013
    goto :goto_0

    .line 1018
    :pswitch_17
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getRcvCond:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1020
    goto :goto_0

    .line 1024
    :pswitch_18
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_WRITEBOOKMARK:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1026
    goto :goto_0

    .line 1030
    :pswitch_19
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_OLDEST:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1032
    goto :goto_0

    .line 1036
    :pswitch_1a
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_WRITEPERSISTENTARRAY:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1038
    goto :goto_0

    .line 1042
    :pswitch_1b
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_DTV_FAILUREACTION_OUTOFBASEURIDIRECTORY:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1044
    goto :goto_0

    .line 1048
    :pswitch_1c
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_DTV_FAILUREACTION_ILLEGALFUNCTION:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1050
    goto :goto_0

    .line 1054
    :pswitch_1d
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_DTV_FAILUREACTION_INVALIDSUFFIX:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1056
    goto :goto_0

    .line 1060
    :pswitch_1e
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_DTV_DRAWERROR_TOOMANY_NESTS:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1062
    goto :goto_0

    .line 1066
    :pswitch_1f
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_DTV_DRAWERROR_TIMEDOUT:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1068
    goto :goto_0

    .line 1072
    :pswitch_20
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_ARIBDC_OPEN:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1074
    goto :goto_0

    .line 1078
    :pswitch_21
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_ARIBDC_READ:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1080
    goto/16 :goto_0

    .line 1084
    :pswitch_22
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_ARIBDC_TIMEDOUT:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1086
    goto/16 :goto_0

    .line 1090
    :pswitch_23
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_AUTH_FORMAT:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1092
    goto/16 :goto_0

    .line 1096
    :pswitch_24
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_AUTH_UNKNOWN:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1098
    goto/16 :goto_0

    .line 1102
    :pswitch_25
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_BROADCAST_TRANSITON:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1104
    goto/16 :goto_0

    .line 1108
    :pswitch_26
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_CACHE_EXPIRE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1110
    goto/16 :goto_0

    .line 1114
    :pswitch_27
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_CACHE_NONE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1116
    goto/16 :goto_0

    .line 1120
    :pswitch_28
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_CROSSMEDIA:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1122
    goto/16 :goto_0

    .line 1126
    :pswitch_29
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_INVAL:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1128
    goto/16 :goto_0

    .line 1133
    :pswitch_2a
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_INVAL_TVCALL:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1135
    goto/16 :goto_0

    .line 1139
    :pswitch_2b
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_NOSERVER:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1141
    goto/16 :goto_0

    .line 1145
    :pswitch_2c
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_NOTFOUND:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1147
    goto/16 :goto_0

    .line 1151
    :pswitch_2d
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_TIMEOUT:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1153
    goto/16 :goto_0

    .line 1157
    :pswitch_2e
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_DOMAIN:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1159
    goto/16 :goto_0

    .line 1163
    :pswitch_2f
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_FILE_OPEN:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1165
    goto/16 :goto_0

    .line 1169
    :pswitch_30
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_FILE_READ:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1171
    goto/16 :goto_0

    .line 1175
    :pswitch_31
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_GENERIC:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1177
    goto/16 :goto_0

    .line 1181
    :pswitch_32
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_NO_CONTENT:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1183
    goto/16 :goto_0

    .line 1187
    :pswitch_33
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_REDIRECT_CANCELED:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1189
    goto/16 :goto_0

    .line 1193
    :pswitch_34
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_REDIRECT_FORMAT:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1195
    goto/16 :goto_0

    .line 1199
    :pswitch_35
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_REQ_BODY_SIZEOVER:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1201
    goto/16 :goto_0

    .line 1205
    :pswitch_36
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_REQ_HEADER_SIZEOVER:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1207
    goto/16 :goto_0

    .line 1211
    :pswitch_37
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_REQTIMEOUT:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1213
    goto/16 :goto_0

    .line 1217
    :pswitch_38
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_RESPTIMEOUT:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1219
    goto/16 :goto_0

    .line 1223
    :pswitch_39
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_SSL:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1225
    goto/16 :goto_0

    .line 1229
    :pswitch_3a
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_TCP:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1231
    goto/16 :goto_0

    .line 1235
    :pswitch_3b
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_TOO_MANY_REDIRECT:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1237
    goto/16 :goto_0

    .line 1241
    :pswitch_3c
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_TOOMANYAUTH:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1243
    goto/16 :goto_0

    .line 1247
    :pswitch_3d
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_HTTP_E_AUTH_NOHEADER:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1249
    goto/16 :goto_0

    .line 1253
    :pswitch_3e
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_HTTP_E_REQ_TOOMANYCONTINUE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1255
    goto/16 :goto_0

    .line 1259
    :pswitch_3f
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_NOTIFY_CONTENT_ERROR_UNKNOWN:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1261
    goto/16 :goto_0

    .line 1265
    :pswitch_40
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_SYSTEMCONTINUE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1267
    goto/16 :goto_0

    .line 1271
    :pswitch_41
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_EXPIRED:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .line 1273
    goto/16 :goto_0

    .line 1284
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->isBMLDialogMsgSet:Z

    goto/16 :goto_1

    .line 873
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
    .end packed-switch
.end method

.method public cb_showBMLDialog(I)Z
    .locals 5
    .param p1, "in_cmd"    # I

    .prologue
    const/4 v1, 0x0

    .line 1297
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v2}, Landroid/broadcast/IMtvOneSegBmlViewControl;->isDailogNeed()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->isBMLDialogMsgSet:Z

    if-nez v2, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return v1

    .line 1304
    :cond_1
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SHOW_DIALOGUE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 1306
    .local v0, "event":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1308
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1309
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->isBMLDialogMsgSet:Z

    .line 1310
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public cb_startBmlAnimation()V
    .locals 4

    .prologue
    .line 842
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_START_ANIMATION:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 844
    .local v0, "event":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 846
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 848
    :cond_0
    return-void
.end method

.method public cb_startResidentAppPeer([BI[B[Ljava/lang/String;)I
    .locals 11
    .param p1, "in_app_name"    # [B
    .param p2, "in_show_av"    # I
    .param p3, "in_return_uri"    # [B
    .param p4, "in_ex_info"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/16 v7, -0x3ea

    .line 1358
    invoke-static {p1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    .line 1360
    .local v0, "appName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1361
    .local v4, "ex_info_cnt":I
    const/4 v1, 0x0

    .line 1363
    .local v1, "browser_type":I
    if-eqz p4, :cond_0

    .line 1364
    array-length v4, p4

    .line 1367
    :cond_0
    const-string v9, "ComBrowser"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1369
    const/4 v9, 0x3

    if-ge v4, v9, :cond_2

    .line 1370
    const-string v7, "MtvAppBml"

    const-string v8, "XDPA>StartResidentAppPeer: Few ex_info !:"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    const/16 v7, -0x3eb

    .line 1421
    :cond_1
    :goto_0
    return v7

    .line 1374
    :cond_2
    if-eqz p4, :cond_3

    .line 1375
    const/4 v9, 0x1

    aget-object v9, p4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1376
    :cond_3
    sget-object v9, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->BML_START_RESIDENT_APP_C_PROFILE_BROWSER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    invoke-virtual {v9}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->ordinal()I

    move-result v9

    if-ne v1, v9, :cond_4

    .line 1378
    const-string v8, "MtvAppBml"

    const-string v9, "BML_START_RESIDENT_APP_C_PROFILE_BROWSER is not supported !:"

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1380
    :cond_4
    sget-object v9, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->BML_START_RESIDENT_APP_FULL_BROWSER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    invoke-virtual {v9}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->ordinal()I

    move-result v9

    if-ne v1, v9, :cond_6

    .line 1382
    const-string v7, "MtvAppBml"

    const-string v9, "BML_START_RESIDENT_APP_FULL_BROWSER !:"

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :goto_1
    if-eqz p4, :cond_5

    .line 1395
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1396
    .local v5, "it":Landroid/content/Intent;
    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1397
    .local v6, "u":Landroid/net/Uri;
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1398
    sget-object v7, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "it":Landroid/content/Intent;
    .end local v6    # "u":Landroid/net/Uri;
    :cond_5
    :goto_2
    move v7, v8

    .line 1421
    goto :goto_0

    .line 1383
    :cond_6
    sget-object v9, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->BML_START_RESIDENT_APP_LIVE_BROWSER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    invoke-virtual {v9}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->ordinal()I

    move-result v9

    if-ne v1, v9, :cond_1

    .line 1385
    const-string v7, "MtvAppBml"

    const-string v9, "BML_START_RESIDENT_APP_LIVE_BROWSER !:"

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1400
    :catch_0
    move-exception v2

    .line 1403
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1408
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v7, "BookmarkList"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1410
    sget-object v3, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_START_TVLINK_TAB:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 1412
    .local v3, "event":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    iget-object v7, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    if-eqz v7, :cond_5

    .line 1414
    iget-object v7, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->ordinal()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1418
    .end local v3    # "event":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    :cond_8
    const-string v7, "MtvAppBml"

    const-string v9, "BML_CB_XDPA_StartResidentAppPeer: Unknown application name"

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public cb_stopBmlAnimation()V
    .locals 4

    .prologue
    .line 852
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_STOP_ANIMATION:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 854
    .local v0, "event":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlUIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 858
    :cond_0
    return-void
.end method

.method public cb_storeImage([BZ[B)I
    .locals 14
    .param p1, "in_filename"    # [B
    .param p2, "in_overwrite"    # Z
    .param p3, "in_data"    # [B

    .prologue
    .line 647
    const/4 v9, 0x0

    .line 649
    .local v9, "mImagePath":Ljava/lang/String;
    const-string v10, "MtvAppBml"

    const-string v11, "BML_CB_Control_SaveImageToMemoryCardPeer:"

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const/4 v10, 0x0

    move-object/from16 v0, p3

    array-length v11, v0

    move-object/from16 v0, p3

    invoke-static {v0, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 652
    .local v1, "bmpImage":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 654
    const-string v10, "MtvAppBml"

    const-string v11, "BML_CB_Control_SaveImageToMemoryCardPeer: in_data is null"

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 661
    .local v4, "fileName":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v10}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastImageLocationStorage()I

    move-result v10

    if-nez v10, :cond_4

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isExternalMemoryAvailable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 664
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v10

    if-nez v10, :cond_1

    .line 665
    const-string v10, "MtvAppBml"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SaveImageTo Memorycard  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_1
    const-string v9, "/mnt/extSdCard/"

    .line 683
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 684
    .local v5, "filePath":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 687
    .local v8, "imgFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 690
    if-eqz p2, :cond_7

    .line 692
    const-string v10, "MtvAppBml"

    const-string v11, "Overrite the image ! "

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 701
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_1
    const/4 v6, 0x0

    .line 709
    .local v6, "fileout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    .end local v6    # "fileout":Ljava/io/FileOutputStream;
    .local v7, "fileout":Ljava/io/FileOutputStream;
    if-eqz v1, :cond_3

    :try_start_2
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 712
    const-string v10, "MtvAppBml"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ImageFile is saved :/sdcard/image/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 719
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v6, v7

    .line 725
    .end local v7    # "fileout":Ljava/io/FileOutputStream;
    .restart local v6    # "fileout":Ljava/io/FileOutputStream;
    :goto_2
    const/4 v10, 0x0

    .end local v5    # "filePath":Ljava/io/File;
    .end local v6    # "fileout":Ljava/io/FileOutputStream;
    .end local v8    # "imgFile":Ljava/io/File;
    :goto_3
    return v10

    .line 670
    :cond_4
    iget-object v10, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v10}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastImageLocationStorage()I

    move-result v10

    if-nez v10, :cond_5

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isExternalMemoryAvailable()Z

    move-result v10

    if-nez v10, :cond_5

    .line 673
    const/16 v10, -0x41a

    goto :goto_3

    .line 677
    :cond_5
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v10

    if-nez v10, :cond_6

    .line 678
    const-string v10, "MtvAppBml"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SaveImageTo Phone  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_6
    const-string v9, "/sdcard/"

    goto :goto_0

    .line 697
    .restart local v5    # "filePath":Ljava/io/File;
    .restart local v8    # "imgFile":Ljava/io/File;
    :cond_7
    const/16 v10, -0x41d

    goto :goto_3

    .line 702
    :catch_0
    move-exception v3

    .line 703
    .local v3, "e1":Ljava/io/IOException;
    const-string v10, "MtvAppBml"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveFile File creation fail ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 720
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v7    # "fileout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 721
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "MtvAppBml"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveFile FileOutputStream.close() IOException ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 724
    .end local v7    # "fileout":Ljava/io/FileOutputStream;
    .restart local v6    # "fileout":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 714
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 715
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_4
    const-string v10, "MtvAppBml"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveFile FileNotFoundException ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 719
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    .line 720
    :catch_3
    move-exception v2

    .line 721
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "MtvAppBml"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveFile FileOutputStream.close() IOException ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 718
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 719
    :goto_5
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 723
    :goto_6
    throw v10

    .line 720
    :catch_4
    move-exception v2

    .line 721
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "MtvAppBml"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "saveFile FileOutputStream.close() IOException ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 718
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "fileout":Ljava/io/FileOutputStream;
    .restart local v7    # "fileout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "fileout":Ljava/io/FileOutputStream;
    .restart local v6    # "fileout":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 714
    .end local v6    # "fileout":Ljava/io/FileOutputStream;
    .restart local v7    # "fileout":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7    # "fileout":Ljava/io/FileOutputStream;
    .restart local v6    # "fileout":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public cb_updateBMLSurfaceView()V
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlSurfaceListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlSurfaceListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;

    invoke-interface {v0}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;->updateBMLSurfaceView()V

    .line 1345
    :cond_0
    return-void
.end method

.method public cb_writeAddressBookInfoPeer([B[BLjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "in_name"    # [B
    .param p2, "in_kana"    # [B
    .param p3, "in_tel"    # Ljava/lang/String;
    .param p4, "in_mail"    # Ljava/lang/String;

    .prologue
    .line 1426
    invoke-static {p1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    .line 1432
    .local v1, "mName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1433
    .local v0, "insertIntent":Landroid/content/Intent;
    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    const-string v2, "phone"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1435
    const-string v2, "email"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1436
    sget-object v2, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1437
    const/4 v2, 0x0

    return v2
.end method

.method public cb_writeSchInfoPeer(SIIIIIIS[B[BZ)I
    .locals 16
    .param p1, "in_year"    # S
    .param p2, "in_month"    # I
    .param p3, "in_day"    # I
    .param p4, "in_dayofweek"    # I
    .param p5, "in_hour"    # I
    .param p6, "in_minute"    # I
    .param p7, "in_second"    # I
    .param p8, "millisecond"    # S
    .param p9, "in_title"    # [B
    .param p10, "in_text"    # [B
    .param p11, "in_sound_flag"    # Z

    .prologue
    .line 1443
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1444
    const-string v3, "MtvAppBml"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeSchInfoPeer: Y"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "W"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "H"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Mn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Sc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Msc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    :cond_0
    new-instance v2, Ljava/util/GregorianCalendar;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 1449
    .local v2, "gCal":Ljava/util/GregorianCalendar;
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v14

    .line 1450
    .local v14, "startMillis":J
    const-wide/32 v4, 0x36ee80

    add-long v10, v14, v4

    .line 1453
    .local v10, "endMillis":J
    invoke-static/range {p9 .. p9}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v13

    .line 1454
    .local v13, "title":Ljava/lang/String;
    invoke-static/range {p10 .. p10}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v9

    .line 1456
    .local v9, "description":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1457
    .local v12, "intent":Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/event"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1459
    const-string v3, "beginTime"

    invoke-virtual {v12, v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1460
    const-string v3, "endTime"

    invoke-virtual {v12, v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1461
    const-string v3, "title"

    invoke-virtual {v12, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1462
    const-string v3, "description"

    invoke-virtual {v12, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1464
    if-eqz p11, :cond_1

    .line 1466
    const-string v3, "alarm"

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1469
    :cond_1
    sget-object v3, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1470
    const/4 v3, 0x0

    return v3
.end method

.method public deInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, p0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->dettachViewListener(Landroid/broadcast/IMtvOneSegBmlViewListener;)V

    .line 341
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    .line 344
    :cond_0
    sput-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mContext:Landroid/content/Context;

    .line 345
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 346
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlSurfaceListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;

    .line 347
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlDialogListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    .line 348
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlAnimationListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;

    .line 349
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 350
    sput-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppBml:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 351
    return-void
.end method

.method public enableBMLComponent(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V
    .locals 2
    .param p1, "context"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 245
    if-nez p1, :cond_1

    .line 247
    const-string v0, "MtvAppBml"

    const-string v1, "enableBMLComponent() :: Context is null !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v0

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegFactory;->getBMLViewControl()Landroid/broadcast/IMtvOneSegBmlViewControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->setControlInterface(Landroid/broadcast/IMtvOneSegBmlViewControl;)V

    .line 252
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->enable()V

    goto :goto_0
.end method

.method public getBmlControlType()Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x10

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 410
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-nez v1, :cond_0

    .line 412
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_BASIC:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    .line 464
    :goto_0
    return-object v1

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v1}, Landroid/broadcast/IMtvOneSegBmlViewControl;->getUserKeyPadType()I

    move-result v0

    .line 416
    .local v0, "mKeyPad_type":I
    and-int/lit8 v1, v0, 0x20

    if-ne v1, v5, :cond_1

    and-int/lit8 v1, v0, 0x1

    if-ne v1, v2, :cond_1

    and-int/lit8 v1, v0, 0x4

    if-ne v1, v3, :cond_1

    and-int/lit8 v1, v0, 0x10

    if-eq v1, v4, :cond_1

    .line 421
    const-string v1, "MtvAppBml"

    const-string v2, "getBmlControlType: 1st case"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_KEYPAD:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    .line 464
    :goto_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    goto :goto_0

    .line 424
    :cond_1
    and-int/lit8 v1, v0, 0x20

    if-ne v1, v5, :cond_2

    and-int/lit8 v1, v0, 0x1

    if-ne v1, v2, :cond_2

    and-int/lit8 v1, v0, 0x4

    if-ne v1, v3, :cond_2

    .line 428
    const-string v1, "MtvAppBml"

    const-string v2, "getBmlControlType: 2nd case"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_KEYPAD:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    goto :goto_1

    .line 431
    :cond_2
    and-int/lit8 v1, v0, 0x10

    if-ne v1, v4, :cond_3

    and-int/lit8 v1, v0, 0x1

    if-ne v1, v2, :cond_3

    and-int/lit8 v1, v0, 0x4

    if-ne v1, v3, :cond_3

    .line 435
    const-string v1, "MtvAppBml"

    const-string v2, "getBmlControlType: 3rd case"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_KEYPAD:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    goto :goto_1

    .line 438
    :cond_3
    and-int/lit8 v1, v0, 0x4

    if-ne v1, v3, :cond_4

    and-int/lit8 v1, v0, 0x1

    if-ne v1, v2, :cond_4

    .line 441
    const-string v1, "MtvAppBml"

    const-string v2, "getBmlControlType: 4th case"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_KEYPAD:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    goto :goto_1

    .line 444
    :cond_4
    and-int/lit8 v1, v0, 0x1

    if-ne v1, v2, :cond_5

    .line 446
    const-string v1, "MtvAppBml"

    const-string v2, "getBmlControlType: 5th case"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_BASIC:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    goto :goto_1

    .line 449
    :cond_5
    and-int/lit8 v1, v0, 0x4

    if-ne v1, v3, :cond_6

    .line 451
    const-string v1, "MtvAppBml"

    const-string v2, "getBmlControlType: 6th case"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_KEYPAD:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    goto :goto_1

    .line 454
    :cond_6
    and-int/lit8 v1, v0, 0x10

    if-ne v1, v4, :cond_7

    .line 456
    const-string v1, "MtvAppBml"

    const-string v2, "getBmlControlType: 7th case"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_KEYPAD:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    goto :goto_1

    .line 461
    :cond_7
    const-string v1, "MtvAppBml"

    const-string v2, "getBmlControlType: 8th case"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_BASIC:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    goto/16 :goto_1
.end method

.method public getCurrentUIEvt()Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mCuurUIEvt:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    return-object v0
.end method

.method public getPrevUserName()[B
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->getfAuth_UserName()[B

    move-result-object v0

    return-object v0
.end method

.method public getPrevUserPassWd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->getfAuth_Password()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V
    .locals 2
    .param p1, "mPlaybackContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 230
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v0

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegFactory;->getBMLViewControl()Landroid/broadcast/IMtvOneSegBmlViewControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->setControlInterface(Landroid/broadcast/IMtvOneSegBmlViewControl;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->enable()V

    .line 239
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegBmlViewControl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    .line 241
    :cond_1
    return-void
.end method

.method public isPrevUserNameNedded()Z
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-nez v0, :cond_0

    .line 575
    const/4 v0, 0x0

    .line 579
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->getfAuth_KeepUserName()Z

    move-result v0

    goto :goto_0
.end method

.method public isPrevUserPasswdNedded()Z
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-nez v0, :cond_0

    .line 592
    const/4 v0, 0x0

    .line 596
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->getfAuth_KeepPassword()Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 486
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-nez v0, :cond_2

    .line 488
    :cond_0
    const-string v0, "MtvAppBml"

    const-string v1, "onKeyEvent: keyEvent NULL "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_1
    :goto_0
    return-void

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, p1}, Landroid/broadcast/IMtvOneSegBmlViewControl;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 494
    const-string v0, "MtvAppBml"

    const-string v1, "onKeyEvent:BML is Halted. Skip Key event"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V
    .locals 2
    .param p1, "mPlaybackContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 265
    const-string v0, "MtvAppBml"

    const-string v1, "onResume: entered "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegBmlViewControl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, p0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->attachViewListener(Landroid/broadcast/IMtvOneSegBmlViewListener;)V

    .line 282
    :cond_2
    return-void
.end method

.method public openBMLHomePage()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "MtvAppBml"

    const-string v1, "setBMLHomePage: Setting BML home page"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->openBMLHomePage()V

    .line 401
    :cond_0
    return-void
.end method

.method public processMouseEvent(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "action"    # I

    .prologue
    .line 507
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->ACTION_DOWN:Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    .line 509
    .local v0, "action1":Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;
    packed-switch p3, :pswitch_data_0

    .line 531
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->ACTION_DOWN:Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    .line 536
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v1, p1, p2, v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->processMouseEvent(IILandroid/broadcast/oneseg/MtvOneSegBmlParams$action;)V

    .line 540
    :cond_0
    return-void

    .line 513
    :pswitch_0
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->ACTION_DOWN:Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    .line 515
    goto :goto_0

    .line 519
    :pswitch_1
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->ACTION_MOVE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    .line 521
    goto :goto_0

    .line 525
    :pswitch_2
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->ACTION_UP:Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    .line 527
    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshBMLScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 386
    const-string v0, "MtvAppBml"

    const-string v1, "refreshBMLScreen:  refersh BML surface "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, v2, v2, v3, v3}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->setBMLViewSize(IIII)Z

    .line 388
    return-void
.end method

.method public registerBmlAnimationListener(Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;)V
    .locals 0
    .param p1, "bmlAnimationListener"    # Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlAnimationListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;

    .line 330
    return-void
.end method

.method public registerBmlDialogListener(Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;)V
    .locals 0
    .param p1, "bmlDialogListener"    # Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlDialogListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    .line 319
    return-void
.end method

.method public registerBmlSurface(Landroid/content/Context;Lcom/access/bml/BMLNativeView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bmlSurface"    # Lcom/access/bml/BMLNativeView;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "MtvAppBml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBmlSurface() :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/IMtvOneSegBmlViewControl;->registerSurface(Landroid/content/Context;Lcom/access/bml/BMLNativeView;)V

    .line 297
    :cond_0
    return-void
.end method

.method public registerBmlSurfaceListener(Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;)V
    .locals 0
    .param p1, "bmlSurfaceListener"    # Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlSurfaceListener:Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;

    .line 308
    return-void
.end method

.method public sendDialogReply(Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;I)V
    .locals 2
    .param p1, "dilogReply"    # Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;
    .param p2, "cmd"    # I

    .prologue
    .line 551
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-nez v0, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->MTV_APP_BML_DIALOG_REPLAY_YES:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    if-ne p1, v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;->MTV_ONESEG_BML_DIALOG_REPLAY_YES:Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    invoke-interface {v0, v1, p2}, Landroid/broadcast/IMtvOneSegBmlViewControl;->replyToCommand(Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;I)V

    goto :goto_0

    .line 557
    :cond_2
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->MTV_APP_BML_DIALOG_REPLAY_NO:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    if-ne p1, v0, :cond_3

    .line 559
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;->MTV_ONESEG_BML_DIALOG_REPLAY_NO:Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    invoke-interface {v0, v1, p2}, Landroid/broadcast/IMtvOneSegBmlViewControl;->replyToCommand(Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;I)V

    goto :goto_0

    .line 561
    :cond_3
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->MTV_APP_BML_DIALOG_REPLAY_CANCEL:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    if-ne p1, v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;->MTV_ONESEG_BML_DIALOG_REPLAY_CANCEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    invoke-interface {v0, v1, p2}, Landroid/broadcast/IMtvOneSegBmlViewControl;->replyToCommand(Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;I)V

    goto :goto_0
.end method

.method public setBMLViewSize(IIII)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 365
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    const-string v0, "MtvAppBml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBMLViewSize: width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setDisplaySize(IIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    const-string v0, "MtvAppBml"

    const-string v1, "setBMLViewSize:BML is Halted. skip Browser_SetRect "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v0, 0x0

    .line 375
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPrevUserPassWd(Ljava/lang/String;)V
    .locals 1
    .param p1, "userPassWd"    # Ljava/lang/String;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, p1}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setfPassword_Reply(Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method public setUserName([B)V
    .locals 1
    .param p1, "userName"    # [B

    .prologue
    .line 623
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, p1}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setfUserName_Reply([B)V

    .line 624
    return-void
.end method

.method public storeUserName(Z)V
    .locals 1
    .param p1, "store"    # Z

    .prologue
    .line 613
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, p1}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setfKeepUserName_Reply(Z)V

    .line 614
    return-void
.end method

.method public storeUserPasswd(Z)V
    .locals 1
    .param p1, "store"    # Z

    .prologue
    .line 618
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mBmlViewControl:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0, p1}, Landroid/broadcast/IMtvOneSegBmlViewControl;->setfKeepPassword_Reply(Z)V

    .line 619
    return-void
.end method
