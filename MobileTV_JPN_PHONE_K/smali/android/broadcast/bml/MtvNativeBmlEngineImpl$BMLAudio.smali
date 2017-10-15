.class Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
.super Ljava/lang/Object;
.source "MtvNativeBmlEngineImpl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/broadcast/bml/MtvNativeBmlEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BMLAudio"
.end annotation


# instance fields
.field private in_data:[B

.field private in_mime:I

.field in_object_id:Ljava/lang/String;

.field in_status:I

.field isReady:Z

.field public mp:Landroid/media/MediaPlayer;

.field public streamFileName:Ljava/lang/String;

.field final synthetic this$0:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;


# direct methods
.method private constructor <init>(Landroid/broadcast/bml/MtvNativeBmlEngineImpl;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 200
    iput-object p1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->this$0:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object v1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_data:[B

    .line 203
    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_mime:I

    .line 204
    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_status:I

    .line 205
    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->isReady:Z

    .line 206
    iput-object v1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_object_id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/broadcast/bml/MtvNativeBmlEngineImpl;Landroid/broadcast/bml/MtvNativeBmlEngineImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/broadcast/bml/MtvNativeBmlEngineImpl;
    .param p2, "x1"    # Landroid/broadcast/bml/MtvNativeBmlEngineImpl$1;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;-><init>(Landroid/broadcast/bml/MtvNativeBmlEngineImpl;)V

    return-void
.end method


# virtual methods
.method public getIn_data()[B
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_data:[B

    return-object v0
.end method

.method public getIn_mime()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_mime:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 214
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BMLAudio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_object_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isCompleted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->this$0:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    const/16 v1, 0x232d

    iput v1, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fMediaStopped_EventType:I

    .line 220
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->this$0:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_object_id:Ljava/lang/String;

    iput-object v1, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fMediaStopped_ObjectID:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->this$0:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_PostDTVBEvent_MediaStopped(I)Z

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 225
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BMLAudio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_object_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onError."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 210
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BMLAudio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_object_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isPrepared."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->isReady:Z

    .line 212
    return-void
.end method

.method public setIn_data([B)V
    .locals 0
    .param p1, "in_data"    # [B

    .prologue
    .line 229
    iput-object p1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_data:[B

    .line 230
    return-void
.end method

.method public setIn_mime(I)V
    .locals 0
    .param p1, "in_mime"    # I

    .prologue
    .line 236
    iput p1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_mime:I

    .line 237
    return-void
.end method
