.class public Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwFullLoggerSv;
.source "MmbFwHttpLoggerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$1;,
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MMB_HTTP"

.field private static final SVC_PACKAGE:Ljava/lang/String; = "com.nttdocomo.mmb.android.mmbsv."

.field private static final UI_PACKAGE:Ljava/lang/String; = "jp.co.mmbi.app."


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwFullLoggerSv;-><init>()V

    .line 320
    const-string v7, "org.apache.commons.logging.Log"

    const-string v8, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-static {v7, v8}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    const-string v7, "org.apache.http.wire"

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    .line 324
    .local v5, "logger":Ljava/util/logging/Logger;
    invoke-virtual {v5}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    .line 325
    .local v1, "defaultLevel":Ljava/util/logging/Level;
    invoke-virtual {v5}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    .local v0, "arr$":[Ljava/util/logging/Handler;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 326
    .local v6, "other":Ljava/util/logging/Handler;
    invoke-virtual {v6, v1}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    .line 325
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
    .end local v6    # "other":Ljava/util/logging/Handler;
    :cond_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$1;)V

    .line 329
    .local v2, "handler":Ljava/util/logging/Handler;
    sget-object v7, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v2, v7}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    .line 330
    sget-object v7, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 331
    invoke-virtual {v5, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 332
    return-void
.end method
