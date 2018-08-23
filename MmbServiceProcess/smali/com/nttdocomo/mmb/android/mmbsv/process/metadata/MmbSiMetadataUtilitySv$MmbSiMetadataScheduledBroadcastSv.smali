.class public Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
.super Ljava/lang/Object;
.source "MmbSiMetadataUtilitySv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmbSiMetadataScheduledBroadcastSv"
.end annotation


# instance fields
.field public mmbCount:I

.field public mmbEndTime:J

.field public mmbStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbStartTime:J

    .line 113
    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbCount:I

    return-void
.end method
