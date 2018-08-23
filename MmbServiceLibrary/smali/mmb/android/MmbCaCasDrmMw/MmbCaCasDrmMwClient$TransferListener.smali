.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$TransferListener;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwClient.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;


# direct methods
.method private constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$1;)V
    .locals 0
    .param p1, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;
    .param p2, "x1"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$1;

    .prologue
    .line 1129
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$TransferListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;)V

    return-void
.end method


# virtual methods
.method public onConnect()Z
    .locals 1

    .prologue
    .line 1138
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1139
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 1140
    const/4 v0, 0x0

    return v0
.end method

.method public onDisconnect()Z
    .locals 2

    .prologue
    .line 1151
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1153
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->access$200(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;)Z

    move-result v0

    .line 1155
    .local v0, "doTerminate":Z
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 1156
    return v0
.end method

.method public onPreReceive(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    .prologue
    .line 1167
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1169
    const/4 v0, 0x1

    iput v0, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mCount:I

    .line 1170
    const-wide/16 v0, 0x2710

    iput-wide v0, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mTimeout:J

    .line 1172
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 1173
    return-void
.end method

.method public onReceive(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "aData"    # Ljava/lang/Object;

    .prologue
    .line 1183
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1185
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;

    invoke-static {v1, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;Ljava/lang/Object;)Z

    move-result v0

    .line 1187
    .local v0, "doDisconnect":Z
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 1188
    return v0
.end method
