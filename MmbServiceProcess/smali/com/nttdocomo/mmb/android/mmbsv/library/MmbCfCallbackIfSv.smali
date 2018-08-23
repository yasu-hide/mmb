.class public interface abstract Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv;
.super Ljava/lang/Object;
.source "MmbCfCallbackIfSv.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
