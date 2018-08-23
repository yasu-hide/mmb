.class public abstract Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
.super Ljava/lang/Object;
.source "MmbFwModuleSv.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method


# virtual methods
.method public cleanupModule()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public dispatchSpecificAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 180
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->mContext:Landroid/content/Context;

    .line 83
    .local v0, "result":Landroid/content/Context;
    return-object v0
.end method

.method public getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 218
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    return-object v0
.end method

.method public installModule()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 161
    return-void
.end method

.method public notifyConnect()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public notifyDisconnect()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public notifyFirstSessionCreated()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public notifyLastSessionDeleted()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method setMainService(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 0
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 196
    return-void
.end method

.method public setupModule()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public startupModule()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method
