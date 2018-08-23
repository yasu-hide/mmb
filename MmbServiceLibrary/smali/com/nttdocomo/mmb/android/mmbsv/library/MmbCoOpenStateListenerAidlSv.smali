.class public interface abstract Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;
.super Ljava/lang/Object;
.source "MmbCoOpenStateListenerAidlSv.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv$Stub;
    }
.end annotation


# virtual methods
.method public abstract onOpenStateChange(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
