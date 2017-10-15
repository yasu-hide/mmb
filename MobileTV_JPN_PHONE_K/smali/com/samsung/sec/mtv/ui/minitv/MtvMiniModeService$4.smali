.class Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$4;
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
    .line 1295
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$4;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$4;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->updatePresentation()V

    .line 1298
    return-void
.end method
