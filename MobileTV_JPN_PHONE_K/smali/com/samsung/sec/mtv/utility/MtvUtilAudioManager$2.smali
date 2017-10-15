.class Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$2;
.super Ljava/lang/Object;
.source "MtvUtilAudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$2;->this$0:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5
    .param p1, "focus"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 489
    packed-switch p1, :pswitch_data_0

    .line 517
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 492
    :pswitch_1
    const-string v1, "MtvUtilAudioManager"

    const-string v2, "OnAudioFocusChangeListener() : AUDIOFOCUS_GAIN"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    sput-boolean v3, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isFocused:Z

    .line 494
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$2;->this$0:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    .line 495
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$2;->this$0:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAvStreaming(Z)V

    goto :goto_0

    .line 502
    :pswitch_2
    sput-boolean v4, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isFocused:Z

    .line 503
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$2;->this$0:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    .line 504
    const-string v1, "MtvUtilAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnAudioFocusChangeListener() : AUDIOFOCUS_LOSS_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$2;->this$0:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAvStreaming(Z)V

    .line 506
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 507
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MTV_MINIMODE_AUDIO_FOCUS_LOSS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$2;->this$0:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->access$200(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$2;->this$0:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->access$200(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
