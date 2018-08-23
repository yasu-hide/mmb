.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$NotifyThread;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyThread"
.end annotation


# instance fields
.field private mCompleteProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

.field final synthetic this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;


# direct methods
.method constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V
    .locals 0
    .param p2, "aProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 1258
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$NotifyThread;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    iput-object p2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$NotifyThread;->mCompleteProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .line 1260
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$NotifyThread;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;

    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$NotifyThread;->mCompleteProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    invoke-static {v0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->access$500(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V

    .line 1264
    return-void
.end method
