.class public Lcom/access/bml/BMLDtvType$IntPtr;
.super Ljava/lang/Object;
.source "BMLDtvType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLDtvType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntPtr"
.end annotation


# instance fields
.field protected mVal:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/access/bml/BMLDtvType$IntPtr;->mVal:I

    .line 87
    return-void
.end method

.method public static valueOf(I)Lcom/access/bml/BMLDtvType$IntPtr;
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 111
    new-instance v0, Lcom/access/bml/BMLDtvType$IntPtr;

    invoke-direct {v0, p0}, Lcom/access/bml/BMLDtvType$IntPtr;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/access/bml/BMLDtvType$IntPtr;->mVal:I

    return v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/access/bml/BMLDtvType$IntPtr;->mVal:I

    .line 103
    return-void
.end method
