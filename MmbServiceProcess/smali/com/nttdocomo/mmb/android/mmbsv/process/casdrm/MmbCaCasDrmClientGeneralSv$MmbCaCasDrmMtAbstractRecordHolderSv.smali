.class abstract Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientGeneralSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "MmbCaCasDrmMtAbstractRecordHolderSv"
.end annotation


# instance fields
.field protected recordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "aSize"    # I

    .prologue
    .line 1322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;->recordMap:Ljava/util/Map;

    .line 1332
    return-void
.end method


# virtual methods
.method public setSearchRecord(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V
    .locals 7
    .param p1, "aRecord"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .prologue
    .line 1349
    iget-object v0, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1350
    .local v1, "fld":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;->recordMap:Ljava/util/Map;

    iget-object v5, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iget-object v6, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1355
    .end local v1    # "fld":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1368
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbCaCasDrmMtAbstractRecordHolderSv [getClass()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1370
    const-string v1, ", recordMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;->recordMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1372
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
