.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;
.source "MmbFcComplementTaskSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbRepairArgument"
.end annotation


# instance fields
.field mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

.field mIsCompleteOnly:Z

.field mRepairInfo:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

.field mType:I


# direct methods
.method protected constructor <init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;ILmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 0
    .param p1, "aContentInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .param p2, "aType"    # I
    .param p3, "aRepairInfo"    # Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;
    .param p4, "aIsCompleteOnly"    # Z
    .param p5, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 267
    invoke-direct {p0, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 268
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .line 269
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mType:I

    .line 270
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mRepairInfo:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    .line 271
    iput-boolean p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mIsCompleteOnly:Z

    .line 272
    return-void
.end method
