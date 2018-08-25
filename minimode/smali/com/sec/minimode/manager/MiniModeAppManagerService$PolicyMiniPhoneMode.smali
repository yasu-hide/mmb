.class Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicyMiniPhoneMode;
.super Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
.source "MiniModeAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/minimode/manager/MiniModeAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyMiniPhoneMode"
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field final synthetic this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;


# direct methods
.method private constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V
    .locals 2

    .prologue
    .line 236
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicyMiniPhoneMode;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/minimode/manager/MiniModeAppManagerService$1;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicyMiniPhoneMode;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MiniPhoneMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicyMiniPhoneMode;->TAG:Ljava/lang/String;

    .line 238
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/minimode/manager/MiniModeAppManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/minimode/manager/MiniModeAppManagerService;
    .param p2, "x1"    # Lcom/sec/minimode/manager/MiniModeAppManagerService$1;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicyMiniPhoneMode;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V

    return-void
.end method


# virtual methods
.method public getLastPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->getLastPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public setLastPosition(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "pos"    # Landroid/graphics/Rect;

    .prologue
    .line 242
    invoke-super {p0, p1, p2}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->setLastPosition(Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    .line 243
    return-void
.end method
