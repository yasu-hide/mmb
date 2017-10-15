.class public Lcom/access/bml/BMLDtvType$APPExIMEParam;
.super Ljava/lang/Object;
.source "BMLDtvType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLDtvType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APPExIMEParam"
.end annotation


# instance fields
.field public fCharset:I

.field public fEchoChar:I

.field public fFormat:Ljava/lang/String;

.field public fMaxLength:I

.field public fSelectedRangeDirection:I

.field public fSelectedRangeEnd:I

.field public fSelectedRangeStart:I

.field public fTemplate:Ljava/lang/String;

.field public fTextBoxCompoType:I

.field public fTextBoxCompoUsage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
