.class Lcom/access/bml_aprofile/TVSystem$3;
.super Ljava/lang/Object;
.source "TVSystem.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml_aprofile/TVSystem;->audioPlay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml_aprofile/TVSystem;


# direct methods
.method constructor <init>(Lcom/access/bml_aprofile/TVSystem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml_aprofile/TVSystem$3;->this$0:Lcom/access/bml_aprofile/TVSystem;

    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1379
    const-string v0, "audioPlayer onCompletion"

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logI(Ljava/lang/String;)V

    .line 1380
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem$3;->this$0:Lcom/access/bml_aprofile/TVSystem;

    invoke-static {v0}, Lcom/access/bml_aprofile/TVSystem;->access$5(Lcom/access/bml_aprofile/TVSystem;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem$3;->this$0:Lcom/access/bml_aprofile/TVSystem;

    invoke-static {v1}, Lcom/access/bml_aprofile/TVSystem;->access$6(Lcom/access/bml_aprofile/TVSystem;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem$3;->this$0:Lcom/access/bml_aprofile/TVSystem;

    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem$3;->this$0:Lcom/access/bml_aprofile/TVSystem;

    invoke-static {v0}, Lcom/access/bml_aprofile/TVSystem;->access$5(Lcom/access/bml_aprofile/TVSystem;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v2, p0, Lcom/access/bml_aprofile/TVSystem$3;->this$0:Lcom/access/bml_aprofile/TVSystem;

    invoke-static {v2}, Lcom/access/bml_aprofile/TVSystem;->access$6(Lcom/access/bml_aprofile/TVSystem;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/access/bml_aprofile/TVSystem$DTVAudio;

    iget-object v0, v0, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->objectID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/access/bml_aprofile/TVSystem;->access$7(Lcom/access/bml_aprofile/TVSystem;[B)V

    .line 1382
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem$3;->this$0:Lcom/access/bml_aprofile/TVSystem;

    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem$3;->this$0:Lcom/access/bml_aprofile/TVSystem;

    invoke-static {v1}, Lcom/access/bml_aprofile/TVSystem;->access$6(Lcom/access/bml_aprofile/TVSystem;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/access/bml_aprofile/TVSystem;->access$8(Lcom/access/bml_aprofile/TVSystem;I)V

    .line 1384
    :cond_0
    return-void
.end method
