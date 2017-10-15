.class Lcom/access/bml/BMLPeer$1$2;
.super Ljava/lang/Object;
.source "BMLPeer.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLPeer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/access/bml/BMLPeer$1;

.field private final synthetic val$filterPattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLPeer$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLPeer$1$2;->this$1:Lcom/access/bml/BMLPeer$1;

    iput-object p2, p0, Lcom/access/bml/BMLPeer$1$2;->val$filterPattern:Ljava/lang/String;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 362
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 363
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v3, -0x1

    .line 365
    iget-object v2, p0, Lcom/access/bml/BMLPeer$1$2;->val$filterPattern:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 366
    .local v1, "ps":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 367
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/access/bml/BMLPeer$1$2;->this$1:Lcom/access/bml/BMLPeer$1;

    invoke-static {v2}, Lcom/access/bml/BMLPeer$1;->access$0(Lcom/access/bml/BMLPeer$1;)Lcom/access/bml/BMLPeer;

    move-result-object v2

    invoke-static {v2}, Lcom/access/bml/BMLPeer;->access$3(Lcom/access/bml/BMLPeer;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/access/bml/BMLPeer$1$2;->this$1:Lcom/access/bml/BMLPeer$1;

    invoke-static {v2}, Lcom/access/bml/BMLPeer$1;->access$0(Lcom/access/bml/BMLPeer$1;)Lcom/access/bml/BMLPeer;

    move-result-object v2

    invoke-static {v2}, Lcom/access/bml/BMLPeer;->access$3(Lcom/access/bml/BMLPeer;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/access/bml/BMLPeer$1$2;->this$1:Lcom/access/bml/BMLPeer$1;

    invoke-static {v2}, Lcom/access/bml/BMLPeer$1;->access$0(Lcom/access/bml/BMLPeer$1;)Lcom/access/bml/BMLPeer;

    move-result-object v2

    invoke-static {v2}, Lcom/access/bml/BMLPeer;->access$3(Lcom/access/bml/BMLPeer;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/access/bml/BMLPeer$1$2;->this$1:Lcom/access/bml/BMLPeer$1;

    invoke-static {v2}, Lcom/access/bml/BMLPeer$1;->access$0(Lcom/access/bml/BMLPeer$1;)Lcom/access/bml/BMLPeer;

    move-result-object v2

    invoke-static {v2}, Lcom/access/bml/BMLPeer;->access$3(Lcom/access/bml/BMLPeer;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
