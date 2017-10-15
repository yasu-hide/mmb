.class synthetic Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$4;
.super Ljava/lang/Object;
.source "MtvConflictHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$sec$mtv$ui$conflict$MtvConflictHandler$MESSAGE_ID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->values()[Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$4;->$SwitchMap$com$samsung$sec$mtv$ui$conflict$MtvConflictHandler$MESSAGE_ID:[I

    :try_start_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$4;->$SwitchMap$com$samsung$sec$mtv$ui$conflict$MtvConflictHandler$MESSAGE_ID:[I

    sget-object v1, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->HANDLE_ASSIGN_RESOURCE:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$4;->$SwitchMap$com$samsung$sec$mtv$ui$conflict$MtvConflictHandler$MESSAGE_ID:[I

    sget-object v1, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->RESOURCE_INTENT_RELEASE_RESULT:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
