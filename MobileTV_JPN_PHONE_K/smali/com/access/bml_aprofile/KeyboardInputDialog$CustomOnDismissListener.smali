.class Lcom/access/bml_aprofile/KeyboardInputDialog$CustomOnDismissListener;
.super Ljava/lang/Object;
.source "KeyboardInputDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml_aprofile/KeyboardInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomOnDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml_aprofile/KeyboardInputDialog;


# direct methods
.method constructor <init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/access/bml_aprofile/KeyboardInputDialog$CustomOnDismissListener;->this$0:Lcom/access/bml_aprofile/KeyboardInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog$CustomOnDismissListener;->this$0:Lcom/access/bml_aprofile/KeyboardInputDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/access/bml_aprofile/KeyboardInputDialog;->access$1(Lcom/access/bml_aprofile/KeyboardInputDialog;Landroid/app/AlertDialog;)V

    .line 422
    return-void
.end method
