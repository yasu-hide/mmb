.class Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$5;
.super Ljava/lang/Object;
.source "MtvUiTestMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->onPlayerNotification(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$5;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$5;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$1600(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V

    .line 946
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$5;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->finish()V

    .line 947
    return-void
.end method
