.class Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1$1;
.super Ljava/lang/Object;
.source "MtvUiLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->onMtvAppFinishNotify(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1$1;->this$1:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1$1;->this$1:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isConflictHandlerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1$1;->this$1:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->closeServiceAndFinish()V

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1$1;->this$1:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->finish()V

    goto :goto_0
.end method
