.class public abstract Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
.super Ljava/lang/Object;
.source "MmbFwSessionSv.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method


# virtual methods
.method public cleanupSession()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 102
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    return-object v0
.end method

.method public notifyApplicationMode(Z)V
    .locals 0
    .param p1, "aMode"    # Z

    .prologue
    .line 334
    return-void
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 313
    return-void
.end method

.method public notifyOnCreate()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public notifyOnDestroy()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public notifyOnPause()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public notifyOnRestart()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public notifyOnResume()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public notifyOnStart()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public notifyOnStop()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public startupSession()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method
