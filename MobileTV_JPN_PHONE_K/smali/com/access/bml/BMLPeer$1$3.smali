.class Lcom/access/bml/BMLPeer$1$3;
.super Ljava/lang/Object;
.source "BMLPeer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field private final synthetic val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLPeer$1;Lcom/access/bml/BMLDtvType$APPExIMEParam;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLPeer$1$3;->this$1:Lcom/access/bml/BMLPeer$1;

    iput-object p2, p0, Lcom/access/bml/BMLPeer$1$3;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    .line 394
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

    .line 398
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, "text":[B
    iget-object v2, p0, Lcom/access/bml/BMLPeer$1$3;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    iget v2, v2, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fCharset:I

    if-ne v2, v4, :cond_0

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/access/bml/BMLPeer$1$3;->this$1:Lcom/access/bml/BMLPeer$1;

    invoke-static {v2}, Lcom/access/bml/BMLPeer$1;->access$0(Lcom/access/bml/BMLPeer$1;)Lcom/access/bml/BMLPeer;

    move-result-object v2

    invoke-static {v2}, Lcom/access/bml/BMLPeer;->access$1(Lcom/access/bml/BMLPeer;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SJIS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 409
    :goto_0
    iget-object v2, p0, Lcom/access/bml/BMLPeer$1$3;->this$1:Lcom/access/bml/BMLPeer$1;

    invoke-static {v2}, Lcom/access/bml/BMLPeer$1;->access$0(Lcom/access/bml/BMLPeer$1;)Lcom/access/bml/BMLPeer;

    move-result-object v2

    iget-object v2, v2, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    array-length v3, v1

    invoke-virtual {v2, v4, v1, v3}, Lcom/access/bml/BMLView;->BML_appExIMEEndPeer(Z[BI)V

    .line 411
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v2, p0, Lcom/access/bml/BMLPeer$1$3;->this$1:Lcom/access/bml/BMLPeer$1;

    invoke-static {v2}, Lcom/access/bml/BMLPeer$1;->access$0(Lcom/access/bml/BMLPeer$1;)Lcom/access/bml/BMLPeer;

    move-result-object v2

    invoke-static {v2}, Lcom/access/bml/BMLPeer;->access$1(Lcom/access/bml/BMLPeer;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method
