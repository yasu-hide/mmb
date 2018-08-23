.class interface abstract Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;
.super Ljava/lang/Object;
.source "MmbCaCasDrmDbOpenHelperSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MmbCaCasDrmDbWritableResultListener"
.end annotation


# virtual methods
.method public abstract failure(Landroid/database/sqlite/SQLiteDatabase;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract successful(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method
