.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwForeignHandlerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
.source "MmbFwMainServiceSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbFwForeignHandlerSv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwForeignHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    return-void
.end method


# virtual methods
.method protected getIconId(I)I
    .locals 1
    .param p1, "aSubId"    # I

    .prologue
    .line 2031
    const v0, 0x7f020006

    .line 2035
    .local v0, "result":I
    return v0
.end method
