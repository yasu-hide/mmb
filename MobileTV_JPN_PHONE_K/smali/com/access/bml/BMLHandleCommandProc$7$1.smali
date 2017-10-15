.class Lcom/access/bml/BMLHandleCommandProc$7$1;
.super Ljava/lang/Object;
.source "BMLHandleCommandProc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLHandleCommandProc$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/access/bml/BMLHandleCommandProc$7;

.field private final synthetic val$cmdID:I

.field private final synthetic val$etPw:Landroid/widget/EditText;

.field private final synthetic val$etUser:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLHandleCommandProc$7;Landroid/widget/EditText;Landroid/widget/EditText;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLHandleCommandProc$7$1;->this$1:Lcom/access/bml/BMLHandleCommandProc$7;

    iput-object p2, p0, Lcom/access/bml/BMLHandleCommandProc$7$1;->val$etUser:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/access/bml/BMLHandleCommandProc$7$1;->val$etPw:Landroid/widget/EditText;

    iput p4, p0, Lcom/access/bml/BMLHandleCommandProc$7$1;->val$cmdID:I

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 503
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 505
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;-><init>()V

    .line 506
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;
    iput-boolean v3, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;->fConfirmed:Z

    .line 507
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc$7$1;->val$etUser:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;->fUserName:Ljava/lang/String;

    .line 508
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc$7$1;->val$etPw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;->fPassword:Ljava/lang/String;

    .line 511
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc$7$1;->this$1:Lcom/access/bml/BMLHandleCommandProc$7;

    invoke-static {v1}, Lcom/access/bml/BMLHandleCommandProc$7;->access$0(Lcom/access/bml/BMLHandleCommandProc$7;)Lcom/access/bml/BMLHandleCommandProc;

    move-result-object v1

    iget v2, p0, Lcom/access/bml/BMLHandleCommandProc$7$1;->val$cmdID:I

    invoke-static {v1, v2, v3, v0}, Lcom/access/bml/BMLHandleCommandProc;->access$5(Lcom/access/bml/BMLHandleCommandProc;IZLjava/lang/Object;)V

    .line 512
    return-void
.end method
