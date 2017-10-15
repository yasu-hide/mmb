.class public Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;
.super Lcom/access/bml/BMLCommandType$TBrowserCmdType;
.source "BMLCommandType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLCommandType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TBrowserCommand_AuthDialog"
.end annotation


# instance fields
.field public fChallenge:Ljava/lang/String;

.field public fKeepPassword:Z

.field public fKeepUserName:Z

.field public fPassword:Ljava/lang/String;

.field public fProxyHost:Ljava/lang/String;

.field public fProxyPort:I

.field public fRealm:Ljava/lang/String;

.field public fTarget:I

.field public fType:I

.field public fURL:Ljava/lang/String;

.field public fUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/access/bml/BMLCommandType$TBrowserCmdType;-><init>()V

    return-void
.end method
