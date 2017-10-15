.class Lcom/access/bml/BMLPeer$3;
.super Ljava/lang/Object;
.source "BMLPeer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLPeer;->dtvControl_PlayRomSoundPeer(I)I
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
    iput-object p1, p0, Lcom/access/bml/BMLPeer$3;->this$0:Lcom/access/bml/BMLPeer;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 632
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 633
    return-void
.end method
