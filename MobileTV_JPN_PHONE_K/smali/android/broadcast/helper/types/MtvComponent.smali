.class public Landroid/broadcast/helper/types/MtvComponent;
.super Ljava/lang/Object;
.source "MtvComponent.java"


# instance fields
.field private audioPID:I

.field private captPID:I

.field private videoPID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Landroid/broadcast/helper/types/MtvComponent;->audioPID:I

    .line 23
    iput v0, p0, Landroid/broadcast/helper/types/MtvComponent;->videoPID:I

    .line 24
    iput v0, p0, Landroid/broadcast/helper/types/MtvComponent;->captPID:I

    return-void
.end method


# virtual methods
.method public getAudio()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Landroid/broadcast/helper/types/MtvComponent;->audioPID:I

    return v0
.end method

.method public getCaption()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Landroid/broadcast/helper/types/MtvComponent;->captPID:I

    return v0
.end method

.method public getVideo()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Landroid/broadcast/helper/types/MtvComponent;->videoPID:I

    return v0
.end method
