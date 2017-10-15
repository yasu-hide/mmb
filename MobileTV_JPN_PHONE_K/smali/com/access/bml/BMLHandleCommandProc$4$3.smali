.class Lcom/access/bml/BMLHandleCommandProc$4$3;
.super Ljava/lang/Object;
.source "BMLHandleCommandProc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLHandleCommandProc$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/access/bml/BMLHandleCommandProc$4;

.field private final synthetic val$cmdID:I


# direct methods
.method constructor <init>(Lcom/access/bml/BMLHandleCommandProc$4;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLHandleCommandProc$4$3;->this$1:Lcom/access/bml/BMLHandleCommandProc$4;

    iput p2, p0, Lcom/access/bml/BMLHandleCommandProc$4$3;->val$cmdID:I

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 262
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 263
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$4$3;->this$1:Lcom/access/bml/BMLHandleCommandProc$4;

    invoke-static {v0}, Lcom/access/bml/BMLHandleCommandProc$4;->access$0(Lcom/access/bml/BMLHandleCommandProc$4;)Lcom/access/bml/BMLHandleCommandProc;

    move-result-object v0

    iget v1, p0, Lcom/access/bml/BMLHandleCommandProc$4$3;->val$cmdID:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/access/bml/BMLHandleCommandProc;->access$5(Lcom/access/bml/BMLHandleCommandProc;IZLjava/lang/Object;)V

    .line 264
    return-void
.end method
