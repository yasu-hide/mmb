.class Lcom/access/bml/BMLHandleCommandProc$6;
.super Ljava/lang/Object;
.source "BMLHandleCommandProc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLHandleCommandProc;->ShowThreeButtonPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml/BMLHandleCommandProc;

.field private final synthetic val$cmdID:I

.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$negativeBtn:Ljava/lang/String;

.field private final synthetic val$neutralBtn:Ljava/lang/String;

.field private final synthetic val$permissionID:Ljava/lang/String;

.field private final synthetic val$positiveBtn:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLHandleCommandProc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLHandleCommandProc$6;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    iput-object p2, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$positiveBtn:Ljava/lang/String;

    iput-object p5, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$negativeBtn:Ljava/lang/String;

    iput-object p6, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$neutralBtn:Ljava/lang/String;

    iput p7, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$cmdID:I

    iput-object p8, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$permissionID:Ljava/lang/String;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/access/bml/BMLHandleCommandProc$6;)Lcom/access/bml/BMLHandleCommandProc;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$6;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$6;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v0}, Lcom/access/bml/BMLHandleCommandProc;->access$2(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$6;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/access/bml/BMLHandleCommandProc$6;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v2}, Lcom/access/bml/BMLHandleCommandProc;->access$2(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 360
    iget-object v2, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 361
    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 362
    iget-object v2, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 363
    iget-object v2, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$positiveBtn:Ljava/lang/String;

    new-instance v3, Lcom/access/bml/BMLHandleCommandProc$6$1;

    iget v4, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$cmdID:I

    invoke-direct {v3, p0, v4}, Lcom/access/bml/BMLHandleCommandProc$6$1;-><init>(Lcom/access/bml/BMLHandleCommandProc$6;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 371
    iget-object v2, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$negativeBtn:Ljava/lang/String;

    new-instance v3, Lcom/access/bml/BMLHandleCommandProc$6$2;

    iget v4, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$cmdID:I

    invoke-direct {v3, p0, v4}, Lcom/access/bml/BMLHandleCommandProc$6$2;-><init>(Lcom/access/bml/BMLHandleCommandProc$6;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 379
    iget-object v2, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$neutralBtn:Ljava/lang/String;

    new-instance v3, Lcom/access/bml/BMLHandleCommandProc$6$3;

    iget-object v4, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$permissionID:Ljava/lang/String;

    iget v5, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$cmdID:I

    invoke-direct {v3, p0, v4, v5}, Lcom/access/bml/BMLHandleCommandProc$6$3;-><init>(Lcom/access/bml/BMLHandleCommandProc$6;Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 390
    new-instance v2, Lcom/access/bml/BMLHandleCommandProc$6$4;

    iget v3, p0, Lcom/access/bml/BMLHandleCommandProc$6;->val$cmdID:I

    invoke-direct {v2, p0, v3}, Lcom/access/bml/BMLHandleCommandProc$6$4;-><init>(Lcom/access/bml/BMLHandleCommandProc$6;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 359
    invoke-static {v0, v1}, Lcom/access/bml/BMLHandleCommandProc;->access$6(Lcom/access/bml/BMLHandleCommandProc;Landroid/app/AlertDialog;)V

    goto :goto_0
.end method
