.class Lcom/access/bml/BMLNativeCallbacks$1;
.super Landroid/telephony/PhoneStateListener;
.source "BMLNativeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLNativeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml/BMLNativeCallbacks;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLNativeCallbacks;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/access/bml/BMLNativeCallbacks$1;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 377
    const-string v0, "BMLNativeCallbacks"

    const-string v1, "phoneStateListener : onServiceStateChanged"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks$1;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    const/4 v1, -0x1

    iput v1, v0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    .line 381
    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 6
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 354
    const-string v3, "BMLNativeCallbacks"

    const-string v4, "phoneStateListener : onSignalStrengthsChanged"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v2, 0x0

    .line 356
    .local v2, "level":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-nez v3, :cond_4

    .line 357
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 358
    .local v0, "CdmadBm":I
    const-string v3, "BMLNativeCallbacks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA dBm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/16 v3, -0x4b

    if-lt v0, v3, :cond_0

    const/4 v2, 0x3

    .line 373
    .end local v0    # "CdmadBm":I
    :goto_0
    iget-object v3, p0, Lcom/access/bml/BMLNativeCallbacks$1;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iput v2, v3, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    .line 374
    return-void

    .line 360
    .restart local v0    # "CdmadBm":I
    :cond_0
    const/16 v3, -0x55

    if-lt v0, v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 361
    :cond_1
    const/16 v3, -0x5f

    if-lt v0, v3, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 362
    :cond_2
    const/16 v3, -0x64

    if-lt v0, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 363
    :cond_3
    const/4 v2, -0x1

    goto :goto_0

    .line 365
    .end local v0    # "CdmadBm":I
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 366
    .local v1, "gsmSignalStrength":I
    const-string v3, "BMLNativeCallbacks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GSM Signal Strength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    if-ltz v1, :cond_5

    const/16 v3, 0x63

    if-lt v1, v3, :cond_6

    :cond_5
    const/4 v2, -0x1

    goto :goto_0

    .line 368
    :cond_6
    const/16 v3, 0x10

    if-lt v1, v3, :cond_7

    const/4 v2, 0x3

    goto :goto_0

    .line 369
    :cond_7
    const/16 v3, 0x8

    if-lt v1, v3, :cond_8

    const/4 v2, 0x3

    goto :goto_0

    .line 370
    :cond_8
    const/4 v3, 0x4

    if-lt v1, v3, :cond_9

    const/4 v2, 0x2

    goto :goto_0

    .line 371
    :cond_9
    const/4 v2, 0x1

    goto :goto_0
.end method
