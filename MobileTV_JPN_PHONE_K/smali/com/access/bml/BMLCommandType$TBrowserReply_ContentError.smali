.class public Lcom/access/bml/BMLCommandType$TBrowserReply_ContentError;
.super Lcom/access/bml/BMLCommandType$TBrowserReplyType;
.source "BMLCommandType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLCommandType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TBrowserReply_ContentError"
.end annotation


# instance fields
.field public fErrorRecovery:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/access/bml/BMLCommandType$TBrowserReplyType;-><init>()V

    return-void
.end method
