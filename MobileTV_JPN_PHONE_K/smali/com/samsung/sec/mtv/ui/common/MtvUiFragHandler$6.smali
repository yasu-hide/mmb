.class Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$6;
.super Ljava/lang/Object;
.source "MtvUiFragHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "MtvUiFragHandler"

    const-string v1, "mTimedFPImgFrag time out, destroying it!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 149
    return-void
.end method
