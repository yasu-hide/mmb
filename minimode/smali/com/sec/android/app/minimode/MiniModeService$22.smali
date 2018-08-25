.class Lcom/sec/android/app/minimode/MiniModeService$22;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->setContentViewInner(IIII)V
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
    .line 1752
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$22;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1754
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1755
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$22;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$4900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1756
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1757
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$22;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/minimode/MiniModeService;->startActivity(Landroid/content/Intent;)V

    .line 1760
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$22;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/MiniModeService;->setClosingAnimation(I)V

    .line 1761
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$22;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService$22;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v2}, Lcom/sec/android/app/minimode/MiniModeService;->access$5000(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1762
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$22;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService$22;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v2}, Lcom/sec/android/app/minimode/MiniModeService;->access$5000(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService$22;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v3, v3, Lcom/sec/android/app/minimode/MiniModeService;->CLOSE_MINIAPP_DELAY:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1765
    return-void
.end method
