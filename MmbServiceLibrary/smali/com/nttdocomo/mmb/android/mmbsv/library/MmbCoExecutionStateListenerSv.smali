.class public interface abstract Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerSv;
.super Ljava/lang/Object;
.source "MmbCoExecutionStateListenerSv.java"


# virtual methods
.method public abstract onExecutionProgressChange(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onExecutionStateChange(Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
