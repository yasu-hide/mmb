.class Lcom/access/bml/BMLHandleCommandProc$6$3;
.super Ljava/lang/Object;
.source "BMLHandleCommandProc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLHandleCommandProc$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/access/bml/BMLHandleCommandProc$6;

.field private final synthetic val$cmdID:I

.field private final synthetic val$permissionID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLHandleCommandProc$6;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLHandleCommandProc$6$3;->this$1:Lcom/access/bml/BMLHandleCommandProc$6;

    iput-object p2, p0, Lcom/access/bml/BMLHandleCommandProc$6$3;->val$permissionID:Ljava/lang/String;

    iput p3, p0, Lcom/access/bml/BMLHandleCommandProc$6$3;->val$cmdID:I

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 383
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc$6$3;->this$1:Lcom/access/bml/BMLHandleCommandProc$6;

    invoke-static {v1}, Lcom/access/bml/BMLHandleCommandProc$6;->access$0(Lcom/access/bml/BMLHandleCommandProc$6;)Lcom/access/bml/BMLHandleCommandProc;

    move-result-object v1

    invoke-static {v1}, Lcom/access/bml/BMLHandleCommandProc;->access$7(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 384
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc$6$3;->val$permissionID:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 385
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 387
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc$6$3;->this$1:Lcom/access/bml/BMLHandleCommandProc$6;

    invoke-static {v1}, Lcom/access/bml/BMLHandleCommandProc$6;->access$0(Lcom/access/bml/BMLHandleCommandProc$6;)Lcom/access/bml/BMLHandleCommandProc;

    move-result-object v1

    iget v2, p0, Lcom/access/bml/BMLHandleCommandProc$6$3;->val$cmdID:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/access/bml/BMLHandleCommandProc;->access$5(Lcom/access/bml/BMLHandleCommandProc;IZLjava/lang/Object;)V

    .line 388
    return-void
.end method
