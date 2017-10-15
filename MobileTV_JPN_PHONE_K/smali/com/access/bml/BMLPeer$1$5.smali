.class Lcom/access/bml/BMLPeer$1$5;
.super Ljava/lang/Object;
.source "BMLPeer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/access/bml/BMLPeer$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLPeer$1$5;->this$1:Lcom/access/bml/BMLPeer$1;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 425
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 426
    iget-object v0, p0, Lcom/access/bml/BMLPeer$1$5;->this$1:Lcom/access/bml/BMLPeer$1;

    invoke-static {v0}, Lcom/access/bml/BMLPeer$1;->access$0(Lcom/access/bml/BMLPeer$1;)Lcom/access/bml/BMLPeer;

    move-result-object v0

    iget-object v0, v0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/access/bml/BMLView;->BML_appExIMEEndPeer(Z[BI)V

    .line 427
    return-void
.end method
