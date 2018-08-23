.class public interface abstract Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;
.super Ljava/lang/Object;
.source "MmbCoExecutionStateListenerAidlSv.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv$Stub;
    }
.end annotation


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
