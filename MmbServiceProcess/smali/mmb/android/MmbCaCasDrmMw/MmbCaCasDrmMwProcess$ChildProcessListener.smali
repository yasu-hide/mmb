.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$ChildProcessListener;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwProcess.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildProcessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;


# direct methods
.method constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$ChildProcessListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V
    .locals 1
    .param p1, "aProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 457
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$ChildProcessListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;

    invoke-static {v0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->access$100(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V

    .line 458
    return-void
.end method
