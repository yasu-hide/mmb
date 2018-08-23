.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService$1;
.super Landroid/os/Handler;
.source "MmbFcBrowMwGeolocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->createGeolocationHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 309
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 280
    :pswitch_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {v1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 282
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 283
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Could not get location manager."

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;)V

    .line 289
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->access$202(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;Z)Z

    goto :goto_0

    .line 293
    :pswitch_2
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;)V

    .line 294
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->access$202(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;Z)Z

    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->access$200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;)V

    .line 304
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;)V

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
