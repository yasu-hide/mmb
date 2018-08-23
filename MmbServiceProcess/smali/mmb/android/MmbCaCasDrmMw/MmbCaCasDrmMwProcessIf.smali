.class interface abstract Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwProcessIf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;
    }
.end annotation


# virtual methods
.method public varargs abstract canExecute([Ljava/lang/Object;)Z
.end method

.method public abstract cancel()V
.end method

.method public varargs abstract execute([Ljava/lang/Object;)I
.end method

.method public abstract getState()I
.end method

.method public abstract isCompleted(I)Z
.end method

.method public abstract startTimer(J)V
.end method

.method public abstract startTimer(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;J)V
.end method

.method public abstract waitComplete(J)I
.end method
