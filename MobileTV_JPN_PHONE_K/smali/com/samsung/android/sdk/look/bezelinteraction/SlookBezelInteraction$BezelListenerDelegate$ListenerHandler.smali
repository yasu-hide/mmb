.class Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate$ListenerHandler;
.super Landroid/os/Handler;
.source "SlookBezelInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListenerHandler"
.end annotation


# instance fields
.field public mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "listener"    # Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate$ListenerHandler;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    .line 154
    iput-object p2, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate$ListenerHandler;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate$ListenerHandler;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    if-eqz v1, :cond_0

    .line 161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/bezelinteraction/BezelEvent;

    .line 162
    .local v0, "event":Lcom/samsung/android/bezelinteraction/BezelEvent;
    if-eqz v0, :cond_1

    .line 163
    iget-object v1, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate$ListenerHandler;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;->onItemSelected(Lcom/samsung/android/bezelinteraction/BezelEvent;)V

    .line 168
    .end local v0    # "event":Lcom/samsung/android/bezelinteraction/BezelEvent;
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v0    # "event":Lcom/samsung/android/bezelinteraction/BezelEvent;
    :cond_1
    const-string v1, "SlookBezelInteraction"

    const-string v2, "event : null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
