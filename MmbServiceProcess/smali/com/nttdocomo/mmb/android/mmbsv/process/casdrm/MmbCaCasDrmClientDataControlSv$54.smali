.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$54;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientDataControlSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->insertLicenseDeleteHistory(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteHistoryDaoSv;)I
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
    .line 4347
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$54;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

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
    .line 4368
    const/4 v0, 0x0

    return v0
.end method

.method public successful(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)I
    .locals 1
    .param p1, "aDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "aAnser"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 4357
    const/4 v0, 0x1

    return v0
.end method
