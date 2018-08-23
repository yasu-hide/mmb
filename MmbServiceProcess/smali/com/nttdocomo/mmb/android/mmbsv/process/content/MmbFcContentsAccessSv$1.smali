.class synthetic Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;
.super Ljava/lang/Object;
.source "MmbFcContentsAccessSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$mmb$android$MmbFcContMw$MmbFcContMwClient$MmbFcContMwReturnType:[I

.field static final synthetic $SwitchMap$mmb$android$MmbFcMfestMw$MmbFcMfestMw$MmbContentType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2094
    invoke-static {}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->values()[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcContMw$MmbFcContMwClient$MmbFcContMwReturnType:[I

    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcContMw$MmbFcContMwClient$MmbFcContMwReturnType:[I

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    :try_start_1
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcContMw$MmbFcContMwClient$MmbFcContMwReturnType:[I

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    :try_start_2
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcContMw$MmbFcContMwClient$MmbFcContMwReturnType:[I

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_MEMORY:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcContMw$MmbFcContMwClient$MmbFcContMwReturnType:[I

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    .line 2006
    :goto_3
    invoke-static {}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->values()[Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcMfestMw$MmbFcMfestMw$MmbContentType:[I

    :try_start_4
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcMfestMw$MmbFcMfestMw$MmbContentType:[I

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->BRW:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    invoke-virtual {v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcMfestMw$MmbFcMfestMw$MmbContentType:[I

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->MP4:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    invoke-virtual {v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_5
    :try_start_6
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcMfestMw$MmbFcMfestMw$MmbContentType:[I

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->OTH:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    invoke-virtual {v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    :try_start_7
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcMfestMw$MmbFcMfestMw$MmbContentType:[I

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_NOT_FOUND:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    invoke-virtual {v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_7
    :try_start_8
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcMfestMw$MmbFcMfestMw$MmbContentType:[I

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_IN_USE:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    invoke-virtual {v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_8
    :try_start_9
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcMfestMw$MmbFcMfestMw$MmbContentType:[I

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_PERIOD_UNDER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    invoke-virtual {v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcMfestMw$MmbFcMfestMw$MmbContentType:[I

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_PERIOD_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    invoke-virtual {v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_a
    :try_start_b
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcMfestMw$MmbFcMfestMw$MmbContentType:[I

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_SPAN_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    invoke-virtual {v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    :try_start_c
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcMfestMw$MmbFcMfestMw$MmbContentType:[I

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_COUNT_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    invoke-virtual {v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcMfestMw$MmbFcMfestMw$MmbContentType:[I

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ERR:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    invoke-virtual {v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_d
    return-void

    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    goto :goto_4

    .line 2094
    :catch_a
    move-exception v0

    goto/16 :goto_3

    :catch_b
    move-exception v0

    goto/16 :goto_2

    :catch_c
    move-exception v0

    goto/16 :goto_1

    :catch_d
    move-exception v0

    goto/16 :goto_0
.end method
