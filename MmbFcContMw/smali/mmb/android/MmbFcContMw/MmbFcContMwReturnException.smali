.class public Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
.super Ljava/lang/Exception;
.source "MmbFcContMwReturnException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected error:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V
    .locals 1
    .param p1, "aType"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    .prologue
    .line 29
    invoke-virtual {p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;->error:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    .line 31
    return-void
.end method


# virtual methods
.method public getError()Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;->error:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    return-object v0
.end method
