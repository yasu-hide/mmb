.class public interface abstract Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;
.super Ljava/lang/Object;
.source "MmbFwResultListenerSv.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFinished(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onProgress(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;D)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<TT;>;D)V"
        }
    .end annotation
.end method
