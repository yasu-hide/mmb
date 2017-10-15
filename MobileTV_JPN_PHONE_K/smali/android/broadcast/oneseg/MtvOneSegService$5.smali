.class Landroid/broadcast/oneseg/MtvOneSegService$5;
.super Ljava/lang/Object;
.source "MtvOneSegService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 3100
    iput-object p1, p0, Landroid/broadcast/oneseg/MtvOneSegService$5;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3104
    const-string v0, "MtvOneSegService"

    const-string v1, "Clearing caption data after timeout"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    iget-object v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$5;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v1, 0x71

    const/16 v2, 0xd3

    const/4 v3, 0x0

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 3106
    return-void
.end method
