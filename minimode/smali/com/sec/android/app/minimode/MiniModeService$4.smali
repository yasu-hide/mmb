.class Lcom/sec/android/app/minimode/MiniModeService$4;
.super Landroid/telephony/PhoneStateListener;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->getPhoneStateListener(JI)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;J)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 464
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$4;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0, p2, p3}, Landroid/telephony/PhoneStateListener;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 467
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$4;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$000(Lcom/sec/android/app/minimode/MiniModeService;I)V

    .line 470
    :cond_0
    return-void
.end method
