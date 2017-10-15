.class Lcom/access/bml_aprofile/TVSystem$DTVAudio;
.super Ljava/lang/Object;
.source "TVSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml_aprofile/TVSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DTVAudio"
.end annotation


# instance fields
.field public fileName:Ljava/lang/String;

.field public mime:I

.field public objectID:Ljava/lang/String;

.field public status:I

.field final synthetic this$0:Lcom/access/bml_aprofile/TVSystem;


# direct methods
.method constructor <init>(Lcom/access/bml_aprofile/TVSystem;)V
    .locals 0

    .prologue
    .line 1621
    iput-object p1, p0, Lcom/access/bml_aprofile/TVSystem$DTVAudio;->this$0:Lcom/access/bml_aprofile/TVSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
