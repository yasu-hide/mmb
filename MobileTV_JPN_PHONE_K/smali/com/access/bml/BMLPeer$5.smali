.class Lcom/access/bml/BMLPeer$5;
.super Ljava/lang/Object;
.source "BMLPeer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLPeer;->dtvAudio_SetStatusPeer(II)I
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
    iput-object p1, p0, Lcom/access/bml/BMLPeer$5;->this$0:Lcom/access/bml/BMLPeer;

    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x0

    .line 1219
    iget-object v0, p0, Lcom/access/bml/BMLPeer$5;->this$0:Lcom/access/bml/BMLPeer;

    invoke-static {v0}, Lcom/access/bml/BMLPeer;->access$6(Lcom/access/bml/BMLPeer;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/access/bml/BMLPeer$5;->this$0:Lcom/access/bml/BMLPeer;

    invoke-static {v1}, Lcom/access/bml/BMLPeer;->access$7(Lcom/access/bml/BMLPeer;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/access/bml/BMLPeer$5;->this$0:Lcom/access/bml/BMLPeer;

    invoke-static {v0}, Lcom/access/bml/BMLPeer;->access$6(Lcom/access/bml/BMLPeer;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/access/bml/BMLPeer$5;->this$0:Lcom/access/bml/BMLPeer;

    invoke-static {v1}, Lcom/access/bml/BMLPeer;->access$7(Lcom/access/bml/BMLPeer;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/access/bml/BMLPeer$BMLDtvAudio;

    iput v3, v0, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mStatus:I

    .line 1221
    iget-object v0, p0, Lcom/access/bml/BMLPeer$5;->this$0:Lcom/access/bml/BMLPeer;

    iget-object v1, v0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    .line 1222
    iget-object v0, p0, Lcom/access/bml/BMLPeer$5;->this$0:Lcom/access/bml/BMLPeer;

    invoke-static {v0}, Lcom/access/bml/BMLPeer;->access$6(Lcom/access/bml/BMLPeer;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v2, p0, Lcom/access/bml/BMLPeer$5;->this$0:Lcom/access/bml/BMLPeer;

    invoke-static {v2}, Lcom/access/bml/BMLPeer;->access$7(Lcom/access/bml/BMLPeer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/access/bml/BMLPeer$BMLDtvAudio;

    iget-object v0, v0, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mObjectID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1221
    invoke-virtual {v1, v3, v0}, Lcom/access/bml/BMLView;->BML_PostDTVBEvent_MediaStopped(I[B)Z

    .line 1224
    :cond_0
    return-void
.end method
