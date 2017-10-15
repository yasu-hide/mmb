.class public Lcom/access/bml/BMLCommandType$TBrowserCommand_HistoryBackForw;
.super Lcom/access/bml/BMLCommandType$TBrowserCmdType;
.source "BMLCommandType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLCommandType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TBrowserCommand_HistoryBackForw"
.end annotation


# instance fields
.field public after_is_https:Z

.field public before_is_https:Z

.field public fAfterURL:Ljava/lang/String;

.field public fBeforeURL:Ljava/lang/String;

.field public fStep:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/access/bml/BMLCommandType$TBrowserCmdType;-><init>()V

    return-void
.end method
