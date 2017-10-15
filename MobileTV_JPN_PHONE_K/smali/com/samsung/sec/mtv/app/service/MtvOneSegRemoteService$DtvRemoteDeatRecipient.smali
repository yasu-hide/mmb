.class Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$DtvRemoteDeatRecipient;
.super Ljava/lang/Object;
.source "MtvOneSegRemoteService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DtvRemoteDeatRecipient"
.end annotation


# instance fields
.field private mClientMessenger:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;


# direct methods
.method protected constructor <init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;Landroid/os/Messenger;)V
    .locals 3
    .param p2, "myClientMessenger"    # Landroid/os/Messenger;

    .prologue
    .line 2117
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$DtvRemoteDeatRecipient;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$DtvRemoteDeatRecipient;->mClientMessenger:Landroid/os/Messenger;

    .line 2118
    iput-object p2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$DtvRemoteDeatRecipient;->mClientMessenger:Landroid/os/Messenger;

    .line 2119
    const-string v0, "MtvOneSegRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClientMessenger is.... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$DtvRemoteDeatRecipient;->mClientMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2123
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "client :: binderDied"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2126
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "Background Recording was going on...Cancelling Record!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    invoke-static {v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$2002(Z)Z

    .line 2128
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->cancelRecord()Z

    .line 2130
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "Powering off tuner now as BG recorder has died!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    const/16 v0, 0x7d

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendUrgentSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 2132
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "Calling RecClose to turn off tuner!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$DtvRemoteDeatRecipient;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->recClose()Z

    .line 2135
    :cond_0
    return-void
.end method
