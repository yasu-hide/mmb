.class abstract Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataItemRunnable;
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
    name = "MmbSiMetadataItemRunnable"
.end annotation


# instance fields
.field protected mItem:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;)V
    .locals 0
    .param p1, "aItem"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;

    .prologue
    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataItemRunnable;->mItem:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;

    .line 897
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataItemRunnable;->mItem:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataItemRunnable;->run(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;)V

    .line 917
    return-void
.end method

.method public abstract run(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;)V
.end method
