.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$58;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientDataControlSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteLicenseDeleteHistoryByCrid(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;)V
    .locals 0

    .prologue
    .line 4603
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$58;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 1
    .param p1, "aDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 4633
    const/4 v0, 0x0

    return v0
.end method

.method public successful(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)I
    .locals 3
    .param p1, "aDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "aAnser"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 4610
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 4611
    check-cast v0, Ljava/lang/Integer;

    .line 4612
    .local v0, "ir":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4621
    .end local v0    # "ir":Ljava/lang/Integer;
    :goto_0
    return v1

    :cond_0
    const/high16 v1, -0x80000000

    goto :goto_0
.end method
