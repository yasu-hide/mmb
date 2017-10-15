.class Lcom/access/bml_aprofile/KeyboardInputDialog$9;
.super Ljava/lang/Object;
.source "KeyboardInputDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml_aprofile/KeyboardInputDialog;->setDialogButton(Landroid/app/AlertDialog$Builder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml_aprofile/KeyboardInputDialog;


# direct methods
.method constructor <init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml_aprofile/KeyboardInputDialog$9;->this$0:Lcom/access/bml_aprofile/KeyboardInputDialog;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog$9;->this$0:Lcom/access/bml_aprofile/KeyboardInputDialog;

    invoke-static {v0}, Lcom/access/bml_aprofile/KeyboardInputDialog;->access$2(Lcom/access/bml_aprofile/KeyboardInputDialog;)Lcom/access/bml_aprofile/KeyboardInputStocker;

    move-result-object v0

    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog$9;->this$0:Lcom/access/bml_aprofile/KeyboardInputDialog;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/access/bml_aprofile/KeyboardInputDialog$9;->this$0:Lcom/access/bml_aprofile/KeyboardInputDialog;

    invoke-static {v2}, Lcom/access/bml_aprofile/KeyboardInputDialog;->access$2(Lcom/access/bml_aprofile/KeyboardInputDialog;)Lcom/access/bml_aprofile/KeyboardInputStocker;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/access/bml_aprofile/KeyboardInputDialog;->access$3(Lcom/access/bml_aprofile/KeyboardInputDialog;ILcom/access/bml_aprofile/KeyboardInputStocker;)V

    goto :goto_0
.end method
