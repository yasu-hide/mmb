.class public Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;
.super Ljava/lang/Object;
.source "MmbSiMetadataStateSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbCancelCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->signal()Z

    .line 734
    return-void
.end method
