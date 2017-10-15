.class public Lcom/access/bml/BMLCommandType$TBrowserCommand_JSPromptDialog;
.super Lcom/access/bml/BMLCommandType$TBrowserCmdType;
.source "BMLCommandType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLCommandType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TBrowserCommand_JSPromptDialog"
.end annotation


# instance fields
.field public fMessage:Ljava/lang/String;

.field public fValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/access/bml/BMLCommandType$TBrowserCmdType;-><init>()V

    return-void
.end method
