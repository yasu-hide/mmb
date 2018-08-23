.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$ProcessListener;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwClient.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;


# direct methods
.method private constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;)V
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$ProcessListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$1;)V
    .locals 0
    .param p1, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;
    .param p2, "x1"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$1;

    .prologue
    .line 1237
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$ProcessListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V
    .locals 1
    .param p1, "aProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 1246
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1248
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$ProcessListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;

    invoke-static {v0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->access$400(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V

    .line 1250
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 1251
    return-void
.end method
