.class Lcom/sec/android/app/minimode/MiniModeService$3;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$3;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "bRet":Z
    if-ne p2, v3, :cond_1

    .line 412
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$3;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$600(Lcom/sec/android/app/minimode/MiniModeService;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$3;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$700(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$3;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v1, v2}, Lcom/sec/android/app/minimode/MiniModeService;->access$000(Lcom/sec/android/app/minimode/MiniModeService;I)V

    .line 418
    :cond_0
    const/4 v0, 0x1

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$3;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v1, p3}, Lcom/sec/android/app/minimode/MiniModeService;->access$702(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$3;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v1, p2}, Lcom/sec/android/app/minimode/MiniModeService;->access$602(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 422
    return v0
.end method
