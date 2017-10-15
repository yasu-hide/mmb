.class Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$6;
.super Ljava/lang/Object;
.source "MtvMiniModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1347
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$6;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$6;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2402(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Z)Z

    .line 1350
    return-void
.end method
