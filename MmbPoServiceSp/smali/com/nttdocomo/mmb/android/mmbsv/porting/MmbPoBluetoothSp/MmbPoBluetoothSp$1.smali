.class Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp$1;
.super Ljava/lang/Object;
.source "MmbPoBluetoothSp.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmbPoBluetoothSp#mServiceListener.onServiceConnected() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmbPoBluetoothSp#mServiceListener.onServiceDisconnected() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;Ljava/lang/String;)V

    .line 90
    return-void
.end method
