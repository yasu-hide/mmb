.class public Lcom/access/bml/BMLDtvControl;
.super Ljava/lang/Object;
.source "BMLDtvControl.java"


# instance fields
.field private mProfile:I

.field private mServiceStart:J


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/access/bml/BMLDtvControl;->mProfile:I

    .line 23
    return-void
.end method


# virtual methods
.method public getmServiceStart()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/access/bml/BMLDtvControl;->mServiceStart:J

    return-wide v0
.end method

.method public setmServiceStart(J)V
    .locals 1
    .param p1, "mServiceStart"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/access/bml/BMLDtvControl;->mServiceStart:J

    .line 35
    return-void
.end method
