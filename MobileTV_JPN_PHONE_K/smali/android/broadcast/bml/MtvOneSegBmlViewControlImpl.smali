.class public Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;
.super Ljava/lang/Object;
.source "MtvOneSegBmlViewControlImpl.java"

# interfaces
.implements Landroid/broadcast/IMtvOneSegBmlViewControl;
.implements Landroid/broadcast/bml/IMtvNativeBmlViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvOneSegBmlViewControlImpl"

.field private static isDailogNeed:Z

.field private static isDialogWaiting:Z

.field public static mAllowConnection:Z

.field public static mAllowLocation:Z

.field private static mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

.field private static mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

.field private static mViewControl:Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;

.field private static replyToEngine:Z


# instance fields
.field private curSecure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    sput-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mViewControl:Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;

    .line 26
    sput-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    .line 27
    sput-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    .line 29
    sput-boolean v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    .line 30
    sput-boolean v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->replyToEngine:Z

    .line 31
    sput-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDialogWaiting:Z

    .line 32
    sput-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAllowConnection:Z

    .line 33
    sput-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAllowLocation:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->curSecure:Z

    .line 42
    return-void
.end method

.method public static getInstance()Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mViewControl:Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;

    invoke-direct {v0}, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;-><init>()V

    sput-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mViewControl:Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;

    .line 56
    :cond_0
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mViewControl:Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;

    return-object v0
.end method


# virtual methods
.method public allowConnection(I)Z
    .locals 3
    .param p1, "in_cmd"    # I

    .prologue
    .line 334
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowConnection: CMD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-nez v0, :cond_0

    .line 338
    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAllowConnection:Z

    goto :goto_0
.end method

.method public allowLocation(I)Z
    .locals 3
    .param p1, "in_cmd"    # I

    .prologue
    .line 347
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowConnection: CMD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x0

    .line 354
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAllowLocation:Z

    goto :goto_0
.end method

.method public appExIMEEndPeer(Z[B)V
    .locals 1
    .param p1, "in_result"    # Z
    .param p2, "in_buff"    # [B

    .prologue
    .line 376
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 378
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0, p1, p2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_appExIMEEndPeer(Z[B)V

    .line 380
    :cond_0
    return-void
.end method

.method public attachViewListener(Landroid/broadcast/IMtvOneSegBmlViewListener;)V
    .locals 1
    .param p1, "l"    # Landroid/broadcast/IMtvOneSegBmlViewListener;

    .prologue
    .line 89
    sput-object p1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    .line 91
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0, p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->attachViewListener(Landroid/broadcast/bml/IMtvNativeBmlViewListener;)V

    .line 95
    :cond_0
    return-void
.end method

.method public cb_KeyPadTypeChanged()V
    .locals 1

    .prologue
    .line 687
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    if-eqz v0, :cond_0

    .line 689
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_bmlControlTypeChanged()V

    .line 691
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
    .line 1389
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    if-eqz v0, :cond_0

    .line 1391
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_appIMEStartPeer([BZZII)V

    .line 1393
    :cond_0
    return-void
.end method

.method public cb_haltExecuted(I)V
    .locals 2
    .param p1, "in_halt_status"    # I

    .prologue
    .line 1404
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->curSecure:Z

    .line 1406
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    if-eqz v0, :cond_0

    .line 1408
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_destroyBMLDialog()V

    .line 1409
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->BML_RECEIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setBmlAnimationText(Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;)V

    .line 1411
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1413
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_startBmlAnimation()V

    .line 1420
    :cond_0
    :goto_0
    return-void

    .line 1415
    :cond_1
    if-nez p1, :cond_0

    .line 1417
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_stopBmlAnimation()V

    goto :goto_0
.end method

.method public cb_mailToPeer([B[B[B)V
    .locals 1
    .param p1, "in_subject"    # [B
    .param p2, "in_body"    # [B
    .param p3, "in_to_address"    # [B

    .prologue
    .line 1372
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    if-eqz v0, :cond_0

    .line 1374
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_mailToPeer([B[B[B)V

    .line 1377
    :cond_0
    return-void
.end method

.method public cb_phoneToPeer(Ljava/lang/String;)V
    .locals 1
    .param p1, "in_phone_number"    # Ljava/lang/String;

    .prologue
    .line 1381
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    if-eqz v0, :cond_0

    .line 1383
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, p1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_phoneToPeer(Ljava/lang/String;)V

    .line 1385
    :cond_0
    return-void
.end method

.method public cb_processCommand(II)Z
    .locals 6
    .param p1, "in_cmd"    # I
    .param p2, "in_reply"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 739
    const-string v1, "MtvOneSegBmlViewControlImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDialogInfo : Cmd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    sput-boolean v4, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    .line 741
    sput-boolean v4, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->replyToEngine:Z

    .line 743
    const-string v1, "MtvOneSegBmlViewControlImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDialogInfo : isDailogNeed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-nez v1, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return v0

    .line 750
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1337
    sput-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    .line 1338
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cb_processCommand : SLIM_BRCOMMAND_NOTIFY_CONTENT_ERROR yesdefault "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :cond_2
    :goto_1
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDialogInfo return: Dialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reply "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->replyToEngine:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const/16 v0, 0x12

    if-eq p1, v0, :cond_3

    const/16 v0, 0x15

    if-ne p1, v0, :cond_17

    .line 1349
    :cond_3
    sget-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDialogWaiting:Z

    goto :goto_0

    .line 755
    :sswitch_0
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLIM_BRCOMMAND_NOTIFY_WINDOW_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget v2, v2, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fWindowState_State:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fWindowState_State:I

    if-ne v0, v5, :cond_2

    .line 759
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_stopBmlAnimation()V

    goto :goto_1

    .line 766
    :sswitch_1
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 768
    const-string v1, "MtvOneSegBmlViewControlImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fSetLocation_URL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v3, v3, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fSetLocation_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_4
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    if-eqz v1, :cond_5

    .line 772
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v2, v2, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    invoke-interface {v1, p1, p2, v2}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_processCommand(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 774
    sput-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    .line 775
    sput-boolean v4, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->replyToEngine:Z

    .line 778
    :cond_5
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fSetLocation_URL:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 780
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_SETLOCATION_SSL_BEGIN:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 781
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->BML_RETREIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setBmlAnimationText(Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;)V

    .line 782
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v5}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    .line 783
    iput-boolean v4, p0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->curSecure:Z

    goto/16 :goto_1

    .line 785
    :cond_6
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fSetLocation_URL:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 787
    iget-boolean v1, p0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->curSecure:Z

    if-eqz v1, :cond_7

    .line 789
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_SETLOCATION_SSL_END:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v1, v2}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 795
    :goto_2
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->BML_RETREIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    invoke-interface {v1, v2}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setBmlAnimationText(Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;)V

    .line 796
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v1, v5}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    .line 797
    iput-boolean v0, p0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->curSecure:Z

    goto/16 :goto_1

    .line 792
    :cond_7
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_SETLOCATION_HTTP:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v1, v2}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto :goto_2

    .line 801
    :cond_8
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->BML_RECEIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    invoke-interface {v1, v2}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setBmlAnimationText(Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;)V

    .line 803
    iget-boolean v1, p0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->curSecure:Z

    if-ne v1, v4, :cond_9

    .line 805
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_SETLOCATION_SSL_END:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v1, v2}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 806
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v1, v4}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    .line 807
    iput-boolean v0, p0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->curSecure:Z

    goto/16 :goto_1

    .line 811
    :cond_9
    sput-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    .line 812
    sput-boolean v4, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->replyToEngine:Z

    .line 813
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cb_processCommand : SLIM_BRCOMMAND_QUERY_SETLOCATION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 821
    :sswitch_2
    sput-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    .line 822
    sput-boolean v4, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->replyToEngine:Z

    .line 823
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cb_processCommand : SLIM_BRCOMMAND_QUERY_REDIRECT_DIALOG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 829
    :sswitch_3
    sput-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    .line 830
    sput-boolean v4, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->replyToEngine:Z

    .line 831
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cb_processCommand : SLIM_BRCOMMAND_QUERY_AUTH_DIALOG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 837
    :sswitch_4
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fServerCert_VerifyResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget v2, v2, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fServerCert_VerifyResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fServerCert_VerifyResult:I

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_1

    .line 855
    :sswitch_5
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_SERVER_CERT_CONFIRM_DIALOG_QEUSTION:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 856
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v5}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    goto/16 :goto_1

    .line 845
    :sswitch_6
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_SERVER_CERT_CONFIRM_DIALOG:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 846
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v4}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    goto/16 :goto_1

    .line 872
    :sswitch_7
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    if-eqz v0, :cond_a

    .line 874
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->BML_RETREIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setBmlAnimationText(Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;)V

    .line 877
    :cond_a
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fStreamState_State:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    .line 879
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    if-eqz v0, :cond_2

    .line 881
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->BML_RECEIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setBmlAnimationText(Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;)V

    goto/16 :goto_1

    .line 889
    :sswitch_8
    const-string v1, "MtvOneSegBmlViewControlImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fErrorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget v3, v3, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fErrorCode:I

    packed-switch v1, :pswitch_data_0

    .line 931
    sput-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    .line 932
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cb_processCommand : default "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 896
    :pswitch_0
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_ERROR_NOMEMORY:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 897
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v4}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    goto/16 :goto_1

    .line 903
    :pswitch_1
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_ERROR_TOTAL_SIZEOVER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 904
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v4}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    goto/16 :goto_1

    .line 910
    :pswitch_2
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_ERROR_BADURL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 911
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v4}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    goto/16 :goto_1

    .line 917
    :pswitch_3
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_ERROR_BADMIMETYPE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 918
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v4}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    goto/16 :goto_1

    .line 924
    :pswitch_4
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_ERROR_MIXEDSECURETYPE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 925
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v4}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    goto/16 :goto_1

    .line 941
    :sswitch_9
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_TRANSMITTEXTDATA:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 942
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v4}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    goto/16 :goto_1

    .line 948
    :sswitch_a
    const-string v1, "MtvOneSegBmlViewControlImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fFuncName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v3, v3, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v1, v5}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    .line 951
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    const-string v2, "transmitTextDataOverIP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    .line 953
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_PERMITFUNCTION_transmitTextDataOverIP:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 954
    :cond_b
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    const-string v2, "writePersistentArray"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 956
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_PERMITFUNCTION_writePersistentArray:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v1, v2}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 957
    sput-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    .line 958
    sput-boolean v4, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->replyToEngine:Z

    .line 959
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cb_processCommand : SLIM_BRCOMMAND_QUERY_DTV_PERMITFUNCTION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 961
    :cond_c
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    const-string v2, "saveImageToMemoryCard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 963
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_PERMITFUNCTION_saveImageToMemoryCard:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 965
    :cond_d
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    const-string v2, "saveHttpServerImageToMemoryCard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_e

    .line 967
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_PERMITFUNCTION_saveHttpServerImageToMemoryCard:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 969
    :cond_e
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    const-string v2, "X_DPA_writeCproBM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_f

    .line 971
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeCproBM:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 973
    :cond_f
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    const-string v2, "X_DPA_mailTo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_10

    .line 975
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_PERMITFUNCTION_X_DPA_mailTo:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 977
    :cond_10
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    const-string v2, "X_DPA_startResidentApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11

    .line 979
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_PERMITFUNCTION_X_DPA_startResidentApp:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 981
    :cond_11
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    const-string v2, "X_DPA_phoneTo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12

    .line 983
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_PERMITFUNCTION_X_DPA_phoneTo:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 985
    :cond_12
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    const-string v2, "X_DPA_writeSchInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_13

    .line 987
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeSchInfo:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 989
    :cond_13
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    const-string v2, "X_DPA_writeAddressBookInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_14

    .line 991
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeAddressBookInfo:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 993
    :cond_14
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    const-string v2, "X_DPA_getCurPos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_15

    .line 995
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getCurPos:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 996
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_processCommand(IILjava/lang/String;)Z

    goto/16 :goto_1

    .line 998
    :cond_15
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    const-string v2, "X_DPA_getIRDID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    .line 1000
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_processCommand(IILjava/lang/String;)Z

    goto/16 :goto_1

    .line 1003
    :cond_16
    sput-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    .line 1004
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cb_processCommand : X_DPA_getIRDID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    sput-boolean v4, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->replyToEngine:Z

    goto/16 :goto_1

    .line 1013
    :sswitch_b
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fAction:I

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 1017
    :pswitch_5
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_WRITEBOOKMARK:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v1, v2}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 1018
    sput-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    .line 1019
    sput-boolean v4, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->replyToEngine:Z

    .line 1020
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cb_processCommand : SLIM_DTV_WRITEBOOKMARK_NEW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1026
    :pswitch_6
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_EXPIRED:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 1027
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v5}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    goto/16 :goto_1

    .line 1033
    :pswitch_7
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_OLDEST:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 1034
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v5}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    goto/16 :goto_1

    .line 1043
    :sswitch_c
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_WRITEPERSISTENTARRAY:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    .line 1044
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v5}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    goto/16 :goto_1

    .line 1050
    :sswitch_d
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v4}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    .line 1052
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fStatus:I

    packed-switch v0, :pswitch_data_2

    :pswitch_8
    goto/16 :goto_1

    .line 1068
    :pswitch_9
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_DTV_FAILUREACTION_INVALIDSUFFIX:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1056
    :pswitch_a
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_DTV_FAILUREACTION_OUTOFBASEURIDIRECTORY:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1062
    :pswitch_b
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_DTV_FAILUREACTION_ILLEGALFUNCTION:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1077
    :sswitch_e
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_DTV_SYSTEMCONTINUE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1083
    :sswitch_f
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v4}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    .line 1085
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fErrorCode:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_1

    .line 1089
    :pswitch_c
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_DTV_DRAWERROR_TOOMANY_NESTS:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1095
    :pswitch_d
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_DTV_DRAWERROR_TIMEDOUT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1104
    :sswitch_10
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, v4}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogBtnNum(I)V

    .line 1105
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fContent_ErrorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget v2, v2, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fContent_ErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fContent_ErrorCode:I

    sparse-switch v0, :sswitch_data_2

    .line 1328
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_UNKNOWN:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1111
    :sswitch_11
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_ARIBDC_OPEN:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1117
    :sswitch_12
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_ARIBDC_READ:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1123
    :sswitch_13
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_ARIBDC_TIMEDOUT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1129
    :sswitch_14
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_AUTH_FORMAT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1135
    :sswitch_15
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_AUTH_UNKNOWN:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1141
    :sswitch_16
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_BROADCAST_TRANSITON:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1147
    :sswitch_17
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_CACHE_EXPIRE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1153
    :sswitch_18
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_CACHE_NONE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1159
    :sswitch_19
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_CROSSMEDIA:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1165
    :sswitch_1a
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_DNS_INVAL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1171
    :sswitch_1b
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_DNS_NOSERVER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1177
    :sswitch_1c
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_DNS_NOTFOUND:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1183
    :sswitch_1d
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_DNS_TIMEOUT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1189
    :sswitch_1e
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_DOMAIN:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1195
    :sswitch_1f
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_GENERIC:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1201
    :sswitch_20
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_NO_CONTENT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1207
    :sswitch_21
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_REDIRECT_CANCELED:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1214
    :sswitch_22
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_REDIRECT_FORMAT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1220
    :sswitch_23
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_REQ_BODY_SIZEOVER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1226
    :sswitch_24
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_REQ_HEADER_SIZEOVER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1232
    :sswitch_25
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_REQTIMEOUT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1238
    :sswitch_26
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_RESPTIMEOUT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1244
    :sswitch_27
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_SSL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1250
    :sswitch_28
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_SSL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1256
    :sswitch_29
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_SSL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1262
    :sswitch_2a
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_SSL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1268
    :sswitch_2b
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_TCP:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1274
    :sswitch_2c
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_TCP:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1280
    :sswitch_2d
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_TCP:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1286
    :sswitch_2e
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_TCP:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1292
    :sswitch_2f
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_TOO_MANY_REDIRECT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1298
    :sswitch_30
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_CONTENT_ERROR_TOOMANYAUTH:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1304
    :sswitch_31
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_HTTP_E_AUTH_NOHEADER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1310
    :sswitch_32
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_HTTP_E_REQ_TOOMANYCONTINUE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1316
    :sswitch_33
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_ERROR_BADMIMETYPE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1322
    :sswitch_34
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_NOTIFY_ERROR_TOTAL_SIZEOVER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setDialogMessege(Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;)V

    goto/16 :goto_1

    .line 1352
    :cond_17
    sget-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    if-nez v0, :cond_18

    .line 1354
    const-string v0, "MtvOneSegBmlViewControlImpl"

    const-string v1, "cb_processCommand: Dialogue not required."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    sget-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->replyToEngine:Z

    invoke-virtual {p0, p1, v0}, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->setDialogReply(IZ)I

    .line 1364
    :goto_3
    sget-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDialogWaiting:Z

    goto/16 :goto_0

    .line 1359
    :cond_18
    const-string v0, "MtvOneSegBmlViewControlImpl"

    const-string v1, "cb_processCommand: Show dialogue"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, p1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_showBMLDialog(I)Z

    move-result v0

    sput-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDialogWaiting:Z

    .line 1361
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    sget-boolean v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDialogWaiting:Z

    invoke-virtual {v0, v1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->setWaiting(Z)V

    goto :goto_3

    .line 750
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x12 -> :sswitch_7
        0x15 -> :sswitch_0
        0x17 -> :sswitch_10
        0x1a -> :sswitch_8
        0x96 -> :sswitch_9
        0x98 -> :sswitch_a
        0x99 -> :sswitch_b
        0x9a -> :sswitch_c
        0x9b -> :sswitch_d
        0x9c -> :sswitch_e
        0x9d -> :sswitch_f
    .end sparse-switch

    .line 839
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x4 -> :sswitch_5
        0x8 -> :sswitch_5
        0x10000 -> :sswitch_6
        0x8000000 -> :sswitch_6
        0x10000000 -> :sswitch_6
    .end sparse-switch

    .line 890
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1013
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1052
    :pswitch_data_2
    .packed-switch -0xc
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
    .end packed-switch

    .line 1085
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 1107
    :sswitch_data_2
    .sparse-switch
        -0x7ce -> :sswitch_16
        -0x4b0 -> :sswitch_19
        -0x4af -> :sswitch_1e
        -0x44c -> :sswitch_11
        -0x44b -> :sswitch_12
        -0x44a -> :sswitch_13
        -0x258 -> :sswitch_34
        -0x257 -> :sswitch_20
        -0x256 -> :sswitch_2f
        -0x255 -> :sswitch_30
        -0x254 -> :sswitch_33
        -0xc8 -> :sswitch_1a
        -0xc7 -> :sswitch_1b
        -0xc6 -> :sswitch_1d
        -0xc5 -> :sswitch_1c
        -0xc4 -> :sswitch_2b
        -0xc3 -> :sswitch_2c
        -0xc2 -> :sswitch_2d
        -0xc1 -> :sswitch_2e
        -0xc0 -> :sswitch_27
        -0xbf -> :sswitch_28
        -0xbe -> :sswitch_29
        -0xbd -> :sswitch_2a
        -0xbc -> :sswitch_25
        -0xbb -> :sswitch_26
        -0xba -> :sswitch_18
        -0xb9 -> :sswitch_17
        -0xb8 -> :sswitch_15
        -0xb7 -> :sswitch_31
        -0xb6 -> :sswitch_14
        -0xb5 -> :sswitch_22
        -0xb4 -> :sswitch_21
        -0xb3 -> :sswitch_24
        -0xb2 -> :sswitch_23
        -0xb0 -> :sswitch_32
        -0x1 -> :sswitch_1f
    .end sparse-switch
.end method

.method public cb_setBMLFullView()V
    .locals 1

    .prologue
    .line 661
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    if-eqz v0, :cond_0

    .line 663
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setBMLFullView()V

    .line 665
    :cond_0
    return-void
.end method

.method public cb_startResidentAppPeer([BI[B[Ljava/lang/String;)I
    .locals 1
    .param p1, "in_app_name"    # [B
    .param p2, "in_show_av"    # I
    .param p3, "in_return_uri"    # [B
    .param p4, "in_ex_info"    # [Ljava/lang/String;

    .prologue
    .line 1448
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    if-eqz v0, :cond_0

    .line 1450
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_startResidentAppPeer([BI[B[Ljava/lang/String;)I

    move-result v0

    .line 1452
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cb_storeImage([BZ[B)I
    .locals 4
    .param p1, "in_filename"    # [B
    .param p2, "in_overwrite"    # Z
    .param p3, "in_data"    # [B

    .prologue
    const/16 v1, -0x41a

    const/16 v2, -0x41d

    .line 711
    const/4 v0, 0x0

    .line 713
    .local v0, "retStatus":I
    sget-object v3, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v3, p1, p2, p3}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_storeImage([BZ[B)I

    move-result v0

    .line 716
    if-ne v0, v1, :cond_0

    .line 726
    :goto_0
    return v1

    .line 720
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 722
    goto :goto_0

    .line 726
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cb_updateBMLSurfaceView()V
    .locals 2

    .prologue
    .line 672
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_GetHaltStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 674
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->BML_RECEIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_setBmlAnimationText(Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;)V

    .line 675
    const-string v0, "MtvOneSegBmlViewControlImpl"

    const-string v1, "updateBMLSurfaceView:  start BML animation  "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_startBmlAnimation()V

    .line 678
    :cond_0
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_updateBMLSurfaceView()V

    .line 679
    return-void
.end method

.method public cb_writeAddressBookInfoPeer([B[BLjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "in_name"    # [B
    .param p2, "in_kana"    # [B
    .param p3, "in_tel"    # Ljava/lang/String;
    .param p4, "in_mail"    # Ljava/lang/String;

    .prologue
    .line 1426
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    if-eqz v0, :cond_0

    .line 1428
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_writeAddressBookInfoPeer([B[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cb_writeSchInfoPeer(SIIIIIIS[B[BZ)I
    .locals 12
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
    .line 1438
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    if-eqz v0, :cond_0

    .line 1440
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_writeSchInfoPeer(SIIIIIIS[B[BZ)I

    move-result v0

    .line 1442
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dettachViewListener(Landroid/broadcast/IMtvOneSegBmlViewListener;)V
    .locals 2
    .param p1, "l"    # Landroid/broadcast/IMtvOneSegBmlViewListener;

    .prologue
    const/4 v1, 0x0

    .line 103
    const/4 v0, 0x0

    sput-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    .line 105
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0, p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->dettachViewListener(Landroid/broadcast/bml/IMtvNativeBmlViewListener;)V

    .line 110
    :cond_0
    sput-boolean v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAllowConnection:Z

    .line 111
    sput-boolean v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAllowLocation:Z

    .line 112
    return-void
.end method

.method public disableBml()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method public enableBml()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public getUserKeyPadType()I
    .locals 1

    .prologue
    .line 156
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->getKeyPad_mask()I

    move-result v0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getfAuth_KeepPassword()Z
    .locals 1

    .prologue
    .line 495
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 497
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-boolean v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fAuth_KeepPassword:Z

    .line 501
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getfAuth_KeepUserName()Z
    .locals 1

    .prologue
    .line 483
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 485
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-boolean v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fAuth_KeepUserName:Z

    .line 489
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getfAuth_Password()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 516
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fAuth_Password:Ljava/lang/String;

    .line 520
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getfAuth_UserName()[B
    .locals 1

    .prologue
    .line 464
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 466
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fAuth_UserName:[B

    .line 470
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDailogNeed()Z
    .locals 1

    .prologue
    .line 395
    sget-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    return v0
.end method

.method public isReplyToEngine()Z
    .locals 1

    .prologue
    .line 407
    sget-boolean v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->replyToEngine:Z

    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 276
    sget-object v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-nez v2, :cond_0

    .line 322
    :goto_0
    return v0

    .line 281
    :cond_0
    sget-object v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->getAvailableKey(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 283
    const-string v1, "MtvOneSegBmlViewControlImpl"

    const-string v2, "onKeyEvent: unavailable Key code "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_1
    sget-object v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_GetHaltStatus()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 289
    const-string v2, "MtvOneSegBmlViewControlImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyEvent:get Key event Code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 292
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 294
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fSetLocation_URL:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fSetLocation_URL:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    :cond_2
    const-string v0, "MtvOneSegBmlViewControlImpl"

    const-string v2, "onKeyEvent: BACK Key is pressed Browser_WindowAbort()"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_WindowAbort()V

    .line 299
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    if-eqz v0, :cond_3

    .line 301
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_stopBmlAnimation()V

    .line 306
    :cond_3
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_processKeyEvent(IIZ)I

    :cond_4
    :goto_1
    move v0, v1

    .line 322
    goto/16 :goto_0

    .line 309
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 311
    sget-object v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_processKeyEvent(IIZ)I

    goto :goto_1

    .line 318
    :cond_6
    const-string v1, "MtvOneSegBmlViewControlImpl"

    const-string v2, "onKeyEvent:BML is Halted. Skip Key event"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public openBMLHomePage()V
    .locals 1

    .prologue
    .line 421
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 423
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_NotifyReturnToEntry()Z

    .line 425
    :cond_0
    return-void
.end method

.method public processMouseEvent(IILandroid/broadcast/oneseg/MtvOneSegBmlParams$action;)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "action"    # Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "userAction":I
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl$1;->$SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$action:[I

    invoke-virtual {p3}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 195
    const/4 v0, 0x0

    .line 200
    :goto_0
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v1, :cond_0

    .line 202
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v1, p1, p2, v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_processMouseEvent(III)V

    .line 204
    :cond_0
    return-void

    .line 177
    :pswitch_0
    const/4 v0, 0x0

    .line 179
    goto :goto_0

    .line 183
    :pswitch_1
    const/4 v0, 0x1

    .line 185
    goto :goto_0

    .line 189
    :pswitch_2
    const/4 v0, 0x2

    .line 191
    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerSurface(Landroid/content/Context;Lcom/access/bml/BMLNativeView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bmlSurface"    # Lcom/access/bml/BMLNativeView;

    .prologue
    .line 67
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-static {p1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->getInstance(Landroid/content/Context;)Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    move-result-object v0

    sput-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    .line 74
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {p2, v0}, Lcom/access/bml/BMLNativeView;->initEngine(Lcom/access/bml/BMLNativeCallbacks;)V

    .line 77
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0, p2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->initView(Lcom/access/bml/BMLNativeView;)V

    goto :goto_0
.end method

.method public replyToCommand()V
    .locals 1

    .prologue
    .line 258
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_ReplyToCommand()V

    .line 262
    :cond_0
    return-void
.end method

.method public replyToCommand(Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;I)V
    .locals 4
    .param p1, "dialogReply"    # Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;
    .param p2, "cmd"    # I

    .prologue
    .line 214
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v1, :cond_2

    .line 216
    const/16 v1, 0x98

    if-ne p2, v1, :cond_1

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;->MTV_ONESEG_BML_DIALOG_REPLAY_YES:Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    if-ne p1, v1, :cond_1

    .line 218
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    const-string v2, "X_DPA_getCurPos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 221
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fArgStr:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 222
    .local v0, "result":Ljava/lang/String;
    const-string v1, "GPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 224
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->startLocationService()V

    .line 230
    :cond_0
    :goto_0
    const-string v1, "MtvOneSegBmlViewControlImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDialogForBML: Yes is selected startLocationService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;->MTV_ONESEG_BML_DIALOG_REPLAY_YES:Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    if-ne p1, v1, :cond_5

    .line 241
    invoke-virtual {p0, p2}, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->saveUserChoice(I)V

    .line 242
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->setDialogReply(IZ)I

    .line 246
    :goto_2
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_ReplyToCommand()V

    .line 248
    :cond_2
    return-void

    .line 226
    .restart local v0    # "result":Ljava/lang/String;
    :cond_3
    const-string v1, "CB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 228
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->startLocationService()V

    goto :goto_0

    .line 231
    .end local v0    # "result":Ljava/lang/String;
    :cond_4
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fFuncName:Ljava/lang/String;

    const-string v2, "X_DPA_getRcvCond"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 233
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    const/16 v2, 0x101

    invoke-virtual {v1, v2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->startTelephonyService(I)V

    .line 235
    const-string v1, "MtvOneSegBmlViewControlImpl"

    const-string v2, "showDialogForBML: Yes is selected startLocationService"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 244
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->setDialogReply(IZ)I

    goto :goto_2
.end method

.method public saveUserChoice(I)V
    .locals 3
    .param p1, "in_cmd"    # I

    .prologue
    const/4 v2, 0x1

    .line 359
    sparse-switch p1, :sswitch_data_0

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 362
    :sswitch_0
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fSetLocation_URL:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fSetLocation_URL:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    :cond_1
    sput-boolean v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAllowConnection:Z

    goto :goto_0

    .line 366
    :sswitch_1
    sput-boolean v2, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAllowLocation:Z

    goto :goto_0

    .line 359
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x98 -> :sswitch_1
    .end sparse-switch
.end method

.method public setDailogNeed(Z)V
    .locals 3
    .param p1, "DailogNeed"    # Z

    .prologue
    .line 401
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDailogNeed: DailogNeed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sput-boolean p1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    .line 403
    return-void
.end method

.method public setDialogReply(IZ)I
    .locals 4
    .param p1, "in_cmd"    # I
    .param p2, "in_reply"    # Z

    .prologue
    const/4 v3, 0x0

    .line 591
    const-string v0, "MtvOneSegBmlViewControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResultDialog: CMD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Reply"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-nez v0, :cond_0

    .line 652
    :goto_0
    return v3

    .line 598
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 647
    :goto_1
    sput-boolean v3, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDialogWaiting:Z

    .line 648
    sput-boolean v3, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->isDailogNeed:Z

    .line 649
    iput-boolean v3, p0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->curSecure:Z

    .line 650
    const-string v0, "MtvOneSegBmlViewControlImpl"

    const-string v1, "setDialogReply: FALSE"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0, v3}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->setWaiting(Z)V

    goto :goto_0

    .line 602
    :sswitch_0
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iput-boolean p2, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fDoRequestContent_Reply:Z

    .line 603
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mAppViewListener:Landroid/broadcast/IMtvOneSegBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewListener;->cb_startBmlAnimation()V

    goto :goto_1

    .line 609
    :sswitch_1
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iput-boolean p2, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fDoRedirect_Reply:Z

    goto :goto_1

    .line 615
    :sswitch_2
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iput-boolean p2, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fConfirmed_Reply:Z

    goto :goto_1

    .line 621
    :sswitch_3
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iput-boolean p2, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fDoRequestContent:Z

    goto :goto_1

    .line 627
    :sswitch_4
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iput-boolean p2, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fDoPermit:Z

    goto :goto_1

    .line 633
    :sswitch_5
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iput-boolean p2, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fDoWrite:Z

    goto :goto_1

    .line 639
    :sswitch_6
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iput-boolean p2, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fDoWrite:Z

    goto :goto_1

    .line 598
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x7 -> :sswitch_2
        0x96 -> :sswitch_3
        0x98 -> :sswitch_4
        0x99 -> :sswitch_5
        0x9a -> :sswitch_6
    .end sparse-switch
.end method

.method public setDisplaySize(IIII)Z
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 125
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    sget-boolean v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BMLEngineInitStatus:Z

    if-nez v1, :cond_1

    .line 127
    :cond_0
    const-string v1, "MtvOneSegBmlViewControlImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BML engine is not Initialized!!! BMLEngineInit status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    sget-boolean v3, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BMLEngineInitStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    return v0

    .line 132
    :cond_1
    sget-object v1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_GetHaltStatus()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 134
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_SetRect(IIFF)V

    .line 135
    const/4 v0, 0x1

    goto :goto_0

    .line 139
    :cond_2
    const-string v1, "MtvOneSegBmlViewControlImpl"

    const-string v2, "setDisplaySize: BML is Halted. skip Browser_SetRect "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setReplyToEngine(Z)V
    .locals 0
    .param p1, "replyToEngine"    # Z

    .prologue
    .line 413
    sput-boolean p1, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->replyToEngine:Z

    .line 414
    return-void
.end method

.method public setfKeepPassword_Reply(Z)V
    .locals 1
    .param p1, "reply"    # Z

    .prologue
    .line 548
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 550
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iput-boolean p1, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fKeepPassword_Reply:Z

    .line 552
    :cond_0
    return-void
.end method

.method public setfKeepUserName_Reply(Z)V
    .locals 1
    .param p1, "reply"    # Z

    .prologue
    .line 533
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 535
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iput-boolean p1, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fKeepUserName_Reply:Z

    .line 537
    :cond_0
    return-void
.end method

.method public setfPassword_Reply(Ljava/lang/String;)V
    .locals 1
    .param p1, "reply"    # Ljava/lang/String;

    .prologue
    .line 450
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iput-object p1, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fPassword_Reply:Ljava/lang/String;

    .line 454
    :cond_0
    return-void
.end method

.method public setfUserName_Reply([B)V
    .locals 1
    .param p1, "reply"    # [B

    .prologue
    .line 435
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 437
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iput-object p1, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fUserName_Reply:[B

    .line 439
    :cond_0
    return-void
.end method

.method public startLocationService()V
    .locals 1

    .prologue
    .line 562
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 564
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->startLocationService()V

    .line 566
    :cond_0
    return-void
.end method

.method public startTelephonyService(I)V
    .locals 1
    .param p1, "service"    # I

    .prologue
    .line 577
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-eqz v0, :cond_0

    .line 579
    sget-object v0, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->mBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-virtual {v0, p1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->startTelephonyService(I)V

    .line 581
    :cond_0
    return-void
.end method
