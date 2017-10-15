.class Lcom/access/bml/BMLPeer$4;
.super Ljava/lang/Object;
.source "BMLPeer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLPeer;->dtvSystem_NotifyErrorPeer(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml/BMLPeer;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLPeer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLPeer$4;->this$0:Lcom/access/bml/BMLPeer;

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 977
    iget-object v1, p0, Lcom/access/bml/BMLPeer$4;->this$0:Lcom/access/bml/BMLPeer;

    const-string v2, "unknown_error"

    invoke-static {v1, v2}, Lcom/access/bml/BMLPeer;->access$5(Lcom/access/bml/BMLPeer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/access/bml/BMLPeer$4;->this$0:Lcom/access/bml/BMLPeer;

    iget-object v1, v1, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 979
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 980
    return-void
.end method
