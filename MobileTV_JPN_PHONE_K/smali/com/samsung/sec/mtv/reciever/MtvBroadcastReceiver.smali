.class public Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtvBroadcastReceiver.java"


# static fields
.field public static final START_TIME_20SEC:I = 0x4e20

.field public static final START_TIME_5SEC:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "MtvBroadcastReciever"

.field private static mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mHandler:Landroid/os/Handler;

.field private static final mRunnableReleaseLock:Ljava/lang/Runnable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver$1;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver$1;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mRunnableReleaseLock:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mRunnableReleaseLock:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .param p0, "x0"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 49
    sput-object p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method private cancelNotification()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 783
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private checkIsCalling()Z
    .locals 4

    .prologue
    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 743
    const/4 v0, 0x1

    .line 745
    :cond_0
    const-string v1, "MtvBroadcastReciever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsCalling() + result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    return v0
.end method

.method public static releaseReservationWakeLock()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "MtvBroadcastReciever"

    const-string v1, "releaseReservationWakeLock():: "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mRunnableReleaseLock:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 68
    return-void
.end method

.method private showNotification()V
    .locals 10

    .prologue
    const v9, 0x7f0701f4

    const/4 v8, 0x0

    const v7, 0x7f0200c3

    .line 754
    const-string v4, "MtvBroadcastReciever"

    const-string v5, "showNotification called , reservation Failure case during call:: "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 756
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 757
    .local v1, "launchIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    .line 758
    .local v2, "mNotification":Landroid/app/Notification;
    invoke-direct {p0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->cancelNotification()V

    .line 759
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 760
    .local v3, "mNotificationBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 761
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 762
    const-string v4, "ACTION_DTV_RESERVATION_LIST"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 765
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 766
    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 767
    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 768
    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    const v5, 0x7f0702ba

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 769
    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 770
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 771
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 772
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 773
    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v4, :cond_0

    .line 775
    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 776
    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 778
    :cond_0
    return-void
.end method


# virtual methods
.method public isLauncherActivity()Z
    .locals 7

    .prologue
    .line 705
    iget-object v5, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 706
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 707
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    .line 708
    .local v3, "isLauncherActivity":Z
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 709
    const/4 v3, 0x0

    .line 710
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 711
    .local v1, "currentService":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.sec.mtv"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 712
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.sec.mtv.ui.conflict.MtvUiLauncher"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 713
    const/4 v3, 0x1

    .line 714
    const-string v5, "TAG"

    const-string v6, "MObileTV is running but it is MtvLuncherActivity"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .end local v1    # "currentService":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 724
    const-string v5, "MtvBroadcastReciever"

    const-string v6, "isLauncherActivity() :: Launcher Activity not present !!!"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_1
    if-eqz v3, :cond_2

    .line 728
    const-string v5, "TAG"

    const-string v6, "Good to reach here. But Get WF approved from manager!!!"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v5, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isConflictHandlerEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 731
    .end local v3    # "isLauncherActivity":Z
    :cond_2
    return v3

    .line 717
    .restart local v1    # "currentService":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v3    # "isLauncherActivity":Z
    :cond_3
    const/4 v3, 0x0

    .line 718
    const-string v5, "TAG"

    const-string v6, "MtvTop "

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 708
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isMobileTvActivityRunning()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 642
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isConflictHandlerEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 644
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v5, "runningactivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 648
    .local v1, "activityManager":Landroid/app/ActivityManager;
    const v7, 0x7fffffff

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 649
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v0, 0x0

    .line 650
    .local v0, "Mtvrunning":Z
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 651
    const/4 v0, 0x0

    .line 652
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 654
    .local v2, "currentService":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "com.samsung.sec.mtv"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 656
    const/4 v0, 0x1

    .line 657
    const-string v7, "TAG"

    const-string v10, "MtvTop "

    invoke-static {v7, v10}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .end local v2    # "currentService":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    if-ne v0, v8, :cond_2

    move v7, v8

    .line 698
    .end local v0    # "Mtvrunning":Z
    .end local v1    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "i1":I
    .end local v5    # "runningactivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_1
    return v7

    .line 660
    .restart local v0    # "Mtvrunning":Z
    .restart local v1    # "activityManager":Landroid/app/ActivityManager;
    .restart local v2    # "currentService":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v3    # "i1":I
    .restart local v5    # "runningactivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 650
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 666
    .end local v2    # "currentService":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    const-string v7, "MtvBroadcastReciever"

    const-string v8, "Mtv task not there!!!"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v9

    .line 668
    goto :goto_1

    .line 672
    .end local v0    # "Mtvrunning":Z
    .end local v1    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "i1":I
    .end local v5    # "runningactivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_3
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v7

    if-nez v7, :cond_4

    .line 674
    const-string v7, "MtvBroadcastReciever"

    const-string v8, "Current Playback Context is null ! Probably Task Entry is not cleared !"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v9

    .line 675
    goto :goto_1

    .line 677
    :cond_4
    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getCurrentInstance()Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getCurrentInstance()Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getTopListener()Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    move-result-object v7

    if-nez v7, :cond_6

    .line 679
    :cond_5
    const-string v7, "MtvBroadcastReciever"

    const-string v8, "No LiveBroadcastListener attached  ! Probably App not started yet "

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v9

    .line 680
    goto :goto_1

    .line 684
    :cond_6
    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getCurrentInstance()Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getTopListener()Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    move-result-object v4

    .line 685
    .local v4, "mTopListener":Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;
    instance-of v7, v4, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;

    if-eqz v7, :cond_7

    .line 687
    const-string v7, "MtvBroadcastReciever"

    const-string v8, "Top Listener is RecorderService  ! Proably Current Context is created by Recorder Service "

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v9

    .line 688
    goto :goto_1

    .line 690
    :cond_7
    instance-of v7, v4, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    if-nez v7, :cond_8

    instance-of v7, v4, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;

    if-eqz v7, :cond_9

    .line 692
    :cond_8
    const-string v7, "MtvBroadcastReciever"

    const-string v9, "Top Listener is MtvActivity  ! "

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 693
    goto :goto_1

    .line 697
    :cond_9
    const-string v7, "MtvBroadcastReciever"

    const-string v8, "UnRecognized Listener Found   ! "

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v9

    .line 698
    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recievedIntent"    # Landroid/content/Intent;

    .prologue
    .line 89
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 90
    const/16 v16, 0x0

    .line 91
    .local v16, "intent":Landroid/content/Intent;
    const/16 v31, -0x1

    .line 92
    .local v31, "reservationID":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    .line 93
    .local v17, "intentAction":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    .line 94
    .local v28, "myExtras":Landroid/os/Bundle;
    const-string v3, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_REMINDER"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 95
    .local v24, "isReservationReminder":Z
    const-string v3, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_START"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 96
    .local v25, "isReservationStart":Z
    const-string v3, "com.samsung.sec.mtv.DTV_ANTENNA_OPEN"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 97
    .local v20, "isAntennaOpenAction":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 98
    if-eqz v28, :cond_0

    const-string v3, "dbId"

    const/4 v4, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v31

    .line 99
    :cond_0
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reservationID  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move/from16 v0, v31

    invoke-static {v3, v0}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v32

    .line 101
    .local v32, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() Action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAllowedBy3LMPolicy()Z

    move-result v27

    .line 103
    .local v27, "mIsAllowed3LMPolicy":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v3, :cond_1

    .line 104
    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 107
    :cond_1
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    const-string v3, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/view/KeyEvent;

    .line 110
    .local v15, "event":Landroid/view/KeyEvent;
    if-nez v15, :cond_2

    .line 636
    .end local v15    # "event":Landroid/view/KeyEvent;
    :cond_2
    :goto_0
    return-void

    .line 118
    :cond_3
    if-eqz v20, :cond_7

    .line 119
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "AUTO ANTENNA BROADCAST RECEIVER."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAntennaOnOff()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/16 v22, 0x1

    .line 122
    .local v22, "isDTVAutoStarton":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isMiniModeRunning(Landroid/content/Context;)Z

    move-result v23

    .line 123
    .local v23, "isMinimodeRunning":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->isMobileTvActivityRunning()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v22, :cond_6

    if-nez v23, :cond_6

    .line 124
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isSCoverModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 125
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "KEYCODE_ISDBT_ANT_OPEN start MtvUiSViewCover"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v19, "intentSViewCover":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.sviewcover.MtvUiSViewCover"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 128
    const-string v3, "com.samsung.sec.mtv.ACTION_MTV_SVIEW_COVER_VIEW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const/high16 v3, 0x10000000

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    const-string v3, "directLaunch"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 121
    .end local v19    # "intentSViewCover":Landroid/content/Intent;
    .end local v22    # "isDTVAutoStarton":Z
    .end local v23    # "isMinimodeRunning":Z
    :cond_4
    const/16 v22, 0x0

    goto :goto_1

    .line 135
    .restart local v22    # "isDTVAutoStarton":Z
    .restart local v23    # "isMinimodeRunning":Z
    :cond_5
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "KEYCODE_ISDBT_ANT_OPEN start MtvUiPopUpActivity"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v18, "intentPopup":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 138
    const-string v3, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const/high16 v3, 0x10000000

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    const-string v3, "popup_type"

    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 146
    .end local v18    # "intentPopup":Landroid/content/Intent;
    :cond_6
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "DO NOT start DTV"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .end local v22    # "isDTVAutoStarton":Z
    .end local v23    # "isMinimodeRunning":Z
    :cond_7
    const-string v3, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_REMINDER"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_START"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 164
    :cond_8
    if-nez v32, :cond_9

    .line 165
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "onReceive() : invalid reservation ID"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_9
    if-nez v27, :cond_b

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->is3LMEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 168
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "DTV disabled by 3LM"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-eqz v3, :cond_a

    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 171
    :cond_a
    const/4 v3, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1, v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    goto/16 :goto_0

    .line 174
    :cond_b
    if-eqz v24, :cond_d

    .line 175
    move-object/from16 v0, v32

    iget-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const-wide/16 v6, 0x4e20

    sub-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_c

    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-eqz v3, :cond_10

    .line 178
    :cond_c
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "onReceive() : ACTION_MTV_RESERVATION_REMINDER-reservation start times already expired /most probably user changed system time"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_d
    move-object/from16 v0, v32

    iget-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_e

    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-eqz v3, :cond_10

    .line 187
    :cond_e
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "onReceive() : ACTION_MTV_RESERVATION_START-reservation start times already expired /most probably user changed system time"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-eqz v3, :cond_f

    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 190
    :cond_f
    const/4 v3, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1, v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    goto/16 :goto_0

    .line 198
    :cond_10
    const-string v3, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/PowerManager;

    .line 202
    .local v29, "pm":Landroid/os/PowerManager;
    sget-object v4, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mHandler:Landroid/os/Handler;

    monitor-enter v4

    .line 204
    :try_start_0
    sget-object v3, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_12

    .line 206
    const/4 v3, 0x1

    const-string v5, "MobileTV"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 207
    sget-object v3, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 208
    sget-object v3, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mHandler:Landroid/os/Handler;

    sget-object v5, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mRunnableReleaseLock:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3a98

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    const-string v3, "MtvBroadcastReciever"

    const-string v5, "Acquired PARTIAL_WAKE_LOCK"

    invoke-static {v3, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    if-nez v24, :cond_11

    if-eqz v25, :cond_15

    .line 223
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->checkIsCalling()Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 224
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "Reservation watch reminder came during call...so update the status and show the notification..: "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reservation  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/sec/mtv/provider/MtvReservation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    const/16 v4, 0xb

    move-object/from16 v0, v32

    invoke-static {v3, v0, v4}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->showNotification()V

    goto/16 :goto_0

    .line 214
    :cond_12
    :try_start_1
    const-string v3, "MtvBroadcastReciever"

    const-string v5, "Extend Already Existing PARTIAL_WAKE_LOCK"

    invoke-static {v3, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v3, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mHandler:Landroid/os/Handler;

    sget-object v5, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mRunnableReleaseLock:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    sget-object v3, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mHandler:Landroid/os/Handler;

    sget-object v5, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mRunnableReleaseLock:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3a98

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 218
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 230
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByPChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v33

    .line 232
    .local v33, "reserve_Channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v32, :cond_14

    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-nez v3, :cond_14

    if-eqz v33, :cond_14

    move-object/from16 v0, v33

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    if-eqz v3, :cond_14

    .line 234
    new-instance v2, Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    move-object/from16 v0, v32

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mLock:I

    move-object/from16 v0, v32

    iget-wide v6, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    move-object/from16 v0, v32

    iget-wide v8, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    move-object/from16 v0, v32

    iget-object v10, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v11, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmDetail:Ljava/lang/String;

    move-object/from16 v0, v32

    iget v12, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    move-object/from16 v0, v32

    iget v13, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    move-object/from16 v0, v33

    iget v14, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-direct/range {v2 .. v14}, Lcom/samsung/sec/mtv/provider/MtvReservation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;III)V

    .line 235
    .local v2, "mReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    invoke-static {v3, v2, v4}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->update(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v32

    .line 237
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After Updation:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/sec/mtv/provider/MtvReservation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v2    # "mReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_14
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reservation after updation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/sec/mtv/provider/MtvReservation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    move-object/from16 v0, v32

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-static {v3, v4, v5}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByPChannel(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v26

    .line 244
    .local v26, "mChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "old reserve   id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    if-eqz v26, :cond_18

    .line 246
    move-object/from16 v0, v26

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    if-eq v3, v4, :cond_15

    .line 248
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reservation Channel Need to change from"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  to  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, v26

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_17

    .line 251
    new-instance v2, Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-object/from16 v0, v26

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    move-object/from16 v0, v26

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    move-object/from16 v0, v32

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mLock:I

    move-object/from16 v0, v32

    iget-wide v6, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    move-object/from16 v0, v32

    iget-wide v8, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    move-object/from16 v0, v32

    iget-object v10, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v11, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmDetail:Ljava/lang/String;

    move-object/from16 v0, v32

    iget v12, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    move-object/from16 v0, v32

    iget v13, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    move-object/from16 v0, v32

    iget v14, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-direct/range {v2 .. v14}, Lcom/samsung/sec/mtv/provider/MtvReservation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;III)V

    .line 252
    .restart local v2    # "mReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    invoke-static {v3, v2, v4}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->update(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 253
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "old reserve   id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    move-object/from16 v32, v2

    .line 255
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new reserve   id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .end local v2    # "mReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .end local v26    # "mChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v33    # "reserve_Channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :cond_15
    :goto_3
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "Reservation with new implementation!!!!"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v30, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    .line 274
    .local v30, "pref":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    if-eqz v24, :cond_22

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->isMobileTvActivityRunning()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->isLauncherActivity()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 281
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "Receive reminder but conflict pop-up is showing may be due to previous reservation so need to cancel reservation (if any previously) to fail state"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "intent":Landroid/content/Intent;
    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 283
    .restart local v16    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.conflict.MtvUiLauncher"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 284
    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const v3, 0x30000004

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 287
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reminder_dbId   :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v3, "reminderDbId"

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    invoke-virtual/range {v30 .. v31}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setComingReservationID(I)V

    .line 290
    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 291
    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 292
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByReminderAlert(Z)V

    .line 293
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 294
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "Mobile Tv - Reminder -App Launcher dispatch"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_16
    :goto_4
    if-eqz v16, :cond_2

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 259
    .end local v30    # "pref":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .restart local v26    # "mChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .restart local v33    # "reserve_Channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :cond_17
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "reservation Channel cannot change as from Serivce if channel came as -1 !"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 264
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    const/16 v4, 0xa

    move-object/from16 v0, v32

    invoke-static {v3, v0, v4}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    goto/16 :goto_0

    .line 296
    .end local v26    # "mChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v33    # "reserve_Channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .restart local v30    # "pref":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    :cond_19
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsLivePlayMode()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 305
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "OnRecieve: SView is not running"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "Receive reminder but not in liveplayer activity "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "intent":Landroid/content/Intent;
    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 308
    .restart local v16    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 309
    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const v3, 0x10000004

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 312
    invoke-virtual/range {v30 .. v31}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setComingReservationID(I)V

    .line 313
    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 314
    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 315
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByReminderAlert(Z)V

    .line 316
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 317
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "Mobile Tv - Reminder -App Start dispatch"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 323
    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByReminderAlert(Z)V

    .line 324
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 325
    const/16 v21, 0x0

    .line 326
    .local v21, "isBacktoBackOutofAppReserve":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const/4 v6, 0x1

    new-array v6, v6, [Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReserveAlertFrom()I

    move-result v3

    if-nez v3, :cond_1b

    const/16 v21, 0x1

    .line 328
    :goto_5
    if-eqz v21, :cond_16

    .line 330
    invoke-virtual/range {v30 .. v31}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setComingReservationID(I)V

    goto/16 :goto_4

    .line 326
    :cond_1b
    const/16 v21, 0x0

    goto :goto_5

    .line 334
    .end local v21    # "isBacktoBackOutofAppReserve":Z
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->isMobileTvActivityRunning()Z

    move-result v3

    if-nez v3, :cond_16

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isMiniModeRunning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 338
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByReminderAlert(Z)V

    .line 339
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 340
    const/16 v21, 0x0

    .line 341
    .restart local v21    # "isBacktoBackOutofAppReserve":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const/4 v6, 0x1

    new-array v6, v6, [Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReserveAlertFrom()I

    move-result v3

    if-nez v3, :cond_1d

    const/16 v21, 0x1

    .line 343
    :goto_6
    if-eqz v21, :cond_16

    .line 344
    invoke-virtual/range {v30 .. v31}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setComingReservationID(I)V

    goto/16 :goto_4

    .line 341
    :cond_1d
    const/16 v21, 0x0

    goto :goto_6

    .line 349
    .end local v21    # "isBacktoBackOutofAppReserve":Z
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isConflictHandlerEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 351
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "intent":Landroid/content/Intent;
    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 352
    .restart local v16    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.conflict.MtvUiLauncher"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 353
    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const v3, 0x30000004

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 356
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reminder_dbId   :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v3, "reminderDbId"

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setComingReservationID(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    move-object/from16 v0, v32

    iget v6, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-static {v4, v5, v6}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findMultiChannelNoByServiceId(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByReminderAlert(Z)V

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 365
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "Mobile Tv - Reminder -App Launcher dispatch"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 369
    :cond_1f
    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v3, :cond_20

    .line 371
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "BG Recorder already running and obtained a recording reminder alarm !"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/16 v34, 0x0

    .line 375
    .local v34, "serviceIntent":Landroid/content/Intent;
    new-instance v34, Landroid/content/Intent;

    .end local v34    # "serviceIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE"

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .restart local v34    # "serviceIntent":Landroid/content/Intent;
    const-string v3, "reminderDbId"

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    const-string v3, "COMMAND_KEY"

    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 381
    .end local v34    # "serviceIntent":Landroid/content/Intent;
    :cond_20
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isSCoverModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 382
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "obtained a watch reminder alarm when SviewCoverClosed and MobileTv is not running"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {v30 .. v31}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setComingReservationID(I)V

    .line 384
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByReminderAlert(Z)V

    .line 385
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 386
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 387
    .restart local v19    # "intentSViewCover":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.sviewcover.MtvUiSViewCover"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 388
    const-string v3, "com.samsung.sec.mtv.ACTION_MTV_SVIEW_COVER_VIEW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const/high16 v3, 0x10000000

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 390
    const-string v3, "directLaunch"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    const-string v3, "reminderDbId"

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reminder_dbId   :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 398
    .end local v19    # "intentSViewCover":Landroid/content/Intent;
    :cond_21
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "obtained a watch reminder alarm !"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {v30 .. v31}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setComingReservationID(I)V

    .line 400
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByReminderAlert(Z)V

    .line 401
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 407
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "intent":Landroid/content/Intent;
    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 408
    .restart local v16    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 409
    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const v3, 0x10000004

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 412
    const-string v3, "reminderDbId"

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "Mobile Tv - Reminder -App Launcher dispatch"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reminder_dbId   :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 438
    :cond_22
    if-nez v24, :cond_16

    .line 440
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->checkIsCalling()Z

    move-result v3

    if-eqz v3, :cond_23

    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_23

    .line 441
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "Reservation watch is about start during call...so update the status and show the notification..: "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reservation  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/sec/mtv/provider/MtvReservation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    const/16 v4, 0xb

    move-object/from16 v0, v32

    invoke-static {v3, v0, v4}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->showNotification()V

    goto/16 :goto_0

    .line 447
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->isMobileTvActivityRunning()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsLivePlayMode()Z

    move-result v3

    if-nez v3, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isMiniModeRunning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 449
    :cond_25
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "intent":Landroid/content/Intent;
    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 450
    .restart local v16    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getIsNowOnAirReservation()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 451
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setIsNowOnAirReservation(Z)V

    .line 452
    const-string v3, "dbId"

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    const-string v3, "youNeedToShowAlert"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    const-string v3, "startingForReservation"

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    const v3, 0x14000004

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 456
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 459
    :cond_26
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 460
    const-string v3, "dbId"

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    const-string v3, "popup_type"

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    const v3, 0x14000004

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 464
    const/16 v21, 0x0

    .line 468
    .restart local v21    # "isBacktoBackOutofAppReserve":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const/4 v6, 0x1

    new-array v6, v6, [Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReserveAlertFrom()I

    move-result v3

    if-nez v3, :cond_28

    const/16 v21, 0x1

    .line 470
    :goto_7
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByReminderAlert()Z

    move-result v3

    if-nez v3, :cond_27

    if-eqz v21, :cond_29

    .line 471
    :cond_27
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBacktoBackOutofAppReserve? :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservAlertFrom(I)V

    .line 478
    :goto_8
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByReminderAlert(Z)V

    .line 479
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 480
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "Mobile Tv - Start -user Alert"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 468
    :cond_28
    const/16 v21, 0x0

    goto :goto_7

    .line 476
    :cond_29
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservAlertFrom(I)V

    goto :goto_8

    .line 483
    .end local v21    # "isBacktoBackOutofAppReserve":Z
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->isMobileTvActivityRunning()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsLivePlayMode()Z

    move-result v3

    if-nez v3, :cond_30

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->isLauncherActivity()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 488
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "IN Time OF Reminder MobileTV is on But Launcher Activity is running"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "intent":Landroid/content/Intent;
    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 490
    .restart local v16    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.conflict.MtvUiLauncher"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 491
    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const v3, 0x30000004

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 494
    const-string v3, "dbId"

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    const-string v3, "youNeedToShowAlert"

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 496
    new-instance v30, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .end local v30    # "pref":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    .line 497
    .restart local v30    # "pref":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 498
    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 499
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByReminderAlert(Z)V

    .line 500
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 501
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservAlertFrom(I)V

    goto/16 :goto_4

    .line 503
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewRunning()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 504
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "intent":Landroid/content/Intent;
    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 505
    .restart local v16    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 506
    const-string v3, "dbId"

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    const-string v3, "popup_type"

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    const v3, 0x10000004

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 510
    const/16 v21, 0x0

    .line 514
    .restart local v21    # "isBacktoBackOutofAppReserve":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const/4 v6, 0x1

    new-array v6, v6, [Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReserveAlertFrom()I

    move-result v3

    if-nez v3, :cond_2d

    const/16 v21, 0x1

    .line 516
    :goto_9
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByReminderAlert()Z

    move-result v3

    if-nez v3, :cond_2c

    if-eqz v21, :cond_2e

    .line 517
    :cond_2c
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBacktoBackOutofAppReserve? :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservAlertFrom(I)V

    .line 524
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByReminderAlert(Z)V

    .line 525
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 526
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "Mobile Tv - Start -user Alert SRIKANTH"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 514
    :cond_2d
    const/16 v21, 0x0

    goto :goto_9

    .line 522
    :cond_2e
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservAlertFrom(I)V

    goto :goto_a

    .line 530
    .end local v21    # "isBacktoBackOutofAppReserve":Z
    :cond_2f
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "MobileTv reservation START but app is not in Live Activity !"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "intent":Landroid/content/Intent;
    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 532
    .restart local v16    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 533
    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const v3, 0x10000004

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 536
    const-string v3, "dbId"

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    const-string v3, "youNeedToShowAlert"

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 538
    new-instance v30, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .end local v30    # "pref":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    .line 539
    .restart local v30    # "pref":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 540
    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 541
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByReminderAlert(Z)V

    .line 542
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 543
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservAlertFrom(I)V

    goto/16 :goto_4

    .line 547
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->isMobileTvActivityRunning()Z

    move-result v3

    if-nez v3, :cond_16

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isConflictHandlerEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 551
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "intent":Landroid/content/Intent;
    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 552
    .restart local v16    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.conflict.MtvUiLauncher"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 553
    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const v3, 0x30000004

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 556
    const-string v3, "MtvBroadcastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dbId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v3, "dbId"

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setComingReservationID(I)V

    .line 559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 562
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    move-object/from16 v0, v32

    iget v6, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-static {v4, v5, v6}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findMultiChannelNoByServiceId(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByReminderAlert(Z)V

    .line 564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 565
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "Mobile Tv -App Start dispatch"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 569
    :cond_31
    move-object/from16 v0, v32

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v3, :cond_32

    .line 571
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "BG Recorder already running and obtained a recording start alarm !"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const/16 v34, 0x0

    .line 575
    .restart local v34    # "serviceIntent":Landroid/content/Intent;
    new-instance v34, Landroid/content/Intent;

    .end local v34    # "serviceIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE"

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .restart local v34    # "serviceIntent":Landroid/content/Intent;
    const-string v3, "dbId"

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 577
    const-string v3, "COMMAND_KEY"

    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 583
    .end local v34    # "serviceIntent":Landroid/content/Intent;
    :cond_32
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "obtained a watch start alarm !"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {v30 .. v31}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setComingReservationID(I)V

    .line 585
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByReminderAlert(Z)V

    .line 586
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLaunchAntennaAlert(Z)V

    .line 587
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservAlertFrom(I)V

    .line 588
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "intent":Landroid/content/Intent;
    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 589
    .restart local v16    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.sec.mtv"

    const-string v5, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 590
    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const v3, 0x10000004

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 593
    const-string v3, "dbId"

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "Mobile Tv -App Start dispatch"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 621
    .end local v29    # "pm":Landroid/os/PowerManager;
    .end local v30    # "pref":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    :cond_33
    const-string v3, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_END"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 622
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "onReceive() reservation end ,not handling it here- let service reciver service this"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 623
    :cond_34
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 624
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "BOOT COMPLETED Update the status for reservation"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->setReservationOnBoot(Landroid/content/Context;)V

    .line 626
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "BOOT COMPLETED Starting the Core MTV services..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 629
    :cond_35
    const-string v3, "android.intent.action.MEDIA_EJECT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 632
    :cond_36
    const-string v3, "MtvBroadcastReciever"

    const-string v4, "Change in SD Card status detected...Updating DB now"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE_UPDATE_DB"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method
