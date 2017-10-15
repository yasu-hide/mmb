.class public final Lcom/samsung/sec/mtv/ui/TestMode/TestScans$TestScansInfo;
.super Ljava/lang/Object;
.source "TestScans.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/TestMode/TestScans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TestScansInfo"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_UNIXTIME:Ljava/lang/String; = "unixtime"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "unixtime ASC"

.field public static final DISPLAY_SORT_ORDER:Ljava/lang/String; = "unixtime DESC"

.field public static final MAX_CHANNEL_TIME:Ljava/lang/String; = "maxchanneltime"

.field public static final MIN_CHANNEL_TIME:Ljava/lang/String; = "minchanneltime"

.field public static final NUM_CHANNELS:Ljava/lang/String; = "numchannels"

.field public static final SCAN_TIME:Ljava/lang/String; = "scantime"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "content://com.samung.sec.mtv.ui.TestMode.TestScans/testscansinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/ui/TestMode/TestScans$TestScansInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method
