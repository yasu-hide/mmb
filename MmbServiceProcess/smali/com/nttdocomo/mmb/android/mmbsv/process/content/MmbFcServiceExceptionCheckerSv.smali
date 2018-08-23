.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
.super Ljava/lang/Object;
.source "MmbFcServiceExceptionCheckerSv.java"


# instance fields
.field private mServiceArgumentException:Z

.field private mServiceBatteryException:Z

.field private mServiceDoubleBookingException:Z

.field private mServiceFatalException:Z

.field private mServiceIOException:Z

.field private mServiceInternalException:Z

.field private mServiceReserveMaxException:Z

.field private mServiceStateException:Z

.field private mServiceUnmatchException:Z


# direct methods
.method constructor <init>([Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "aTargetExceptionList":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceArgumentException:Z

    .line 49
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceBatteryException:Z

    .line 50
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceDoubleBookingException:Z

    .line 51
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceInternalException:Z

    .line 52
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceIOException:Z

    .line 53
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceReserveMaxException:Z

    .line 54
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceStateException:Z

    .line 55
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceUnmatchException:Z

    .line 56
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceFatalException:Z

    .line 77
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_9

    aget-object v3, v0, v1

    .line 81
    .local v3, "targetException":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceArgumentException:Z

    .line 77
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceBatteryException:Z

    goto :goto_1

    .line 85
    :cond_2
    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceDoubleBookingException:Z

    goto :goto_1

    .line 87
    :cond_3
    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 88
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceInternalException:Z

    goto :goto_1

    .line 89
    :cond_4
    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 90
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceIOException:Z

    goto :goto_1

    .line 91
    :cond_5
    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 92
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceReserveMaxException:Z

    goto :goto_1

    .line 93
    :cond_6
    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 94
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceStateException:Z

    goto :goto_1

    .line 95
    :cond_7
    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 96
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceUnmatchException:Z

    goto :goto_1

    .line 97
    :cond_8
    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceFatalException:Z

    goto :goto_1

    .line 104
    .end local v3    # "targetException":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    return-void
.end method


# virtual methods
.method checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V
    .locals 1
    .param p1, "aErr"    # Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;

    .prologue
    .line 123
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 124
    instance-of v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceArgumentException:Z

    if-eqz v0, :cond_0

    .line 125
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :catchall_0
    move-exception v0

    throw v0

    .line 126
    :cond_0
    :try_start_1
    instance-of v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceInternalException:Z

    if-eqz v0, :cond_1

    .line 127
    throw p1

    .line 128
    :cond_1
    instance-of v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceIOException:Z

    if-eqz v0, :cond_2

    .line 129
    throw p1

    .line 130
    :cond_2
    instance-of v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceStateException:Z

    if-eqz v0, :cond_3

    .line 131
    throw p1

    .line 132
    :cond_3
    instance-of v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceBatteryException:Z

    if-eqz v0, :cond_4

    .line 133
    throw p1

    .line 134
    :cond_4
    instance-of v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceDoubleBookingException:Z

    if-eqz v0, :cond_5

    .line 135
    throw p1

    .line 136
    :cond_5
    instance-of v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceReserveMaxException:Z

    if-eqz v0, :cond_6

    .line 137
    throw p1

    .line 138
    :cond_6
    instance-of v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceUnmatchException:Z

    if-eqz v0, :cond_7

    .line 139
    throw p1

    .line 140
    :cond_7
    instance-of v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceFatalException:Z

    if-eqz v0, :cond_8

    .line 141
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 143
    :cond_8
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TargetExceptionChecker [mServiceArgumentException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceArgumentException:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceBatteryException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceBatteryException:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceDoubleBookingException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceDoubleBookingException:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceInternalException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceInternalException:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceIOException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceIOException:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceReserveMaxException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceReserveMaxException:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceStateException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceStateException:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceUnmatchException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceUnmatchException:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceFatalException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->mServiceFatalException:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
