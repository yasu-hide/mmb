.class public final Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;
.super Ljava/lang/Object;
.source "MtvUiChannelGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MtvSearchParam"
.end annotation


# instance fields
.field private final slotId:I

.field private final slotMap:[I


# direct methods
.method public constructor <init>(I[I)V
    .locals 0
    .param p1, "slot_id"    # I
    .param p2, "slot_map"    # [I

    .prologue
    .line 1662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1663
    iput p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;->slotId:I

    .line 1664
    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;->slotMap:[I

    .line 1665
    return-void
.end method


# virtual methods
.method public getSlotId()I
    .locals 1

    .prologue
    .line 1667
    iget v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;->slotId:I

    return v0
.end method

.method public getSlotMap()[I
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;->slotMap:[I

    return-object v0
.end method
