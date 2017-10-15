.class final Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableRemoveAlertDialog;
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
    name = "RunnableRemoveAlertDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableRemoveAlertDialog;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;
    .param p2, "x1"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableRemoveAlertDialog;-><init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableRemoveAlertDialog;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$1500(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableRemoveAlertDialog;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$1500(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 701
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableRemoveAlertDialog;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$1500(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 704
    :cond_0
    return-void
.end method
