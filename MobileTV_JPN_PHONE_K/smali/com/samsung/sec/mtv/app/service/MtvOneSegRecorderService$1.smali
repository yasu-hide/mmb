.class Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$1;
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
    .line 253
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$1;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$1;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->access$000(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)V

    return-void
.end method
