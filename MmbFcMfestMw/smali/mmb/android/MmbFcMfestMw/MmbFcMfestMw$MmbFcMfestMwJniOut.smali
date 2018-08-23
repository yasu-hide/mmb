.class Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;
.super Ljava/lang/Object;
.source "MmbFcMfestMw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbFcMfestMwJniOut"
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;

.field final synthetic this$0:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;)V
    .locals 1

    .prologue
    .line 156
    iput-object p1, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;->this$0:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;->contentType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;

    .prologue
    .line 156
    iget-object v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;->contentType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;->contentType:Ljava/lang/String;

    .line 164
    return-void
.end method
