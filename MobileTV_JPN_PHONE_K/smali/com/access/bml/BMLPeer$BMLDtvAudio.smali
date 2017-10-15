.class Lcom/access/bml/BMLPeer$BMLDtvAudio;
.super Ljava/lang/Object;
.source "BMLPeer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLPeer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BMLDtvAudio"
.end annotation


# instance fields
.field mFileName:Ljava/lang/String;

.field mObjectID:Ljava/lang/String;

.field mStatus:I

.field final synthetic this$0:Lcom/access/bml/BMLPeer;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLPeer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    iput-object p1, p0, Lcom/access/bml/BMLPeer$BMLDtvAudio;->this$0:Lcom/access/bml/BMLPeer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mObjectID:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mFileName:Ljava/lang/String;

    return-void
.end method
