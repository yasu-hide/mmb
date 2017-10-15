.class Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MtvUiFilePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$CallStateListener;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;
    .param p2, "x1"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$1;

    .prologue
    .line 818
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$CallStateListener;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 821
    packed-switch p1, :pswitch_data_0

    .line 835
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 836
    return-void

    .line 824
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$CallStateListener;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    const/16 v1, 0x116

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 821
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
