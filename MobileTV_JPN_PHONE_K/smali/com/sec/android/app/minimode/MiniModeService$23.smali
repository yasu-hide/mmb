.class synthetic Lcom/sec/android/app/minimode/MiniModeService$23;
.super Ljava/lang/Object;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$minimode$MiniModeService$Resizable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1338
    invoke-static {}, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->values()[Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/minimode/MiniModeService$23;->$SwitchMap$com$sec$android$app$minimode$MiniModeService$Resizable:[I

    :try_start_0
    sget-object v0, Lcom/sec/android/app/minimode/MiniModeService$23;->$SwitchMap$com$sec$android$app$minimode$MiniModeService$Resizable:[I

    sget-object v1, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->BOTTOM_ONLY:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    invoke-virtual {v1}, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sec/android/app/minimode/MiniModeService$23;->$SwitchMap$com$sec$android$app$minimode$MiniModeService$Resizable:[I

    sget-object v1, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->RIGHT_ONLY:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    invoke-virtual {v1}, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sec/android/app/minimode/MiniModeService$23;->$SwitchMap$com$sec$android$app$minimode$MiniModeService$Resizable:[I

    sget-object v1, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->RIGHT_BOTTOM:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    invoke-virtual {v1}, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
