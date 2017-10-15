.class Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MtvUtilAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$CallStateListener;->this$0:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
    .param p2, "x1"    # Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$1;

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$CallStateListener;-><init>(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 636
    const-string v0, "MtvUtilAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    packed-switch p1, :pswitch_data_0

    .line 650
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 651
    return-void

    .line 640
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$CallStateListener;->this$0:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
