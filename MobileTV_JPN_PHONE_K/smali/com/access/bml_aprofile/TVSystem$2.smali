.class Lcom/access/bml_aprofile/TVSystem$2;
.super Ljava/lang/Object;
.source "TVSystem.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml_aprofile/TVSystem;->dtvControl_PlayRomSoundPeer(I)I
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
    iput-object p1, p0, Lcom/access/bml_aprofile/TVSystem$2;->this$0:Lcom/access/bml_aprofile/TVSystem;

    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1106
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 1107
    return-void
.end method
