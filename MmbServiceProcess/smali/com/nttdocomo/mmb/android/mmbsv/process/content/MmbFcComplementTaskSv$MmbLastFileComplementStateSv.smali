.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbLastFileComplementStateSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;
.source "MmbFcComplementTaskSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbLastFileComplementStateSv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Ljava/lang/String;)V
    .locals 0
    .param p2, "aTask"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
    .param p3, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3598
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbLastFileComplementStateSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    .line 3599
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Ljava/lang/String;)V

    .line 3606
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 3624
    const/4 v0, 0x1

    return v0
.end method
