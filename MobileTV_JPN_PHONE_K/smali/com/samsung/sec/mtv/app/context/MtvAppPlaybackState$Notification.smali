.class Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;
.super Ljava/lang/Object;
.source "MtvAppPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Notification"
.end annotation


# instance fields
.field final command:I

.field final extra:I

.field final status:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extra"    # I

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;->command:I

    .line 229
    iput p2, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;->status:I

    .line 230
    iput p3, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;->extra:I

    .line 231
    return-void
.end method
