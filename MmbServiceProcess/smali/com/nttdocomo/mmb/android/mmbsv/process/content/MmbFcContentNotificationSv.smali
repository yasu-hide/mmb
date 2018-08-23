.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
.super Ljava/lang/Object;
.source "MmbFcContentNotificationSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcContSvNoticeType;
    }
.end annotation


# static fields
.field static final NOTIFICATION_ID_INVALID_CRID:Ljava/lang/String;

.field public static fcNotificationIdCountUp:I


# instance fields
.field private final fcNotificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSignalLevelId:I

.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->NOTIFICATION_ID_INVALID_CRID:Ljava/lang/String;

    .line 202
    const/high16 v0, 0x100000

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationIdCountUp:I

    return-void
.end method

.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)V
    .locals 1
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aContentsModule"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mLastSignalLevelId:I

    .line 1847
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationMap:Ljava/util/Map;

    .line 328
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 332
    return-void
.end method

.method static synthetic access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    return-object v0
.end method

.method private broadcastContentListUpdated(Ljava/lang/String;I)V
    .locals 16
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aStatus"    # I

    .prologue
    .line 1091
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v11

    .line 1092
    .local v11, "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isMmbiMode()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1094
    new-instance v9, Landroid/content/Intent;

    const-string v13, "com.nttdocomo.mmb.android.mmbsv.common.event.FC_CONTENTS_BROADCAST"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v9, "intent":Landroid/content/Intent;
    const-string v13, "INTENT_FC_CRID"

    move-object/from16 v0, p1

    invoke-virtual {v9, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    const-string v13, "INTENT_FC_STATUS"

    move/from16 v0, p2

    invoke-virtual {v9, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1098
    const/4 v10, 0x0

    .line 1099
    .local v10, "parentalCode":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 1100
    .local v4, "availStart":J
    const-wide v2, 0x7fffffffffffffffL

    .line 1101
    .local v2, "availEnd":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v12

    .line 1102
    .local v12, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const/4 v6, 0x0

    .line 1105
    .local v6, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsFromMeta(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 1114
    :goto_0
    if-nez v6, :cond_2

    .line 1140
    :cond_0
    :goto_1
    const-string v13, "INTENT_FC_PARENTAL"

    invoke-virtual {v9, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1141
    const-string v13, "INTENT_FC_PERIOD_AVAIL_START"

    invoke-virtual {v9, v13, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1142
    const-string v13, "INTENT_FC_PERIOD_AVAIL_END"

    invoke-virtual {v9, v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v13, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    .line 1154
    .end local v2    # "availEnd":J
    .end local v4    # "availStart":J
    .end local v6    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "parentalCode":Ljava/lang/String;
    .end local v12    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :cond_1
    return-void

    .line 1106
    .restart local v2    # "availEnd":J
    .restart local v4    # "availStart":J
    .restart local v6    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "parentalCode":Ljava/lang/String;
    .restart local v12    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :catch_0
    move-exception v7

    .line 1107
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1108
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v7

    .line 1109
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1110
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v7

    .line 1111
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1119
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_2
    iget-object v13, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    if-eqz v13, :cond_3

    .line 1120
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v13, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    array-length v13, v13

    if-ge v8, v13, :cond_3

    .line 1121
    iget-object v13, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v13, v13, v8

    if-eqz v13, :cond_4

    iget-object v13, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v13, v13, v8

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    if-eqz v13, :cond_4

    iget-object v13, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v13, v13, v8

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    const-string v14, "availability"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1125
    iget-object v13, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v13, v13, v8

    iget-wide v4, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->start:J

    .line 1126
    iget-object v13, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v13, v13, v8

    iget-wide v2, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->end:J

    .line 1131
    .end local v8    # "i":I
    :cond_3
    iget-object v13, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-eqz v13, :cond_0

    .line 1136
    iget-object v13, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v10, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->parentalGuidance:Ljava/lang/String;

    goto :goto_1

    .line 1120
    .restart local v8    # "i":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private cancelDownloadProgressNotify(ILjava/lang/String;)V
    .locals 9
    .param p1, "aId"    # I
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 1969
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.nttdocomo.mmb.android.mmbsv.ACTION_NOTIFICATION_BROADCAST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1972
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "id"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1975
    const-string v3, "crid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1978
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v1

    .line 1980
    .local v1, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1982
    .local v0, "contentTitle":Ljava/lang/String;
    const-string v3, "contentTitle"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1985
    const-string v3, "type"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1988
    const-string v3, "reason"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1991
    const-string v3, "errState"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1994
    const-string v3, "[[Intent]:%s [Unique ID]:%d [Crid]:%s [Title]:%s [Type]:%d [Reason]:%x [ErrState]:%d]"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "com.nttdocomo.mmb.android.mmbsv.ACTION_NOTIFICATION_BROADCAST"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    aput-object v0, v4, v8

    const/4 v5, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2004
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    .line 2018
    return-void
.end method

.method private getComplementProgressReason(I)I
    .locals 5
    .param p1, "aId"    # I

    .prologue
    .line 2037
    const/4 v0, 0x0

    .line 2040
    .local v0, "reasonType":I
    packed-switch p1, :pswitch_data_0

    .line 2093
    :pswitch_0
    const-string v1, "Invalid Reason Type %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2094
    const/4 v0, 0x0

    .line 2101
    :goto_0
    return v0

    .line 2042
    :pswitch_1
    const/16 v0, 0x50

    .line 2043
    goto :goto_0

    .line 2045
    :pswitch_2
    const/16 v0, 0x51

    .line 2046
    goto :goto_0

    .line 2048
    :pswitch_3
    const/16 v0, 0x52

    .line 2049
    goto :goto_0

    .line 2051
    :pswitch_4
    const/16 v0, 0x53

    .line 2052
    goto :goto_0

    .line 2054
    :pswitch_5
    const/16 v0, 0x54

    .line 2055
    goto :goto_0

    .line 2057
    :pswitch_6
    const/16 v0, 0x55

    .line 2058
    goto :goto_0

    .line 2060
    :pswitch_7
    const/16 v0, 0x56

    .line 2061
    goto :goto_0

    .line 2063
    :pswitch_8
    const/16 v0, 0x57

    .line 2064
    goto :goto_0

    .line 2066
    :pswitch_9
    const/16 v0, 0x58

    .line 2067
    goto :goto_0

    .line 2069
    :pswitch_a
    const/16 v0, 0x59

    .line 2070
    goto :goto_0

    .line 2072
    :pswitch_b
    const/16 v0, 0x5a

    .line 2073
    goto :goto_0

    .line 2075
    :pswitch_c
    const/16 v0, 0x5b

    .line 2076
    goto :goto_0

    .line 2078
    :pswitch_d
    const/16 v0, 0x5c

    .line 2079
    goto :goto_0

    .line 2081
    :pswitch_e
    const/16 v0, 0x5d

    .line 2082
    goto :goto_0

    .line 2084
    :pswitch_f
    const/16 v0, 0x5e

    .line 2085
    goto :goto_0

    .line 2087
    :pswitch_10
    const/16 v0, 0x5f

    .line 2088
    goto :goto_0

    .line 2090
    :pswitch_11
    const/16 v0, 0x60

    .line 2091
    goto :goto_0

    .line 2040
    :pswitch_data_0
    .packed-switch 0x7f040014
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private getDownloadMmbFcContSvNoticeType(Ljava/lang/String;)I
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 617
    const/4 v3, 0x0

    .line 618
    .local v3, "noticeType":I
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v0

    .line 620
    .local v0, "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    const/4 v6, 0x4

    .line 621
    .local v6, "scheduleType":I
    const/4 v5, 0x0

    .line 623
    .local v5, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :try_start_0
    invoke-virtual {v0, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 632
    if-nez v5, :cond_1

    .line 634
    const-string v8, "Get schedule error"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    move v4, v3

    .line 658
    .end local v3    # "noticeType":I
    .local v4, "noticeType":I
    :goto_1
    return v4

    .line 624
    .end local v4    # "noticeType":I
    .restart local v3    # "noticeType":I
    :catch_0
    move-exception v2

    .line 625
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v3

    .line 629
    .end local v3    # "noticeType":I
    .restart local v4    # "noticeType":I
    goto :goto_1

    .line 636
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v4    # "noticeType":I
    .restart local v3    # "noticeType":I
    :cond_1
    iget v1, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    .line 637
    .local v1, "downloadType":I
    iget v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 638
    .local v7, "work1":I
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 646
    :pswitch_1
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 647
    const/4 v3, 0x4

    goto :goto_0

    .line 640
    :pswitch_2
    const/4 v3, 0x2

    .line 641
    goto :goto_0

    .line 643
    :pswitch_3
    const/4 v3, 0x1

    .line 644
    goto :goto_0

    .line 648
    :cond_2
    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 649
    const/4 v3, 0x3

    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getHandler(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1907
    const/4 v1, 0x0

    .line 1908
    .local v1, "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationMap:Ljava/util/Map;

    monitor-enter v4

    .line 1909
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;

    move-object v1, v0

    .line 1911
    if-nez v1, :cond_0

    .line 1912
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;

    invoke-direct {v2, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1913
    .end local v1    # "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    .local v2, "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 1915
    .end local v2    # "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    .restart local v1    # "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    :cond_0
    :try_start_2
    monitor-exit v4

    .line 1920
    return-object v1

    .line 1915
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1    # "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    .restart local v2    # "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    .restart local v1    # "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    goto :goto_0
.end method

.method private getSignalLevelId(I)I
    .locals 3
    .param p1, "aLevel"    # I

    .prologue
    .line 750
    packed-switch p1, :pswitch_data_0

    .line 768
    const-string v0, "MmbFwParameterSv error"

    .line 769
    .local v0, "errMsg":Ljava/lang/String;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 753
    .end local v0    # "errMsg":Ljava/lang/String;
    :pswitch_0
    const/4 v1, 0x4

    .line 775
    .local v1, "signalClass":I
    :goto_0
    return v1

    .line 756
    .end local v1    # "signalClass":I
    :pswitch_1
    const/4 v1, 0x3

    .line 757
    .restart local v1    # "signalClass":I
    goto :goto_0

    .line 759
    .end local v1    # "signalClass":I
    :pswitch_2
    const/4 v1, 0x2

    .line 760
    .restart local v1    # "signalClass":I
    goto :goto_0

    .line 762
    .end local v1    # "signalClass":I
    :pswitch_3
    const/4 v1, 0x1

    .line 763
    .restart local v1    # "signalClass":I
    goto :goto_0

    .line 765
    .end local v1    # "signalClass":I
    :pswitch_4
    const/4 v1, 0x0

    .line 766
    .restart local v1    # "signalClass":I
    goto :goto_0

    .line 750
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateSingalIcon(IZ)V
    .locals 7
    .param p1, "aIconId"    # I
    .param p2, "aOnOff"    # Z

    .prologue
    .line 797
    const v1, 0x10002

    .line 798
    .local v1, "noticeMode":I
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move v2, p2

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 802
    return-void
.end method


# virtual methods
.method broadcastContentAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1036
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->broadcastContentListUpdated(Ljava/lang/String;I)V

    .line 1041
    return-void
.end method

.method broadcastContentRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1062
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->broadcastContentListUpdated(Ljava/lang/String;I)V

    .line 1067
    return-void
.end method

.method checkNotificationStatus()V
    .locals 10

    .prologue
    const/high16 v9, 0x100000

    const/4 v8, 0x0

    .line 352
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "mmbFcContents"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 355
    .local v5, "pref":Landroid/content/SharedPreferences;
    const-string v6, "mmbFcNotificationId"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 356
    .local v2, "id":I
    if-ge v2, v9, :cond_1

    .line 357
    sput v9, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationIdCountUp:I

    .line 363
    :goto_0
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_1
    const/4 v6, 0x5

    if-gt v3, v6, :cond_2

    .line 364
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mmbFcDownloadNotificationId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 367
    .local v4, "noticeid":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mmbFcDownloadCrid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->NOTIFICATION_ID_INVALID_CRID:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "crid":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 371
    invoke-direct {p0, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->cancelDownloadProgressNotify(ILjava/lang/String;)V

    .line 372
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 373
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mmbFcDownloadNotificationId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 375
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mmbFcDownloadCrid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->NOTIFICATION_ID_INVALID_CRID:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 377
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 359
    .end local v0    # "crid":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "noticeid":I
    :cond_1
    sput v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationIdCountUp:I

    goto :goto_0

    .line 380
    .restart local v3    # "index":I
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "DownloadProgressNotify remove err [%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method cleanUpNotificationMap()V
    .locals 2

    .prologue
    .line 1940
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationMap:Ljava/util/Map;

    monitor-enter v1

    .line 1941
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->fcNotificationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1942
    monitor-exit v1

    .line 1947
    return-void

    .line 1942
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method notifyComplementProgress(Ljava/lang/String;I)V
    .locals 12
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aId"    # I

    .prologue
    .line 1207
    const-string v8, "notifyComplementProgress crid:%s  aId:%d str:%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v11, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1209
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v7

    .line 1210
    .local v7, "state":I
    const/4 v8, 0x4

    if-ne v8, v7, :cond_0

    .line 1306
    :goto_0
    return-void

    .line 1220
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.nttdocomo.mmb.android.mmbsv.ACTION_NOTIFICATION_BROADCAST"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1223
    .local v5, "intent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->getHandler(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;

    move-result-object v3

    .line 1226
    .local v3, "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    const-string v8, "id"

    iget v9, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mNotificationId:I

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1229
    const-string v8, "crid"

    invoke-virtual {v5, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1232
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v1

    .line 1234
    .local v1, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1236
    .local v0, "contentTitle":Ljava/lang/String;
    const-string v8, "contentTitle"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1240
    const-string v8, "type"

    const/4 v9, 0x5

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1243
    const/4 v2, 0x0

    .line 1245
    .local v2, "errState":I
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getComplementFailedHttpStatus(Ljava/lang/String;)I

    move-result v4

    .line 1246
    .local v4, "httpStatus":I
    if-ltz v4, :cond_1

    const v8, 0x7f04001c

    if-ne v8, p2, :cond_1

    .line 1247
    const p2, 0x7f04001d

    .line 1248
    move v2, v4

    .line 1251
    :cond_1
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->getComplementProgressReason(I)I

    move-result v6

    .line 1254
    .local v6, "reasonType":I
    const-string v8, "reason"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1257
    const-string v8, "errState"

    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1260
    const-string v8, "[[Intent]:%s [Unique ID]:%d [Crid]:%s [Title]:%s [Type]:%d [Reason]:%x [ErrState]:%d]"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "com.nttdocomo.mmb.android.mmbsv.ACTION_NOTIFICATION_BROADCAST"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mNotificationId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p1, v9, v10

    const/4 v10, 0x3

    aput-object v0, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1270
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method notifyDownloadFailedNotice(Ljava/lang/String;IZ)V
    .locals 9
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aId"    # I
    .param p3, "aIntentFlg"    # Z

    .prologue
    const/4 v8, 0x1

    .line 1329
    const-string v5, "Notify Download Failed crid:%s"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1331
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 1332
    .local v0, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v2

    .line 1333
    .local v2, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v1

    .line 1335
    .local v1, "contentNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    const/4 v4, 0x0

    .line 1338
    .local v4, "lastBroadcast":Z
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkLastBroadcastDownload(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1345
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getLastSchduleStateMap(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1347
    invoke-virtual {p0, p1, p2, p3, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadFailedNotice(Ljava/lang/String;IZZ)V

    .line 1354
    :goto_1
    return-void

    .line 1339
    :catch_0
    move-exception v3

    .line 1340
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1341
    const/4 v4, 0x1

    goto :goto_0

    .line 1349
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_0
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadProgressOff(Ljava/lang/String;)V

    goto :goto_1
.end method

.method notifyDownloadFailedNotice(Ljava/lang/String;IZZ)V
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aId"    # I
    .param p3, "aIntentFlg"    # Z
    .param p4, "aDeleteFlg"    # Z

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 1425
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.nttdocomo.mmb.android.mmbsv.ACTION_NOTIFICATION_BROADCAST"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1428
    .local v3, "intent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->getHandler(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;

    move-result-object v2

    .line 1431
    .local v2, "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    const-string v4, "id"

    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mNotificationId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1434
    const-string v4, "crid"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1437
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v1

    .line 1439
    .local v1, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1441
    .local v0, "contentTitle":Ljava/lang/String;
    const-string v4, "contentTitle"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1444
    const-string v4, "type"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1447
    const-string v4, "reason"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1450
    const-string v4, "errState"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1453
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;)V

    .line 1456
    const-string v4, "[[Intent]:%s [Unique ID]:%d [Crid]:%s [Title]:%s [Type]:%d [Reason]:%x [ErrState]:%d]"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "com.nttdocomo.mmb.android.mmbsv.ACTION_NOTIFICATION_BROADCAST"

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget v7, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mNotificationId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1466
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    .line 1512
    return-void
.end method

.method notifyDownloadFailedNoticeToWakeup(Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aId"    # I
    .param p3, "aIntentFlg"    # Z

    .prologue
    const/4 v7, 0x1

    .line 1376
    const-string v4, "Notify Download Failed To Wake up crid:%s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1378
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 1379
    .local v0, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v1

    .line 1381
    .local v1, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const/4 v3, 0x0

    .line 1384
    .local v3, "lastBroadcast":Z
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkLastBroadcastDownload(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1391
    :goto_0
    if-eqz v3, :cond_0

    .line 1392
    invoke-virtual {p0, p1, p2, p3, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadFailedNotice(Ljava/lang/String;IZZ)V

    .line 1397
    :cond_0
    return-void

    .line 1385
    :catch_0
    move-exception v2

    .line 1386
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1387
    const/4 v3, 0x1

    goto :goto_0
.end method

.method notifyDownloadProgressOff(Ljava/lang/String;)V
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 960
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.nttdocomo.mmb.android.mmbsv.ACTION_NOTIFICATION_BROADCAST"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 963
    .local v3, "intent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->getHandler(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;

    move-result-object v2

    .line 966
    .local v2, "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    const-string v4, "id"

    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mNotificationId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 969
    const-string v4, "crid"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v1

    .line 974
    .local v1, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 976
    .local v0, "contentTitle":Ljava/lang/String;
    const-string v4, "contentTitle"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    const-string v4, "type"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    const-string v4, "reason"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 985
    const-string v4, "errState"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 988
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;)V

    .line 991
    const-string v4, "[[Intent]:%s [Unique ID]:%d [Crid]:%s [Title]:%s [Type]:%d [Reason]:%x [ErrState]:%d]"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "com.nttdocomo.mmb.android.mmbsv.ACTION_NOTIFICATION_BROADCAST"

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget v7, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mNotificationId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    aput-object v0, v5, v9

    const/4 v6, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1001
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    .line 1015
    return-void
.end method

.method notifyDownloadStart(Ljava/lang/String;)V
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 826
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.nttdocomo.mmb.android.mmbsv.ACTION_NOTIFICATION_BROADCAST"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .local v3, "intent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->getHandler(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;

    move-result-object v2

    .line 832
    .local v2, "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    const-string v4, "id"

    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mNotificationId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 835
    const-string v4, "crid"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v1

    .line 840
    .local v1, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "contentTitle":Ljava/lang/String;
    const-string v4, "contentTitle"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const-string v4, "type"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 848
    const-string v4, "reason"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 851
    const-string v4, "errState"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 854
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;)V

    .line 857
    const-string v4, "[[Intent]:%s [Unique ID]:%d [Crid]:%s [Title]:%s [Type]:%d [Reason]:%x [ErrState]:%d]"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "com.nttdocomo.mmb.android.mmbsv.ACTION_NOTIFICATION_BROADCAST"

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget v7, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mNotificationId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object p1, v5, v9

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const/4 v6, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    .line 892
    return-void
.end method

.method notifyOpenStarted(Ljava/lang/String;)V
    .locals 13
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 408
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->getDownloadMmbFcContSvNoticeType(Ljava/lang/String;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 410
    :pswitch_0
    const-string v0, "com.nttdocomo.mmb.android.mmbsv.ACTION_CONTENT_PUBLISHED"

    .line 425
    :goto_1
    :pswitch_1
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    .line 426
    .local v1, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->checkPlayed(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 436
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.nttdocomo.mmb.android.mmbsv.ACTION_NOTIFICATION_BROADCAST"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v6, "intent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->getHandler(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;

    move-result-object v5

    .line 442
    .local v5, "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    const-string v7, "id"

    iget v8, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mNotificationId:I

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    const-string v7, "crid"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v3

    .line 450
    .local v3, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "contentTitle":Ljava/lang/String;
    const-string v7, "contentTitle"

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v7, "type"

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    const-string v7, "reason"

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    const-string v7, "errState"

    invoke-virtual {v6, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    const-string v7, "[[Intent]:%s [Unique ID]:%d [Crid]:%s [Title]:%s [Type]:%d [Reason]:%x [ErrState]:%d]"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "com.nttdocomo.mmb.android.mmbsv.ACTION_NOTIFICATION_BROADCAST"

    aput-object v9, v8, v12

    iget v9, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;->mNotificationId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    aput-object p1, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const/4 v9, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mOpenStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;

    if-eqz v7, :cond_0

    .line 499
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mOpenStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;

    invoke-interface {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;->onOpenStateChange(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 500
    :catch_0
    move-exception v4

    .line 501
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "%s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v12

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 413
    .end local v1    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v2    # "contentTitle":Ljava/lang/String;
    .end local v3    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv$MmbFcNotificationHandlerSv;
    .end local v6    # "intent":Landroid/content/Intent;
    :pswitch_2
    const-string v0, "com.nttdocomo.mmb.android.mmbsv.ACTION_RECOMMENDED_CONTENT_PUBLISHED"

    .line 414
    .local v0, "action":Ljava/lang/String;
    goto/16 :goto_1

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method notifySignalLevel(I)V
    .locals 6
    .param p1, "aSignalLevel"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 681
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->getSignalLevelId(I)I

    move-result v1

    .line 683
    .local v1, "picId":I
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mLastSignalLevelId:I

    if-eq v1, v2, :cond_0

    .line 684
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->updateSingalIcon(IZ)V

    .line 686
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mLastSignalLevelId:I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .end local v1    # "picId":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    if-eqz v2, :cond_1

    .line 694
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    invoke-interface {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;->onBroadcastLevelChange(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 703
    :cond_1
    :goto_1
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v2, "%s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 696
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "%s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method notifySignalLevelOff()V
    .locals 2

    .prologue
    .line 724
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mLastSignalLevelId:I

    .line 725
    .local v0, "picId":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->updateSingalIcon(IZ)V

    .line 726
    const/4 v1, -0x1

    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->mLastSignalLevelId:I

    .line 731
    return-void
.end method
