.class Lcom/access/bml_aprofile/NotifyDialog$CustomOnShowListener;
.super Ljava/lang/Object;
.source "NotifyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml_aprofile/NotifyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomOnShowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml_aprofile/NotifyDialog;


# direct methods
.method constructor <init>(Lcom/access/bml_aprofile/NotifyDialog;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/access/bml_aprofile/NotifyDialog$CustomOnShowListener;->this$0:Lcom/access/bml_aprofile/NotifyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/access/bml_aprofile/NotifyDialog$CustomOnShowListener;->this$0:Lcom/access/bml_aprofile/NotifyDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/access/bml_aprofile/NotifyDialog;->access$0(Lcom/access/bml_aprofile/NotifyDialog;I)V

    .line 373
    return-void
.end method
