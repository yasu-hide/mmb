.class public Landroid/broadcast/helper/types/MtvOneSegSignal;
.super Ljava/lang/Object;
.source "MtvOneSegSignal.java"


# instance fields
.field private BER:I

.field private CN:I

.field private RSSI:I

.field private sigQty:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegSignal;->CN:I

    .line 23
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegSignal;->RSSI:I

    .line 24
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegSignal;->BER:I

    .line 25
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegSignal;->sigQty:I

    return-void
.end method


# virtual methods
.method public getBER()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegSignal;->BER:I

    return v0
.end method

.method public getCN()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegSignal;->CN:I

    return v0
.end method

.method public getRSSI()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegSignal;->RSSI:I

    return v0
.end method

.method public getSignalQuality()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegSignal;->sigQty:I

    return v0
.end method

.method public setBER(I)V
    .locals 0
    .param p1, "mBER"    # I

    .prologue
    .line 52
    iput p1, p0, Landroid/broadcast/helper/types/MtvOneSegSignal;->BER:I

    .line 53
    return-void
.end method

.method public setCN(I)V
    .locals 0
    .param p1, "mCN"    # I

    .prologue
    .line 44
    iput p1, p0, Landroid/broadcast/helper/types/MtvOneSegSignal;->CN:I

    .line 45
    return-void
.end method

.method public setRSSI(I)V
    .locals 0
    .param p1, "mRSSI"    # I

    .prologue
    .line 48
    iput p1, p0, Landroid/broadcast/helper/types/MtvOneSegSignal;->RSSI:I

    .line 49
    return-void
.end method

.method public setsigQty(I)V
    .locals 0
    .param p1, "msigQty"    # I

    .prologue
    .line 56
    iput p1, p0, Landroid/broadcast/helper/types/MtvOneSegSignal;->sigQty:I

    .line 57
    return-void
.end method
