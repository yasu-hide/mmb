.class Lcom/sec/android/app/minimode/MiniModeService$15;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/MiniModeService;
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
    .line 1147
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$15;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$15;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$2300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$15;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$2400(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$15;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$2300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$15;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$2402(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    .line 1153
    :cond_0
    return-void
.end method
