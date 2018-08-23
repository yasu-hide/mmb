.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$22;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientDataControlSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableQueryResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->queryPurchaseHistoryForBasicSubscription(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

.field final synthetic val$aData:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;)V
    .locals 0

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$22;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$22;->val$aData:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "aDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    .line 1807
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$22;->val$aData:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbPurchaseId:Ljava/lang/String;

    .line 1808
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$22;->val$aData:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbCrid:Ljava/lang/String;

    .line 1809
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$22;->val$aData:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbPurchaseType:I

    .line 1810
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$22;->val$aData:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbUpdateDay:J

    .line 1811
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$22;->val$aData:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbEntityId:I

    .line 1815
    return-void
.end method

.method public successful(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;II)V
    .locals 4
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
    .line 1782
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$22;->val$aData:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    const-string v1, "purchaseId"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbPurchaseId:Ljava/lang/String;

    .line 1785
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$22;->val$aData:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    const-string v1, "crid"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbCrid:Ljava/lang/String;

    .line 1788
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$22;->val$aData:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    const-string v1, "purchaseType"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbPurchaseType:I

    .line 1791
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$22;->val$aData:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    const-string v1, "updateDay"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbUpdateDay:J

    .line 1794
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$22;->val$aData:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    const-string v1, "entityid"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbEntityId:I

    .line 1800
    return-void
.end method
