.class final Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateAlertDialogText;
.super Ljava/lang/Object;
.source "MtvUiTestMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RunnableUpdateAlertDialogText"
.end annotation


# instance fields
.field private final mString:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;Ljava/lang/String;)V
    .locals 0
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateAlertDialogText;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateAlertDialogText;->mString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateAlertDialogText;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$1500(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateAlertDialogText;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$1500(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateAlertDialogText;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 693
    :cond_0
    return-void
.end method
