.class public Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;
.super Landroid/app/ListActivity;
.source "TestScanResultsList.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TESTSCANS_URI:Landroid/net/Uri;

.field private static final VIEW_ID:[I


# instance fields
.field mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 19
    const-string v0, "content://com.samung.sec.mtv.ui.TestMode.TestScans/testscansinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->TESTSCANS_URI:Landroid/net/Uri;

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "scantime"

    aput-object v1, v0, v5

    const-string v1, "numchannels"

    aput-object v1, v0, v6

    const-string v1, "maxchanneltime"

    aput-object v1, v0, v7

    const-string v1, "minchanneltime"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "unixtime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->PROJECTION:[Ljava/lang/String;

    .line 30
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "scantime"

    aput-object v1, v0, v4

    const-string v1, "numchannels"

    aput-object v1, v0, v5

    const-string v1, "maxchanneltime"

    aput-object v1, v0, v6

    const-string v1, "minchanneltime"

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->COLUMNS:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->VIEW_ID:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a0057
        0x7f0a0056
        0x7f0a0054
        0x7f0a0055
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->mCursor:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->TESTSCANS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->PROJECTION:[Ljava/lang/String;

    const-string v5, "unixtime DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->mCursor:Landroid/database/Cursor;

    .line 49
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No Results to Show"

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 55
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f03000c

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->COLUMNS:[Ljava/lang/String;

    sget-object v5, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->VIEW_ID:[I

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 56
    .local v0, "adapter":Landroid/widget/SimpleCursorAdapter;
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    sget-boolean v1, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 59
    :cond_1
    return-void

    .line 52
    .end local v0    # "adapter":Landroid/widget/SimpleCursorAdapter;
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No Results to Show"

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/TestScanResultsList;->mCursor:Landroid/database/Cursor;

    .line 66
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 67
    return-void
.end method
