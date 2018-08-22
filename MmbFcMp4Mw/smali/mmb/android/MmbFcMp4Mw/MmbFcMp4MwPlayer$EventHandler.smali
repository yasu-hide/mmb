.class Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MmbFcMp4MwPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMmbFcMp4MwPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

.field final synthetic this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1263
    iput-object p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 1264
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1265
    iput-object p2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->mMmbFcMp4MwPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 1266
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 1273
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->mMmbFcMp4MwPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$600(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1274
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$300(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;

    move-result-object v2

    const-string v3, "mMmbFcMp4MwPlayer went away with unhandled events"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbLogW(Ljava/lang/String;)V

    .line 1323
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1277
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1320
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$300(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbLogE(Ljava/lang/String;)V

    goto :goto_0

    .line 1279
    :sswitch_1
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$700(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1280
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$700(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->mMmbFcMp4MwPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-interface {v2, v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;->onPrepared(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    goto :goto_0

    .line 1283
    :sswitch_2
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$800(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1284
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$800(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->mMmbFcMp4MwPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-interface {v2, v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;->onCompletion(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    .line 1285
    :cond_2
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2, v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$900(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;Z)V

    goto :goto_0

    .line 1288
    :sswitch_3
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$1000(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1289
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$1000(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->mMmbFcMp4MwPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-interface {v2, v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;->onSeekComplete(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    goto :goto_0

    .line 1292
    :sswitch_4
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$300(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbLogE(Ljava/lang/String;)V

    .line 1293
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gez v2, :cond_3

    const/16 v2, 0x6a

    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 1294
    :cond_3
    const/4 v0, 0x0

    .line 1295
    .local v0, "error_was_handled":Z
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$1100(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1296
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$1100(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->mMmbFcMp4MwPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;->onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z

    move-result v0

    .line 1298
    :cond_4
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$800(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 1299
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$800(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->mMmbFcMp4MwPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-interface {v2, v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;->onCompletion(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    .line 1301
    :cond_5
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2, v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$900(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;Z)V

    goto/16 :goto_0

    .line 1304
    .end local v0    # "error_was_handled":Z
    :sswitch_5
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$300(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Info ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1305
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$1200(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1306
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$1200(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->mMmbFcMp4MwPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;->onInfo(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z

    goto/16 :goto_0

    .line 1313
    :sswitch_6
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$300(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dim Change ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1314
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$1300(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1315
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;

    .line 1316
    .local v1, "mObject":Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$1300(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->mMmbFcMp4MwPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3, v4, v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;->onDimChange(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;ILmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;)V

    goto/16 :goto_0

    .line 1277
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
        0xc8 -> :sswitch_5
        0x12c -> :sswitch_6
    .end sparse-switch
.end method
