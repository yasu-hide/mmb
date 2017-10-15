.class Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3$1;
.super Ljava/lang/Object;
.source "MtvOneSegRemoteService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;)V
    .locals 0

    .prologue
    .line 1767
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3$1;->this$1:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3$1;->this$1:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;

    iget-object v0, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1800(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V

    .line 1771
    return-void
.end method
