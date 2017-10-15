.class public Lcom/access/bml/BMLDtvType$TDSMCCTransmissionLine;
.super Ljava/lang/Object;
.source "BMLDtvType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLDtvType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TDSMCCTransmissionLine"
.end annotation


# instance fields
.field public fContentID:J

.field public fContentIDIndicator:I

.field public fEventID:I

.field public fOriginalNetworkID:I

.field public fServiceID:I

.field public fTransportStreamID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
