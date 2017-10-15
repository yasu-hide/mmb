.class Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$13;
.super Ljava/lang/Object;
.source "MtvUiSViewCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V
    .locals 0

    .prologue
    .line 2020
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$13;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2022
    const-string v0, "MtvUiSViewCover"

    const-string v1, "reseting ComingReservationID .."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$13;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$13;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$4800(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2024
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$13;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$4900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setComingReservationID(I)V

    .line 2026
    return-void
.end method
