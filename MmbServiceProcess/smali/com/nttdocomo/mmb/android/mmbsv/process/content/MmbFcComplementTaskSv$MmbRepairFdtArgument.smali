.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;
.source "MmbFcComplementTaskSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbRepairFdtArgument"
.end annotation


# instance fields
.field mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

.field mType:I


# direct methods
.method protected constructor <init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 0
    .param p1, "aContentInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .param p2, "aType"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 284
    invoke-direct {p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 285
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .line 286
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    .line 287
    return-void
.end method
