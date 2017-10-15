.class Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$5;
.super Ljava/lang/Object;
.source "MtvOneSegRecorderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->onPlayerNotification(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$5;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$5;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->access$100(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;IZ)V

    .line 327
    return-void
.end method
