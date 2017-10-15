.class Lcom/access/bml/BMLHandleCommandProc$7;
.super Ljava/lang/Object;
.source "BMLHandleCommandProc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLHandleCommandProc;->ShowAuthPopup(ILjava/lang/String;Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml/BMLHandleCommandProc;

.field private final synthetic val$cmd:Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;

.field private final synthetic val$cmdID:I

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLHandleCommandProc;Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLHandleCommandProc$7;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    iput-object p2, p0, Lcom/access/bml/BMLHandleCommandProc$7;->val$cmd:Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;

    iput-object p3, p0, Lcom/access/bml/BMLHandleCommandProc$7;->val$title:Ljava/lang/String;

    iput p4, p0, Lcom/access/bml/BMLHandleCommandProc$7;->val$cmdID:I

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/access/bml/BMLHandleCommandProc$7;)Lcom/access/bml/BMLHandleCommandProc;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$7;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x41a00000    # 20.0f

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 445
    iget-object v5, p0, Lcom/access/bml/BMLHandleCommandProc$7;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v5}, Lcom/access/bml/BMLHandleCommandProc;->access$2(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    .line 531
    :goto_0
    return-void

    .line 449
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/access/bml/BMLHandleCommandProc$7;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v5}, Lcom/access/bml/BMLHandleCommandProc;->access$2(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 451
    .local v2, "layout":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/access/bml/BMLHandleCommandProc$7;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v5}, Lcom/access/bml/BMLHandleCommandProc;->access$2(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 452
    .local v4, "tvUser":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/access/bml/BMLHandleCommandProc$7;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v5}, Lcom/access/bml/BMLHandleCommandProc;->access$2(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 453
    .local v1, "etUser":Landroid/widget/EditText;
    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/access/bml/BMLHandleCommandProc$7;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v5}, Lcom/access/bml/BMLHandleCommandProc;->access$2(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 454
    .local v3, "tvPw":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/access/bml/BMLHandleCommandProc$7;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v5}, Lcom/access/bml/BMLHandleCommandProc;->access$2(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 455
    .local v0, "etPw":Landroid/widget/EditText;
    invoke-virtual {v4, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 456
    invoke-virtual {v3, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 460
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 462
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 467
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 468
    invoke-direct {v5, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 467
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 470
    invoke-direct {v5, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 469
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    new-instance v5, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v5}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 486
    iget-object v5, p0, Lcom/access/bml/BMLHandleCommandProc$7;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    const-string v6, "userid"

    invoke-static {v5, v6}, Lcom/access/bml/BMLHandleCommandProc;->access$8(Lcom/access/bml/BMLHandleCommandProc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v5, p0, Lcom/access/bml/BMLHandleCommandProc$7;->val$cmd:Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;

    iget-object v5, v5, Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;->fUserName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v5, p0, Lcom/access/bml/BMLHandleCommandProc$7;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    const-string v6, "password"

    invoke-static {v5, v6}, Lcom/access/bml/BMLHandleCommandProc;->access$8(Lcom/access/bml/BMLHandleCommandProc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v5, p0, Lcom/access/bml/BMLHandleCommandProc$7;->val$cmd:Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;

    iget-object v5, v5, Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;->fPassword:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v5, p0, Lcom/access/bml/BMLHandleCommandProc$7;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/access/bml/BMLHandleCommandProc$7;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v7}, Lcom/access/bml/BMLHandleCommandProc;->access$2(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 497
    iget-object v7, p0, Lcom/access/bml/BMLHandleCommandProc$7;->val$title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 498
    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 499
    iget-object v7, p0, Lcom/access/bml/BMLHandleCommandProc$7;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    const-string v8, "button_ok"

    invoke-static {v7, v8}, Lcom/access/bml/BMLHandleCommandProc;->access$8(Lcom/access/bml/BMLHandleCommandProc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/access/bml/BMLHandleCommandProc$7$1;

    iget v9, p0, Lcom/access/bml/BMLHandleCommandProc$7;->val$cmdID:I

    invoke-direct {v8, p0, v1, v0, v9}, Lcom/access/bml/BMLHandleCommandProc$7$1;-><init>(Lcom/access/bml/BMLHandleCommandProc$7;Landroid/widget/EditText;Landroid/widget/EditText;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 514
    iget-object v7, p0, Lcom/access/bml/BMLHandleCommandProc$7;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    const-string v8, "button_cancel"

    invoke-static {v7, v8}, Lcom/access/bml/BMLHandleCommandProc;->access$8(Lcom/access/bml/BMLHandleCommandProc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/access/bml/BMLHandleCommandProc$7$2;

    iget v9, p0, Lcom/access/bml/BMLHandleCommandProc$7;->val$cmdID:I

    invoke-direct {v8, p0, v9}, Lcom/access/bml/BMLHandleCommandProc$7$2;-><init>(Lcom/access/bml/BMLHandleCommandProc$7;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 522
    new-instance v7, Lcom/access/bml/BMLHandleCommandProc$7$3;

    iget v8, p0, Lcom/access/bml/BMLHandleCommandProc$7;->val$cmdID:I

    invoke-direct {v7, p0, v8}, Lcom/access/bml/BMLHandleCommandProc$7$3;-><init>(Lcom/access/bml/BMLHandleCommandProc$7;I)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 530
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    .line 496
    invoke-static {v5, v6}, Lcom/access/bml/BMLHandleCommandProc;->access$6(Lcom/access/bml/BMLHandleCommandProc;Landroid/app/AlertDialog;)V

    goto/16 :goto_0
.end method
