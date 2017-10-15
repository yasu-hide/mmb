.class Lcom/access/bml/BMLHandleCommandProc$2;
.super Ljava/lang/Object;
.source "BMLHandleCommandProc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLHandleCommandProc;->noti(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml/BMLHandleCommandProc;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLHandleCommandProc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLHandleCommandProc$2;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    iput-object p2, p0, Lcom/access/bml/BMLHandleCommandProc$2;->val$msg:Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$2;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v0}, Lcom/access/bml/BMLHandleCommandProc;->access$2(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$2;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v0}, Lcom/access/bml/BMLHandleCommandProc;->access$3(Lcom/access/bml/BMLHandleCommandProc;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$2;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc$2;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v1}, Lcom/access/bml/BMLHandleCommandProc;->access$2(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/access/bml/BMLHandleCommandProc$2;->val$msg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/access/bml/BMLHandleCommandProc;->access$4(Lcom/access/bml/BMLHandleCommandProc;Landroid/widget/Toast;)V

    .line 127
    :goto_1
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$2;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v0}, Lcom/access/bml/BMLHandleCommandProc;->access$3(Lcom/access/bml/BMLHandleCommandProc;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$2;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v0}, Lcom/access/bml/BMLHandleCommandProc;->access$3(Lcom/access/bml/BMLHandleCommandProc;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
