.class public Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;
.super Ljava/lang/Object;
.source "MmbStRecordingStateSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbCancelCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->signal()Z

    .line 939
    return-void
.end method
