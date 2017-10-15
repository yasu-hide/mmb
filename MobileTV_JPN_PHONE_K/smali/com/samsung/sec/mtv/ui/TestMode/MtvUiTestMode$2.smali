.class Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$2;
.super Ljava/lang/Object;
.source "MtvUiTestMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->createCancelScanProgressDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
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
    .line 424
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$2;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$2;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$1400(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V

    .line 429
    return-void
.end method
