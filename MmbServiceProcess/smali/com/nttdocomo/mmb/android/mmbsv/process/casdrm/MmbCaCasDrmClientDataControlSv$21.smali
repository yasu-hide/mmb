.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$21;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientDataControlSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableQueryResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->queryPurchaseHistoryByPurchaseIdList([Ljava/lang/String;)Ljava/util/List;
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
    .line 1693
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$21;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$21;->val$result:Ljava/util/List;

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
    .line 1718
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
    .line 1701
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$21;->val$result:Ljava/util/List;

    const-string v1, "purchaseId"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1707
    return-void
.end method
