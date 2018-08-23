.class Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
.super Ljava/lang/Object;
.source "MmbSlDataBaseControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbNetworkDataBaseSv"
.end annotation


# instance fields
.field networkId:S

.field networkName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;->networkId:S

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;->networkName:Ljava/lang/String;

    return-void
.end method
