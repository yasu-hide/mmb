.class Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$1;
.super Ljava/lang/Object;
.source "MtvOneSegRemoteService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$1;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x111

    .line 1085
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v0

    .line 1087
    .local v0, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v1, "MtvOneSegRemoteService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RunnableFakeClose() is Fired -- Verifying anything needs to be closed. Current State = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->PAUSE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v0, v1, :cond_2

    .line 1090
    :cond_0
    const-string v1, "MtvOneSegRemoteService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looks Like Close is Still going on !! mCurMdls = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1300()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1300()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1300()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 1093
    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1302(I)I

    .line 1094
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$1;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1300()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1400(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;I)V

    .line 1099
    :cond_1
    :goto_0
    return-void

    .line 1097
    :cond_2
    const-string v1, "MtvOneSegRemoteService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid State ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Ignoring Close Handling"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
