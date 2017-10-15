.class Landroid/broadcast/oneseg/MtvOneSegService$1;
.super Ljava/lang/Object;
.source "MtvOneSegService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/broadcast/oneseg/MtvOneSegService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/broadcast/oneseg/MtvOneSegService;


# direct methods
.method constructor <init>(Landroid/broadcast/oneseg/MtvOneSegService;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Landroid/broadcast/oneseg/MtvOneSegService$1;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 203
    const-string v3, "MtvOneSegService"

    const-string v4, "MtvOneSegRemoteService is now Connected"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    sput-object v3, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    .line 206
    const/4 v3, 0x0

    const/16 v4, 0x7b

    :try_start_0
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 207
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/broadcast/oneseg/MtvOneSegService$1;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    iget-object v3, v3, Landroid/broadcast/oneseg/MtvOneSegService;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 208
    sget-object v3, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 209
    const-string v3, "MtvOneSegService"

    const-string v4, "Sending command to MtvOneSegRemoteService for initing SDTV Control..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v3, 0x0

    const/16 v4, 0x65

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 211
    .local v2, "msg2":Landroid/os/Message;
    sget-object v3, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "msg2":Landroid/os/Message;
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MtvOneSegService"

    const-string v4, "onServiceConnected : Service has probably crashed!!"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 223
    const-string v0, "MtvOneSegService"

    const-string v2, "MtvOneSegRemoteService is now disconnected"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sput-object v4, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    .line 231
    invoke-static {v1}, Landroid/broadcast/oneseg/MtvOneSegService;->access$002(Z)Z

    .line 232
    iget-object v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$1;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v2, 0x72

    const/16 v3, 0xd7

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 233
    iget-object v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$1;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    .line 234
    return-void
.end method
