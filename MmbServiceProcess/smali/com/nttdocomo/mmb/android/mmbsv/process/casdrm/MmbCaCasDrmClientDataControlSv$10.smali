.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$10;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientDataControlSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableQueryResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->queryQuotaTierbit(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$10;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "aDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 880
    return-void
.end method

.method public successful(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;II)V
    .locals 2
    .param p1, "aDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aCount"    # I
    .param p4, "aNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 855
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;-><init>()V

    .line 856
    .local v0, "dao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;
    const-string v1, "entityId"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;->mmbEntityId:I

    .line 859
    const-string v1, "authority"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;->mmbAuthority:Ljava/lang/String;

    .line 862
    const-string v1, "quotaInfo"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbQuotaTierbitDaoSv;->mmbQuotaInfo:[B

    .line 865
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$10;->val$result:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    return-void
.end method
