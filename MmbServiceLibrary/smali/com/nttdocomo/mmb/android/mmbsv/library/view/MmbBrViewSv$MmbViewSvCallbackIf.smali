.class Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbViewSvCallbackIf;
.super Ljava/lang/Object;
.source "MmbBrViewSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbViewSvCallbackIf"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbViewSvCallbackIf;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFunctionCallback(I)V
    .locals 4
    .param p1, "aErrorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 853
    packed-switch p1, :pswitch_data_0

    .line 866
    const-string v0, "MMBI_SVC"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[MmbBrViewSv] Bad Argument"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 858
    :pswitch_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbViewSvCallbackIf;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->end()V

    .line 872
    return-void

    .line 862
    :pswitch_1
    const-string v0, "MMBI_SVC"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[MmbBrViewSv] System error"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 853
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFinishReleaseResourceCallback(I)V
    .locals 0
    .param p1, "aResultCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 897
    return-void
.end method
