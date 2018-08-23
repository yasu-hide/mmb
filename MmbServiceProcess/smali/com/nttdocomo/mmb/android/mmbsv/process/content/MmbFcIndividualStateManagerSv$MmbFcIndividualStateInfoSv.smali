.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
.super Ljava/lang/Object;
.source "MmbFcIndividualStateManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFcIndividualStateInfoSv"
.end annotation


# instance fields
.field public mmbCallerPid:I

.field public mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;I)V
    .locals 0
    .param p1, "aState"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;
    .param p2, "aCallerPid"    # I

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    .line 98
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;->mmbCallerPid:I

    .line 102
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbFcIndividualStateInfoSv [mmbState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ", mmbCallerPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;->mmbCallerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
