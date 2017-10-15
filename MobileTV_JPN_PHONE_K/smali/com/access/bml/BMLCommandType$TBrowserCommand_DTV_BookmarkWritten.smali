.class public Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_BookmarkWritten;
.super Lcom/access/bml/BMLCommandType$TBrowserCmdType;
.source "BMLCommandType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLCommandType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TBrowserCommand_DTV_BookmarkWritten"
.end annotation


# instance fields
.field public fBookmarkBlockNo:I

.field public fResult:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/access/bml/BMLCommandType$TBrowserCmdType;-><init>()V

    return-void
.end method
