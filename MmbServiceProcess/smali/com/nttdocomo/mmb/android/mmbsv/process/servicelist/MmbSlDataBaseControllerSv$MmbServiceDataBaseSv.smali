.class Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
.super Ljava/lang/Object;
.source "MmbSlDataBaseControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbServiceDataBaseSv"
.end annotation


# instance fields
.field broadcasterId:S

.field partialReception:I

.field serviceId:I

.field serviceName:Ljava/lang/String;

.field serviceProviderName:Ljava/lang/String;

.field serviceType:S

.field transportStreamId:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-short v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->broadcasterId:S

    .line 135
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceId:I

    .line 136
    iput-short v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceType:S

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceName:Ljava/lang/String;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceProviderName:Ljava/lang/String;

    .line 139
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->partialReception:I

    .line 142
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->transportStreamId:I

    return-void
.end method
