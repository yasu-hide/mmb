.class final Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv$1;
.super Ljava/util/HashMap;
.source "MmbStRecordingUtilitySv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 98
    const-string v0, "single"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "pack"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "subscription"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method
