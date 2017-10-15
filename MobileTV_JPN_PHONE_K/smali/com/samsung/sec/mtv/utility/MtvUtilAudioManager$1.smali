.class Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$1;
.super Ljava/lang/Object;
.source "MtvUtilAudioManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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
    .line 100
    iput-object p1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$1;->this$0:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$1;->this$0:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v0, p2}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->access$102(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 108
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$1;->this$0:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->access$102(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 104
    return-void
.end method
