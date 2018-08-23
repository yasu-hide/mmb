.class abstract Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
.super Ljava/lang/Object;
.source "MmbFwMainServiceSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "MmbFwNotificationHandlerSv"
.end annotation


# instance fields
.field protected mFlags:I

.field protected mIconId:I

.field protected mIntent:Landroid/app/PendingIntent;

.field protected mNotificationId:I

.field protected mShowBits:I

.field protected mText:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field protected mValue:I

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 0

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adjust(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "aIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v3, 0x0

    .line 1690
    move-object v0, p1

    .line 1691
    .local v0, "result":Landroid/app/PendingIntent;
    if-nez v0, :cond_0

    .line 1692
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1694
    :cond_0
    return-object v0
.end method

.method private adjust(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 1672
    move-object v0, p1

    .line 1673
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1674
    :cond_0
    const-string v0, "\u3000"

    .line 1676
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected cancelNotify()V
    .locals 4

    .prologue
    .line 1748
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1750
    .local v1, "mgr":Landroid/app/NotificationManager;
    :try_start_0
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mNotificationId:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1757
    :goto_0
    return-void

    .line 1751
    :catch_0
    move-exception v0

    .line 1752
    .local v0, "err":Ljava/lang/Exception;
    const-string v2, "NotificationManager#cancel() error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getFlags()I
    .locals 1

    .prologue
    .line 1770
    const/16 v0, 0x10

    return v0
.end method

.method protected abstract getIconId(I)I
.end method

.method protected getIntent(ILandroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "aValue"    # I
    .param p2, "aIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1609
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->adjust(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected getText(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "aValue"    # I
    .param p2, "aText"    # Ljava/lang/String;

    .prologue
    .line 1596
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->adjust(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "aValue"    # I
    .param p2, "aTitle"    # Ljava/lang/String;

    .prologue
    .line 1583
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->adjust(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hideNotify(I)V
    .locals 3
    .param p1, "aSubId"    # I

    .prologue
    .line 1631
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mShowBits:I

    .line 1632
    .local v0, "oldBits":I
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mShowBits:I

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mShowBits:I

    .line 1633
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mShowBits:I

    if-eq v0, v1, :cond_0

    .line 1634
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mShowBits:I

    if-eqz v1, :cond_1

    .line 1635
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mValue:I

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->getTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mTitle:Ljava/lang/String;

    .line 1636
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mValue:I

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mText:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mText:Ljava/lang/String;

    .line 1637
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mValue:I

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->getIntent(ILandroid/app/PendingIntent;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mIntent:Landroid/app/PendingIntent;

    .line 1638
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mValue:I

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->getIconId(I)I

    move-result v1

    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mIconId:I

    .line 1639
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->getFlags()I

    move-result v1

    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mFlags:I

    .line 1640
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->invokeNotify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1648
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1642
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->cancelNotify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1631
    .end local v0    # "oldBits":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hideNotifyAll()V
    .locals 1

    .prologue
    .line 1654
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mShowBits:I

    .line 1655
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->cancelNotify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1659
    monitor-exit p0

    return-void

    .line 1654
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected invokeNotify()V
    .locals 8

    .prologue
    .line 1711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1713
    .local v4, "now":J
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v2, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1714
    .local v2, "nb":Landroid/app/Notification$Builder;
    iget v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mIconId:I

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1715
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1716
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1717
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1718
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mText:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1719
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1720
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 1722
    .local v3, "notification":Landroid/app/Notification;
    iget v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mFlags:I

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 1723
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1725
    .local v1, "mgr":Landroid/app/NotificationManager;
    :try_start_0
    iget v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mNotificationId:I

    invoke-virtual {v1, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1732
    :goto_0
    return-void

    .line 1726
    :catch_0
    move-exception v0

    .line 1727
    .local v0, "err":Ljava/lang/Exception;
    const-string v6, "NotificationManager#notify() error"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setNotificationId(I)V
    .locals 0
    .param p1, "aNotificationId"    # I

    .prologue
    .line 1533
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mNotificationId:I

    .line 1534
    return-void
.end method

.method public declared-synchronized showNotify(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "aSubId"    # I
    .param p2, "aValue"    # I
    .param p3, "aTitle"    # Ljava/lang/String;
    .param p4, "aText"    # Ljava/lang/String;
    .param p5, "aIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1560
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mShowBits:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mShowBits:I

    .line 1561
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mValue:I

    .line 1562
    invoke-virtual {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->getTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mTitle:Ljava/lang/String;

    .line 1563
    invoke-virtual {p0, p2, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mText:Ljava/lang/String;

    .line 1564
    invoke-virtual {p0, p2, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->getIntent(ILandroid/app/PendingIntent;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mIntent:Landroid/app/PendingIntent;

    .line 1565
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->getIconId(I)I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mIconId:I

    .line 1566
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->mFlags:I

    .line 1567
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->invokeNotify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1571
    monitor-exit p0

    return-void

    .line 1560
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
