.class public interface abstract Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;
.super Ljava/lang/Object;
.source "MmbCfCallbackAidlSv.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFinishFunctionCallback(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFinishReleaseResourceCallback(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
