.class public Lcom/access/bml/BMLDtvType$TDTVCurPosInfo;
.super Ljava/lang/Object;
.source "BMLDtvType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLDtvType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TDTVCurPosInfo"
.end annotation


# instance fields
.field public fErrorRange:I

.field public fGeodeticSystem:I

.field public fLatitude:Ljava/lang/String;

.field public fLongitude:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
