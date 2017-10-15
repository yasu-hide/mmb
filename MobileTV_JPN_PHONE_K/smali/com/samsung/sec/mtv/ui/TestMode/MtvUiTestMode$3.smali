.class Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$3;
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
    .line 789
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$3;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$3;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$1300(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$3;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$1300(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$3;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$800(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->delete(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 794
    :cond_0
    return-void
.end method
