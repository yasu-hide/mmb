.class Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackSv;
.super Ljava/lang/Object;
.source "MmbRcServerControllerSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbRcCallbackSv"
.end annotation


# instance fields
.field private instance:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;)V
    .locals 1
    .param p1, "aInstance"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    .prologue
    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    .line 1018
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    .line 1023
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1064
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 1068
    .local v0, "binder":Landroid/os/Binder;
    return-object v0
.end method

.method public onFinishFunctionCallback(I)V
    .locals 1
    .param p1, "aErrorCode"    # I

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;)V

    .line 1048
    :cond_0
    return-void
.end method

.method public onFinishReleaseResourceCallback(I)V
    .locals 0
    .param p1, "aResultCode"    # I

    .prologue
    .line 1090
    return-void
.end method
