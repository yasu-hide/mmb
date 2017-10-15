.class Lcom/access/bml/BMLHandleCommandProc$5$3;
.super Ljava/lang/Object;
.source "BMLHandleCommandProc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLHandleCommandProc$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/access/bml/BMLHandleCommandProc$5;

.field private final synthetic val$cmdID:I


# direct methods
.method constructor <init>(Lcom/access/bml/BMLHandleCommandProc$5;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLHandleCommandProc$5$3;->this$1:Lcom/access/bml/BMLHandleCommandProc$5;

    iput p2, p0, Lcom/access/bml/BMLHandleCommandProc$5$3;->val$cmdID:I

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 320
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 321
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$5$3;->this$1:Lcom/access/bml/BMLHandleCommandProc$5;

    invoke-static {v0}, Lcom/access/bml/BMLHandleCommandProc$5;->access$0(Lcom/access/bml/BMLHandleCommandProc$5;)Lcom/access/bml/BMLHandleCommandProc;

    move-result-object v0

    iget v1, p0, Lcom/access/bml/BMLHandleCommandProc$5$3;->val$cmdID:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/access/bml/BMLHandleCommandProc;->access$5(Lcom/access/bml/BMLHandleCommandProc;IZLjava/lang/Object;)V

    .line 322
    return-void
.end method
