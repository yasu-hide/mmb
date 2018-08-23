.class Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
.super Ljava/lang/Object;
.source "MmbSlDataBaseControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbBroadcasterDataBaseSv"
.end annotation


# instance fields
.field broadcasterId:S

.field broadcasterName:Ljava/lang/String;

.field networkId:S


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-short v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->networkId:S

    .line 121
    iput-short v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->broadcasterId:S

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->broadcasterName:Ljava/lang/String;

    return-void
.end method
