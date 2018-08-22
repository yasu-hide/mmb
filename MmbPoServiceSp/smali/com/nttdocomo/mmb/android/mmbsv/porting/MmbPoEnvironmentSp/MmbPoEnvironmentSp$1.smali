.class final Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp$1;
.super Landroid/content/BroadcastReceiver;
.source "MmbPoEnvironmentSp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 187
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->access$000()[Landroid/content/BroadcastReceiver;

    move-result-object v0

    .local v0, "arr$":[Landroid/content/BroadcastReceiver;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 188
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {v3, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v3    # "receiver":Landroid/content/BroadcastReceiver;
    :cond_0
    return-void
.end method
