.class public Lcom/access/bml/BMLCommandType$TBrowserCommand_CookieDialog;
.super Lcom/access/bml/BMLCommandType$TBrowserCmdType;
.source "BMLCommandType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLCommandType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TBrowserCommand_CookieDialog"
.end annotation


# instance fields
.field public fCookieString:Ljava/lang/String;

.field public fURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/access/bml/BMLCommandType$TBrowserCmdType;-><init>()V

    return-void
.end method
