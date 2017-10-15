.class Landroid/broadcast/bml/MtvNativeBmlEngineImpl$4;
.super Ljava/lang/Object;
.source "MtvNativeBmlEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_CB_Event_SetUsedKeyListPeer(I)I
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
    .line 1053
    iput-object p1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$4;->this$0:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$4;->this$0:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$4;->this$0:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iget-object v0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_KeyPadTypeChanged()V

    .line 1060
    :cond_0
    return-void
.end method
