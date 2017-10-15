.class public interface abstract Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;
.super Ljava/lang/Object;
.source "MtvConflictHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MtvConflictListener"
.end annotation


# virtual methods
.method public abstract onCommunicationError()V
.end method

.method public abstract onConflictWithTmm()V
.end method

.method public abstract onTunerResourceAssignProcessing()V
.end method

.method public abstract onTunerResourceAssignStarted()V
.end method

.method public abstract onTunerResourceAssignTimedOut(Z)V
.end method

.method public abstract onTunerResourceAssigned()V
.end method

.method public abstract onTunerResourceAssignmentException()V
.end method

.method public abstract onTunerResourceBusy(Z)V
.end method
