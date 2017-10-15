.class Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$5;
.super Ljava/lang/Object;
.source "MtvMiniModeService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$5;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1341
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$5;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$5;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mPresentation:Landroid/app/Presentation;

    .line 1344
    :cond_0
    return-void
.end method
