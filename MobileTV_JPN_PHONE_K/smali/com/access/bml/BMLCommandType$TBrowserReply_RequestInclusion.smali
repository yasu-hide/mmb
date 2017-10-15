.class public Lcom/access/bml/BMLCommandType$TBrowserReply_RequestInclusion;
.super Lcom/access/bml/BMLCommandType$TBrowserReplyType;
.source "BMLCommandType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLCommandType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TBrowserReply_RequestInclusion"
.end annotation


# instance fields
.field public fDoRequestContent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/access/bml/BMLCommandType$TBrowserReplyType;-><init>()V

    return-void
.end method
