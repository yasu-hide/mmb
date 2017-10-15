.class Lcom/access/bml_aprofile/NotifyDialog$3;
.super Ljava/lang/Object;
.source "NotifyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml_aprofile/NotifyDialog;->setDialogButton(Lcom/access/bml_aprofile/TDTVDialogParameter;Landroid/app/AlertDialog$Builder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml_aprofile/NotifyDialog;


# direct methods
.method constructor <init>(Lcom/access/bml_aprofile/NotifyDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml_aprofile/NotifyDialog$3;->this$0:Lcom/access/bml_aprofile/NotifyDialog;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/access/bml_aprofile/NotifyDialog$3;->this$0:Lcom/access/bml_aprofile/NotifyDialog;

    invoke-static {v0}, Lcom/access/bml_aprofile/NotifyDialog;->access$2(Lcom/access/bml_aprofile/NotifyDialog;)Lcom/access/bml_aprofile/NotifyStocker;

    move-result-object v0

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/access/bml_aprofile/NotifyDialog$3;->this$0:Lcom/access/bml_aprofile/NotifyDialog;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/access/bml_aprofile/NotifyDialog$3;->this$0:Lcom/access/bml_aprofile/NotifyDialog;

    invoke-static {v2}, Lcom/access/bml_aprofile/NotifyDialog;->access$3(Lcom/access/bml_aprofile/NotifyDialog;)Lcom/access/bml_aprofile/TDTVDialogParameter;

    move-result-object v2

    iget-object v3, p0, Lcom/access/bml_aprofile/NotifyDialog$3;->this$0:Lcom/access/bml_aprofile/NotifyDialog;

    invoke-static {v3}, Lcom/access/bml_aprofile/NotifyDialog;->access$2(Lcom/access/bml_aprofile/NotifyDialog;)Lcom/access/bml_aprofile/NotifyStocker;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/access/bml_aprofile/NotifyDialog;->access$4(Lcom/access/bml_aprofile/NotifyDialog;ILcom/access/bml_aprofile/TDTVDialogParameter;Lcom/access/bml_aprofile/NotifyStocker;)V

    goto :goto_0
.end method
