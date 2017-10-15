.class Lcom/access/bml_aprofile/NotifyDialog$CustomOnDismissListener;
.super Ljava/lang/Object;
.source "NotifyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml_aprofile/NotifyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomOnDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml_aprofile/NotifyDialog;


# direct methods
.method constructor <init>(Lcom/access/bml_aprofile/NotifyDialog;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/access/bml_aprofile/NotifyDialog$CustomOnDismissListener;->this$0:Lcom/access/bml_aprofile/NotifyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/access/bml_aprofile/NotifyDialog$CustomOnDismissListener;->this$0:Lcom/access/bml_aprofile/NotifyDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/access/bml_aprofile/NotifyDialog;->access$1(Lcom/access/bml_aprofile/NotifyDialog;Landroid/app/AlertDialog;)V

    .line 383
    return-void
.end method
