.class abstract Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbStMeataAriBRunnable;
.super Ljava/lang/Object;
.source "MmbSiMetadataCallbackSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "MmbStMeataAriBRunnable"
.end annotation


# instance fields
.field protected crid:Ljava/lang/String;

.field protected service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)V
    .locals 0
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbStMeataAriBRunnable;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 958
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbStMeataAriBRunnable;->crid:Ljava/lang/String;

    .line 962
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbStMeataAriBRunnable;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbStMeataAriBRunnable;->crid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbStMeataAriBRunnable;->run(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)V

    .line 982
    return-void
.end method

.method public abstract run(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)V
.end method
