.class final enum Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;
.super Ljava/lang/Enum;
.source "MtvConflictHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MESSAGE_ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

.field public static final enum HANDLE_ASSIGN_RESOURCE:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

.field public static final enum RESOURCE_INTENT_RELEASE_RESULT:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    const-string v1, "HANDLE_ASSIGN_RESOURCE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->HANDLE_ASSIGN_RESOURCE:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    new-instance v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    const-string v1, "RESOURCE_INTENT_RELEASE_RESULT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->RESOURCE_INTENT_RELEASE_RESULT:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    sget-object v1, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->HANDLE_ASSIGN_RESOURCE:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->RESOURCE_INTENT_RELEASE_RESULT:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->$VALUES:[Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    return-object v0
.end method

.method public static values()[Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->$VALUES:[Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    invoke-virtual {v0}, [Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    return-object v0
.end method
