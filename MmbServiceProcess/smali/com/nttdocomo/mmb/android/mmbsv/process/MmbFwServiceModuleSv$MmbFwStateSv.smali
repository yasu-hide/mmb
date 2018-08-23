.class final enum Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;
.super Ljava/lang/Enum;
.source "MmbFwServiceModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MmbFwStateSv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

.field public static final enum AFTER_CLEANUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

.field public static final enum AFTER_CREATE:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

.field public static final enum AFTER_SETUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

.field public static final enum AFTER_STARTUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;


# instance fields
.field private final mExportable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 570
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    const-string v1, "AFTER_CREATE"

    invoke-direct {v0, v1, v2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_CREATE:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    .line 575
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    const-string v1, "AFTER_STARTUP"

    invoke-direct {v0, v1, v3, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_STARTUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    .line 580
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    const-string v1, "AFTER_SETUP"

    invoke-direct {v0, v1, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_SETUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    .line 585
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    const-string v1, "AFTER_CLEANUP"

    invoke-direct {v0, v1, v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_CLEANUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    .line 565
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_CREATE:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_STARTUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_SETUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_CLEANUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "aExportable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 601
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 605
    iput-boolean p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->mExportable:Z

    .line 609
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 565
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    return-object v0
.end method

.method public static values()[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;
    .locals 1

    .prologue
    .line 565
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    invoke-virtual {v0}, [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    return-object v0
.end method


# virtual methods
.method canExport()Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->mExportable:Z

    .line 627
    .local v0, "result":Z
    return v0
.end method
