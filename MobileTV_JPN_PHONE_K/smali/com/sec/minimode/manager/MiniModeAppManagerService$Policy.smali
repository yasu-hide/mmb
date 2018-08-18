.class abstract Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
.super Ljava/lang/Object;
.source "MiniModeAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/minimode/manager/MiniModeAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Policy"
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final DEBUG_VERBOSE:Z


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mLastPosition:Landroid/graphics/Rect;

.field protected mLastPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field protected mOccupiedPosionListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;


# direct methods
.method private constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, -0x2710

    .line 71
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "MiniModeAppManager::Policy"

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/minimode/manager/MiniModeAppManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/minimode/manager/MiniModeAppManagerService;
    .param p2, "x1"    # Lcom/sec/minimode/manager/MiniModeAppManagerService$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V

    return-void
.end method

.method private dumpOccupiedPosionList()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method


# virtual methods
.method public addPosion(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "newPosition"    # Landroid/graphics/Rect;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastPosition()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    monitor-exit v1

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 145
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 147
    .local v0, "targetPosition":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    .line 149
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    monitor-exit v2

    return-object v0

    .line 152
    .end local v0    # "targetPosition":Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 130
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 132
    .local v0, "targetPosition":Landroid/graphics/Rect;
    monitor-exit v2

    return-object v0

    .line 133
    .end local v0    # "targetPosition":Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOccupiedPosition(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 189
    .local v0, "newPosition":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 190
    :try_start_0
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    const/4 v1, 0x1

    monitor-exit v2

    .line 197
    :goto_0
    return v1

    .line 194
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePosition(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLastPosition(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "pos"    # Landroid/graphics/Rect;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLastPosition(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "pos"    # Landroid/graphics/Rect;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    monitor-enter v1

    .line 160
    :try_start_0
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    .line 161
    monitor-exit v1

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLastSize(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 174
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 176
    .local v0, "targetPosition":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    .line 179
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 180
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 181
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    monitor-exit v2

    .line 183
    return-void

    .line 182
    .end local v0    # "targetPosition":Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updatePosition(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 110
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 116
    .local v0, "targetPosition":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 117
    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 118
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 120
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "targetPosition":Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
