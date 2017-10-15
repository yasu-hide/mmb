.class Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$RunnableShowSignalAlertDialog;
.super Ljava/lang/Object;
.source "MtvUiLivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableShowSignalAlertDialog"
.end annotation


# instance fields
.field private final mType:I

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V
    .locals 0
    .param p2, "type"    # I

    .prologue
    .line 5782
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$RunnableShowSignalAlertDialog;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$RunnableShowSignalAlertDialog;->mType:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5785
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$RunnableShowSignalAlertDialog;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    iget v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$RunnableShowSignalAlertDialog;->mType:I

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->showSignalAlertDialog(I)V

    .line 5786
    return-void
.end method
