.class final enum Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;
.super Ljava/lang/Enum;
.source "MtvFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/provider/MtvFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TV_FILE_DB_INFO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

.field public static final enum TV_FILES_EXT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

.field public static final enum TV_FILES_INT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

.field public static final enum TV_IMAGES_EXT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

.field public static final enum TV_IMAGES_INT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

.field private static isDbModified:Z

.field private static itemsTotalCount:I


# instance fields
.field private itemsCount:I

.field private lastItemId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    const-string v1, "TV_FILES_INT"

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_FILES_INT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    const-string v1, "TV_FILES_EXT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_FILES_EXT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    const-string v1, "TV_IMAGES_INT"

    invoke-direct {v0, v1, v4}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_IMAGES_INT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    const-string v1, "TV_IMAGES_EXT"

    invoke-direct {v0, v1, v5}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_IMAGES_EXT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_FILES_INT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_FILES_EXT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_IMAGES_INT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_IMAGES_EXT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->$VALUES:[Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    .line 79
    sput v2, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->itemsTotalCount:I

    .line 80
    sput-boolean v2, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->isDbModified:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->itemsCount:I

    .line 82
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->lastItemId:I

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->isDbModified:Z

    return v0
.end method

.method public static getTotalItemsCount()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->itemsTotalCount:I

    return v0
.end method

.method public static isDbModified()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->isDbModified:Z

    return v0
.end method

.method public static setDBModified(Z)V
    .locals 0
    .param p0, "isDbModified"    # Z

    .prologue
    .line 91
    sput-boolean p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->isDbModified:Z

    .line 92
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    return-object v0
.end method

.method public static values()[Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->$VALUES:[Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    invoke-virtual {v0}, [Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    return-object v0
.end method


# virtual methods
.method public getItemsCount()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->itemsCount:I

    return v0
.end method

.method public getLastItemId()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->lastItemId:I

    return v0
.end method

.method public updateItemsInfo(II)V
    .locals 3
    .param p1, "itemsCount"    # I
    .param p2, "lastItemId"    # I

    .prologue
    .line 100
    const-string v0, "MtvFileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " itemsTotalCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->itemsTotalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this.itemsCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->itemsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " itemsCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this.lastItemId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->lastItemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastItemId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->itemsCount:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->lastItemId:I

    if-eq v0, p2, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->isDbModified:Z

    .line 106
    const-string v0, "MtvFileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB Modified for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    sget v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->itemsTotalCount:I

    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->itemsCount:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    sput v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->itemsTotalCount:I

    .line 109
    iput p1, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->itemsCount:I

    .line 110
    iput p2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->lastItemId:I

    .line 111
    return-void
.end method
