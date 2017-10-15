.class Landroid/broadcast/bml/MtvNativeBmlEngineImpl$2;
.super Ljava/lang/Object;
.source "MtvNativeBmlEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_CB_ExecuteHalt(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;


# direct methods
.method constructor <init>(Landroid/broadcast/bml/MtvNativeBmlEngineImpl;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$2;->this$0:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 301
    const-string v0, "BmlEngineImpl"

    const-string v1, "BML_CB_ExecuteHalt posting runnable BML_NotifyServiceChanged"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$2;->this$0:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    sget v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mfOriginalNetworkID:I

    sget v2, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mfTransportStreamID:I

    sget v3, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mfServiceID:I

    const/16 v4, 0x80

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_NotifyServiceChanged(IIII)Z

    .line 303
    return-void
.end method
