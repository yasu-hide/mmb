.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcListenerInfoSv;
.super Ljava/lang/Object;
.source "MmbFcIndividualEventManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFcListenerInfoSv"
.end annotation


# instance fields
.field public mmbSrcPid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "aSrcPid"    # I

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcListenerInfoSv;->mmbSrcPid:I

    .line 300
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbFcListenerInfoSv [mmbSrcPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcListenerInfoSv;->mmbSrcPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
