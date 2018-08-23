.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
.super Ljava/lang/Object;
.source "MmbFcContentNotificationSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmbFcNotificationHandlerSv"
.end annotation


# instance fields
.field protected mCrid:Ljava/lang/String;

.field protected mNotificationId:I

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;Ljava/lang/String;)V
    .locals 5
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1562
    sget v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationIdCountUp:I

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mNotificationId:I

    .line 1563
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mCrid:Ljava/lang/String;

    .line 1565
    const v2, 0x7fffffff

    sget v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationIdCountUp:I

    if-le v2, v3, :cond_0

    .line 1566
    sget v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationIdCountUp:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationIdCountUp:I

    .line 1571
    :goto_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mmbFcContents"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1574
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1575
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v2, "mmbFcNotificationId"

    sget v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationIdCountUp:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1576
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1581
    return-void

    .line 1568
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    const/high16 v2, 0x100000

    sput v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationIdCountUp:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;

    .prologue
    .line 1514
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->setDownloadStartNotificationId()V

    return-void
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;

    .prologue
    .line 1514
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->removeDownloadStartNotificationId()V

    return-void
.end method

.method private removeDownloadStartNotificationId()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 1807
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "mmbFcContents"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1811
    .local v4, "pref":Landroid/content/SharedPreferences;
    const/4 v3, 0x1

    .line 1812
    .local v3, "index":I
    :goto_0
    if-gt v3, v9, :cond_0

    .line 1813
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mmbFcDownloadNotificationId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1814
    .local v2, "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mmbFcDownloadCrid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->NOTIFICATION_ID_INVALID_CRID:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1815
    .local v0, "crid":Ljava/lang/String;
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->NOTIFICATION_ID_INVALID_CRID:Ljava/lang/String;

    if-eq v0, v5, :cond_1

    .line 1816
    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mNotificationId:I

    if-ne v2, v5, :cond_1

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1821
    .end local v0    # "crid":Ljava/lang/String;
    .end local v2    # "id":I
    :cond_0
    if-gt v3, v9, :cond_2

    .line 1822
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1823
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mmbFcDownloadNotificationId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1824
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mmbFcDownloadCrid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->NOTIFICATION_ID_INVALID_CRID:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1825
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1835
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "index":I
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 1812
    .restart local v0    # "crid":Ljava/lang/String;
    .restart local v2    # "id":I
    .restart local v3    # "index":I
    .restart local v4    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1827
    .end local v0    # "crid":Ljava/lang/String;
    .end local v2    # "id":I
    :cond_2
    const-string v5, "FC_PREFERENCE_KEY_DOWNLOAD_NOTICE remove err"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1829
    .end local v3    # "index":I
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 1830
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "FC_PREFERENCE_KEY_DOWNLOAD_NOTICE remove err[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setDownloadStartNotificationId()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 1762
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "mmbFcContents"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1766
    .local v4, "pref":Landroid/content/SharedPreferences;
    const/4 v3, 0x1

    .line 1767
    .local v3, "index":I
    :goto_0
    if-gt v3, v9, :cond_0

    .line 1768
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mmbFcDownloadNotificationId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1769
    .local v2, "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mmbFcDownloadCrid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->NOTIFICATION_ID_INVALID_CRID:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1771
    .local v0, "crid":Ljava/lang/String;
    if-nez v2, :cond_1

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->NOTIFICATION_ID_INVALID_CRID:Ljava/lang/String;

    if-ne v0, v5, :cond_1

    .line 1776
    .end local v0    # "crid":Ljava/lang/String;
    .end local v2    # "id":I
    :cond_0
    if-gt v3, v9, :cond_2

    .line 1778
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1779
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mmbFcDownloadNotificationId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mNotificationId:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mmbFcDownloadCrid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mCrid:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1781
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1792
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "index":I
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 1767
    .restart local v0    # "crid":Ljava/lang/String;
    .restart local v2    # "id":I
    .restart local v3    # "index":I
    .restart local v4    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1783
    .end local v0    # "crid":Ljava/lang/String;
    .end local v2    # "id":I
    :cond_2
    const-string v5, "DL_NOTIFICATION_LOOP_MAX over"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1786
    .end local v3    # "index":I
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 1787
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "FC_PREFERENCE_KEY_DOWNLOAD_NOTICE set err[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
