.class interface abstract Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwProcessIf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;
    }
.end annotation


# static fields
.field public static final STATE_COMPLETE:I = 0x2

.field public static final STATE_COMPLETE_CANCEL:I = 0x4

.field public static final STATE_COMPLETE_FAIL:I = 0x3

.field public static final STATE_COMPLETE_TIMEOUT:I = 0x5

.field public static final STATE_CREATED:I = 0x0

.field public static final STATE_PROCESSING:I = 0x1


# virtual methods
.method public varargs abstract canExecute([Ljava/lang/Object;)Z
.end method

.method public abstract cancel()V
.end method

.method public varargs abstract execute([Ljava/lang/Object;)I
.end method

.method public abstract getListener()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;
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
