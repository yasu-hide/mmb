.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ProcessListener;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwAutoReceiveTlvTransfer.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;


# direct methods
.method private constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ProcessListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$1;)V
    .locals 0
    .param p1, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;
    .param p2, "x1"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$1;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ProcessListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V
    .locals 2
    .param p1, "aProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 277
    const/4 v0, 0x5

    invoke-interface {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 279
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ProcessListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method
