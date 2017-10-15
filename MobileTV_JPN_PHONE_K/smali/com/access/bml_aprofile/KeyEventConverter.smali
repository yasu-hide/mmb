.class public Lcom/access/bml_aprofile/KeyEventConverter;
.super Ljava/lang/Object;
.source "KeyEventConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/access/bml_aprofile/KeyEventConverter$DTVKeyCode;,
        Lcom/access/bml_aprofile/KeyEventConverter$DTVKeyGroup;
    }
.end annotation


# instance fields
.field private mask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/access/bml_aprofile/KeyEventConverter;->mask:I

    .line 21
    return-void
.end method


# virtual methods
.method public getDTVKeyCode(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 49
    sparse-switch p1, :sswitch_data_0

    .line 99
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 51
    :sswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 53
    :sswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 55
    :sswitch_2
    const/4 v0, 0x7

    goto :goto_0

    .line 57
    :sswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 59
    :sswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 61
    :sswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 63
    :sswitch_6
    const/16 v0, 0xb

    goto :goto_0

    .line 65
    :sswitch_7
    const/16 v0, 0xc

    goto :goto_0

    .line 67
    :sswitch_8
    const/16 v0, 0xd

    goto :goto_0

    .line 69
    :sswitch_9
    const/16 v0, 0xe

    goto :goto_0

    .line 71
    :sswitch_a
    const/16 v0, 0xf

    goto :goto_0

    .line 73
    :sswitch_b
    const/16 v0, 0x10

    goto :goto_0

    .line 75
    :sswitch_c
    const/16 v0, 0x11

    goto :goto_0

    .line 77
    :sswitch_d
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :sswitch_e
    const/4 v0, 0x2

    goto :goto_0

    .line 81
    :sswitch_f
    const/4 v0, 0x3

    goto :goto_0

    .line 83
    :sswitch_10
    const/4 v0, 0x4

    goto :goto_0

    .line 85
    :sswitch_11
    const/16 v0, 0x12

    goto :goto_0

    .line 87
    :sswitch_12
    const/16 v0, 0x15

    goto :goto_0

    .line 89
    :sswitch_13
    const/16 v0, 0x17

    goto :goto_0

    .line 91
    :sswitch_14
    const/16 v0, 0x16

    goto :goto_0

    .line 93
    :sswitch_15
    const/16 v0, 0x18

    goto :goto_0

    .line 95
    :sswitch_16
    const/16 v0, 0x13

    goto :goto_0

    .line 97
    :sswitch_17
    const/16 v0, 0x64

    goto :goto_0

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0xe -> :sswitch_7
        0xf -> :sswitch_8
        0x10 -> :sswitch_9
        0x13 -> :sswitch_d
        0x14 -> :sswitch_e
        0x15 -> :sswitch_f
        0x16 -> :sswitch_10
        0x1e -> :sswitch_12
        0x23 -> :sswitch_13
        0x25 -> :sswitch_a
        0x2b -> :sswitch_b
        0x2c -> :sswitch_c
        0x2e -> :sswitch_14
        0x35 -> :sswitch_15
        0x3d -> :sswitch_17
        0x42 -> :sswitch_11
        0x43 -> :sswitch_16
    .end sparse-switch
.end method

.method public getDTVKeyGroup(I)I
    .locals 3
    .param p1, "dtvKeyCode"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    .line 109
    if-gt v0, p1, :cond_0

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v2, 0x12

    if-eq p1, v2, :cond_1

    const/16 v2, 0x13

    if-ne p1, v2, :cond_2

    .line 117
    :cond_1
    :goto_0
    return v0

    .line 111
    :cond_2
    const/4 v0, 0x5

    if-gt v0, p1, :cond_3

    const/16 v0, 0x11

    if-gt p1, v0, :cond_3

    move v0, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    const/16 v0, 0x15

    if-eq p1, v0, :cond_4

    const/16 v0, 0x16

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    const/16 v0, 0x64

    if-ne p1, v0, :cond_5

    .line 114
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 117
    :cond_5
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public isDataButton(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 37
    const/16 v0, 0x3e

    if-ne v0, p1, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMasked(I)Z
    .locals 2
    .param p1, "dtvKeyCode"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/access/bml_aprofile/KeyEventConverter;->getDTVKeyGroup(I)I

    move-result v0

    .line 129
    .local v0, "keyGroup":I
    iget v1, p0, Lcom/access/bml_aprofile/KeyEventConverter;->mask:I

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    .line 130
    const/4 v1, 0x1

    .line 132
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValidDTVKey(I)Z
    .locals 1
    .param p1, "dtvKeyCode"    # I

    .prologue
    .line 141
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMask(I)V
    .locals 0
    .param p1, "mask"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/access/bml_aprofile/KeyEventConverter;->mask:I

    .line 29
    return-void
.end method
