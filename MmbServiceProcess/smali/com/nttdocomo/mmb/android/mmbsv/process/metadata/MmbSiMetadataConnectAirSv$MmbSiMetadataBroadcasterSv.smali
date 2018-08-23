.class public Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;
.super Ljava/lang/Object;
.source "MmbSiMetadataConnectAirSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MmbSiMetadataBroadcasterSv"
.end annotation


# instance fields
.field public mmbBroadcasterId:I

.field public mmbServiceIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;->mmbBroadcasterId:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;->mmbServiceIdList:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv$MmbSiMetadataBroadcasterSv;->mmbServiceIdList:Ljava/util/List;

    .line 92
    return-void
.end method
