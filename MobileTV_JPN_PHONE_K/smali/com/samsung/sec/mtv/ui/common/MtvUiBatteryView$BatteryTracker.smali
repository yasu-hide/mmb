.class Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;
.super Landroid/content/BroadcastReceiver;
.source "MtvUiBatteryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryTracker"
.end annotation


# static fields
.field public static final UNKNOWN_LEVEL:I = -0x1


# instance fields
.field health:I

.field level:I

.field plugType:I

.field plugged:Z

.field status:I

.field testmode:Z

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->level:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->testmode:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;
    .param p2, "x1"    # Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 92
    iget-boolean v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->testmode:Z

    if-eqz v6, :cond_1

    const-string v6, "testmode"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/high16 v6, 0x42c80000    # 100.0f

    const-string v9, "level"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v6, v9

    const-string v9, "scale"

    const/16 v10, 0x64

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    float-to-int v1, v6

    .line 97
    .local v1, "battLevel":I
    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->level:I

    if-eq v6, v1, :cond_7

    move v3, v7

    .line 98
    .local v3, "levelChange":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 99
    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->level:I

    .line 101
    :cond_2
    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->plugType:I

    const-string v9, "plugged"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_8

    move v4, v7

    .line 102
    .local v4, "plugTypeChange":Z
    :goto_2
    if-eqz v4, :cond_3

    .line 103
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->plugType:I

    .line 104
    :cond_3
    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->plugType:I

    if-eqz v6, :cond_9

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->plugged:Z

    .line 106
    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->health:I

    const-string v9, "health"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_a

    move v2, v7

    .line 107
    .local v2, "healthChange":Z
    :goto_4
    if-eqz v2, :cond_4

    .line 108
    const-string v6, "health"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->health:I

    .line 110
    :cond_4
    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->status:I

    const-string v9, "status"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_b

    move v5, v7

    .line 111
    .local v5, "statusChange":Z
    :goto_5
    if-eqz v5, :cond_5

    .line 112
    const-string v6, "status"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->status:I

    .line 114
    :cond_5
    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_BATTERY_CHANGED : level:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->level:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->status:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " health:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->health:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v2, :cond_6

    if-eqz v5, :cond_0

    .line 116
    :cond_6
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 117
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v2    # "healthChange":Z
    .end local v3    # "levelChange":Z
    .end local v4    # "plugTypeChange":Z
    .end local v5    # "statusChange":Z
    :cond_7
    move v3, v8

    .line 97
    goto/16 :goto_1

    .restart local v3    # "levelChange":Z
    :cond_8
    move v4, v8

    .line 101
    goto/16 :goto_2

    .restart local v4    # "plugTypeChange":Z
    :cond_9
    move v6, v8

    .line 104
    goto/16 :goto_3

    :cond_a
    move v2, v8

    .line 106
    goto :goto_4

    .restart local v2    # "healthChange":Z
    :cond_b
    move v5, v8

    .line 110
    goto :goto_5

    .line 120
    .end local v1    # "battLevel":I
    .end local v2    # "healthChange":Z
    .end local v3    # "levelChange":Z
    .end local v4    # "plugTypeChange":Z
    :cond_c
    const-string v6, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    iput-boolean v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->testmode:Z

    .line 122
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;

    new-instance v7, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker$1;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;)V

    invoke-virtual {v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
