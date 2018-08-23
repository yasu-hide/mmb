.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv$1;
.super Ljava/lang/Object;
.source "MmbFcConflictCallbackSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;->onFinishFunctionCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;

.field final synthetic val$errCode:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;I)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv$1;->val$errCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv$1;->val$errCode:I

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_2

    .line 127
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 120
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v0

    .line 123
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
