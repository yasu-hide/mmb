.class public Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;
.super Ljava/lang/Object;
.source "MmbFcBrowMwViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FormResubmissionResult"
.end annotation


# instance fields
.field private mResult:Z

.field protected final mViewDialog:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)V
    .locals 1
    .param p2, "aView"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    .prologue
    const/4 v0, 0x0

    .line 891
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;->mResult:Z

    .line 892
    iput-object p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;->mViewDialog:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    .line 893
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;->mResult:Z

    .line 894
    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .prologue
    .line 897
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;->mResult:Z

    return v0
.end method

.method public setResult(Z)V
    .locals 2
    .param p1, "result"    # Z

    .prologue
    .line 902
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;->mResult:Z

    .line 903
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;->mViewDialog:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    monitor-enter v1

    .line 904
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;->mViewDialog:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 905
    monitor-exit v1

    .line 906
    return-void

    .line 905
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
