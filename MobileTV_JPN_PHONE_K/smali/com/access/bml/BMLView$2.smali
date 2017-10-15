.class Lcom/access/bml/BMLView$2;
.super Landroid/telephony/PhoneStateListener;
.source "BMLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml/BMLView;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLView$2;->this$0:Lcom/access/bml/BMLView;

    .line 942
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 971
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 972
    iget-object v0, p0, Lcom/access/bml/BMLView$2;->this$0:Lcom/access/bml/BMLView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/access/bml/BMLView;->mRcvStrength:I

    .line 974
    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 944
    const/4 v2, 0x0

    .line 945
    .local v2, "level":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 946
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 950
    .local v1, "gsmSignalStrength":I
    const/16 v3, 0x63

    if-ne v1, v3, :cond_0

    const/4 v2, 0x0

    .line 967
    .end local v1    # "gsmSignalStrength":I
    :goto_0
    iget-object v3, p0, Lcom/access/bml/BMLView$2;->this$0:Lcom/access/bml/BMLView;

    iput v2, v3, Lcom/access/bml/BMLView;->mRcvStrength:I

    .line 968
    return-void

    .line 951
    .restart local v1    # "gsmSignalStrength":I
    :cond_0
    const/16 v3, 0xe

    if-lt v1, v3, :cond_1

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 952
    :cond_1
    const/16 v3, 0x8

    if-lt v1, v3, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 953
    :cond_2
    const/4 v3, 0x4

    if-lt v1, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 954
    :cond_3
    const/4 v2, -0x1

    .line 955
    goto :goto_0

    .line 956
    .end local v1    # "gsmSignalStrength":I
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 960
    .local v0, "CdmadBm":I
    const/16 v3, -0x4b

    if-lt v0, v3, :cond_5

    const/4 v2, 0x3

    goto :goto_0

    .line 961
    :cond_5
    const/16 v3, -0x55

    if-lt v0, v3, :cond_6

    const/4 v2, 0x3

    goto :goto_0

    .line 962
    :cond_6
    const/16 v3, -0x5f

    if-lt v0, v3, :cond_7

    const/4 v2, 0x2

    goto :goto_0

    .line 963
    :cond_7
    const/16 v3, -0x64

    if-lt v0, v3, :cond_8

    const/4 v2, 0x1

    goto :goto_0

    .line 964
    :cond_8
    const/4 v2, 0x0

    goto :goto_0
.end method
