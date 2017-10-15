.class Landroid/broadcast/bml/MtvNativeBmlEngineImpl$3;
.super Ljava/lang/Object;
.source "MtvNativeBmlEngineImpl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_CB_Control_PlayRomSoundPeer([B)I
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
    .line 823
    iput-object p1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$3;->this$0:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 828
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 829
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
