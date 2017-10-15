.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiFragTVFilesList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;,
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;,
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;
    }
.end annotation


# static fields
.field private static final MENU_AUTO_PLAY_NEXT:I = 0x2

.field private static final MENU_DELETE_ITEM:I = 0x1

.field private static final MENU_VIEW_FREE_MEMORY:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final UPDATE_DELETE_PROGRESS:I = 0x4

.field public static final UPDATE_DISMISS_LONGCLICK_DIALOG:I = 0x7

.field public static final UPDATE_POPULATE_TV_LIST:I = 0x2

.field public static final UPDATE_SHOW_DELETE_ALERT_DIALOG:I = 0x1

.field public static final UPDATE_VIEW_DETAILS:I = 0x3

.field private static adapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;

.field private static sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLayoutView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

.field private mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTimedRemoveDialog:Ljava/lang/Runnable;

.field private myActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    const-string v0, "MtvUiFragTVFilesList"

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    .line 98
    sput-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->adapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;

    .line 101
    sput-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 108
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 110
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$2;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mTimedRemoveDialog:Ljava/lang/Runnable;

    .line 818
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mTimedRemoveDialog:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->populateTVFileList()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/sec/mtv/provider/MtvFile;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/provider/MtvFile;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/widget/ImageView;

    .prologue
    .line 88
    invoke-static {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->setFileInfo(Lcom/samsung/sec/mtv/provider/MtvFile;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)[Lcom/samsung/sec/mtv/provider/MtvFile;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    return-object v0
.end method

.method static synthetic access$800()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->adapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;

    .prologue
    .line 88
    sput-object p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->adapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->myActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private static decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, "filestream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 154
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v2    # "filestream":Ljava/io/FileInputStream;
    .local v3, "filestream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 162
    if-eqz v3, :cond_0

    .line 163
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 173
    .end local v3    # "filestream":Ljava/io/FileInputStream;
    .restart local v2    # "filestream":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-object v0

    .line 165
    .end local v2    # "filestream":Ljava/io/FileInputStream;
    .restart local v3    # "filestream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 171
    .end local v3    # "filestream":Ljava/io/FileInputStream;
    .restart local v2    # "filestream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 157
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    if-eqz v2, :cond_1

    .line 163
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 165
    :catch_2
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 162
    :goto_2
    if-eqz v2, :cond_2

    .line 163
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 167
    :cond_2
    :goto_3
    throw v4

    .line 165
    :catch_3
    move-exception v1

    .line 166
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 161
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "filestream":Ljava/io/FileInputStream;
    .restart local v3    # "filestream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "filestream":Ljava/io/FileInputStream;
    .restart local v2    # "filestream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 157
    .end local v2    # "filestream":Ljava/io/FileInputStream;
    .restart local v3    # "filestream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "filestream":Ljava/io/FileInputStream;
    .restart local v2    # "filestream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static getPreviewThumbnailPath(Lcom/samsung/sec/mtv/provider/MtvFile;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Lcom/samsung/sec/mtv/provider/MtvFile;

    .prologue
    const/4 v9, 0x0

    .line 129
    const/4 v3, 0x0

    .line 130
    .local v3, "indexPathEnd":I
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "orgPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v5

    if-nez v5, :cond_0

    .line 133
    const-string v5, "record"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "thumbnails/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "filePath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thumb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".thm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "fileName":Ljava/lang/String;
    :goto_0
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPreviewThumbnailPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 138
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_0
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 139
    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Phone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PhMem"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    :cond_1
    const-string v2, "sdcard/video/MyTvFiles/thumbnails/"

    .line 143
    .restart local v2    # "filePath":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 144
    .local v1, "fileNumber":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%03X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".thm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fileName":Ljava/lang/String;
    goto/16 :goto_0

    .line 142
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "fileNumber":I
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_2
    const-string v2, "/mnt/extSdCard/video/MyTvFiles/thumbnails/"

    .restart local v2    # "filePath":Ljava/lang/String;
    goto :goto_1
.end method

.method private populateTVFileList()V
    .locals 4

    .prologue
    .line 296
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v2, "populateTVFileList"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mLayoutView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0a00c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mListView:Landroid/widget/ListView;

    .line 299
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0a00c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 300
    .local v0, "temp_image":Landroid/widget/ImageView;
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 301
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a00c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 302
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 304
    .end local v0    # "temp_image":Landroid/widget/ImageView;
    :cond_0
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getAvailableTVRecFilesEx(Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;)V

    .line 305
    return-void
.end method

.method private static setFileInfo(Lcom/samsung/sec/mtv/provider/MtvFile;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 18
    .param p0, "file"    # Lcom/samsung/sec/mtv/provider/MtvFile;
    .param p1, "mPreImageView"    # Landroid/widget/ImageView;
    .param p2, "mPlayImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 177
    if-nez p0, :cond_1

    .line 178
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 183
    const/16 v14, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto :goto_0

    .line 231
    :pswitch_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getPreviewThumbnailPath(Lcom/samsung/sec/mtv/provider/MtvFile;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 189
    :pswitch_1
    const/4 v11, 0x0

    .line 190
    .local v11, "stream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 193
    .local v7, "inputData":Ljava/nio/ByteBuffer;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 194
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .local v12, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;

    const/4 v14, 0x2

    invoke-direct {v2, v14}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;-><init>(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .local v2, "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    const/4 v10, 0x0

    .line 198
    .local v10, "outSize":I
    const/4 v9, -0x1

    .line 199
    .local v9, "numberOfBytes":I
    const/4 v14, 0x2

    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    invoke-virtual {v2, v14, v15}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->getOutputSize(II)I

    move-result v10

    .line 200
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 201
    .local v3, "decBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 202
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    .line 203
    sget-object v14, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " numberOfBytes "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v2, v7, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->decryptData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 205
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    .end local v3    # "decBuf":Ljava/nio/ByteBuffer;
    :goto_1
    if-eqz v12, :cond_2

    .line 221
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    move-object v11, v12

    .line 225
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 207
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .line 208
    .local v5, "e1":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 215
    .end local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v5    # "e1":Ljava/io/IOException;
    .end local v9    # "numberOfBytes":I
    .end local v10    # "outSize":I
    :catch_1
    move-exception v4

    move-object v11, v12

    .line 216
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/io/FileNotFoundException;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 220
    if-eqz v11, :cond_0

    .line 221
    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 223
    :catch_2
    move-exception v4

    .line 224
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 210
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v9    # "numberOfBytes":I
    .restart local v10    # "outSize":I
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    .line 212
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 219
    .end local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v9    # "numberOfBytes":I
    .end local v10    # "outSize":I
    :catchall_0
    move-exception v14

    move-object v11, v12

    .line 220
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v11, :cond_3

    .line 221
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 225
    :cond_3
    :goto_4
    throw v14

    .line 223
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v9    # "numberOfBytes":I
    .restart local v10    # "outSize":I
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    .line 224
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v11, v12

    .line 226
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 223
    .end local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "numberOfBytes":I
    .end local v10    # "outSize":I
    :catch_5
    move-exception v4

    .line 224
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 237
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "inputData":Ljava/nio/ByteBuffer;
    .end local v11    # "stream":Ljava/io/FileInputStream;
    :pswitch_2
    const/4 v11, 0x0

    .line 239
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 240
    .restart local v7    # "inputData":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    .line 242
    .local v13, "thumbnailPath":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getPreviewThumbnailPath(Lcom/samsung/sec/mtv/provider/MtvFile;)Ljava/lang/String;

    move-result-object v13

    .line 243
    if-nez v13, :cond_4

    .line 244
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 249
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    :try_start_9
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 253
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :try_start_a
    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;

    const/4 v14, 0x2

    invoke-direct {v2, v14}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;-><init>(I)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 254
    .restart local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    const/4 v10, 0x0

    .line 257
    .restart local v10    # "outSize":I
    const/4 v9, -0x1

    .line 258
    .restart local v9    # "numberOfBytes":I
    const/4 v14, 0x2

    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    invoke-virtual {v2, v14, v15}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->getOutputSize(II)I

    move-result v10

    .line 259
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 260
    .restart local v3    # "decBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 261
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    .line 262
    sget-object v14, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " numberOfBytes "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2, v7, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->decryptData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 264
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 280
    .end local v3    # "decBuf":Ljava/nio/ByteBuffer;
    :goto_5
    if-eqz v12, :cond_5

    .line 281
    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :cond_5
    move-object v11, v12

    .line 285
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 265
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v8

    .line 266
    .local v8, "ioException":Ljava/io/IOException;
    :try_start_d
    sget-object v14, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v15, "Stream reading failed"

    invoke-static {v14, v15}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_5

    .line 274
    .end local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v8    # "ioException":Ljava/io/IOException;
    .end local v9    # "numberOfBytes":I
    .end local v10    # "outSize":I
    :catch_7
    move-exception v4

    move-object v11, v12

    .line 275
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/io/FileNotFoundException;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :goto_6
    :try_start_e
    sget-object v14, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v15, "unable to find the thumbail"

    invoke-static {v14, v15}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 280
    if-eqz v11, :cond_0

    .line 281
    :try_start_f
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_0

    .line 282
    :catch_8
    move-exception v4

    .line 283
    .local v4, "e":Ljava/io/IOException;
    sget-object v14, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v15, "Failure in fetching the thumbnail"

    invoke-static {v14, v15}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 268
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v9    # "numberOfBytes":I
    .restart local v10    # "outSize":I
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v6

    .line 270
    .local v6, "exception":Ljava/lang/Exception;
    :try_start_10
    sget-object v14, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v15, "Something\'s wrong,Exception caught"

    invoke-static {v14, v15}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_5

    .line 279
    .end local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v6    # "exception":Ljava/lang/Exception;
    .end local v9    # "numberOfBytes":I
    .end local v10    # "outSize":I
    :catchall_1
    move-exception v14

    move-object v11, v12

    .line 280
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :goto_7
    if-eqz v11, :cond_6

    .line 281
    :try_start_11
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 285
    :cond_6
    :goto_8
    throw v14

    .line 282
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v9    # "numberOfBytes":I
    .restart local v10    # "outSize":I
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v4

    .line 283
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v14, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v15, "Failure in fetching the thumbnail"

    invoke-static {v14, v15}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v11, v12

    .line 286
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 282
    .end local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "numberOfBytes":I
    .end local v10    # "outSize":I
    :catch_b
    move-exception v4

    .line 283
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v15, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v16, "Failure in fetching the thumbnail"

    invoke-static/range {v15 .. v16}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 279
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v14

    goto :goto_7

    .line 274
    :catch_c
    move-exception v4

    goto :goto_6

    .line 219
    .end local v13    # "thumbnailPath":Ljava/lang/String;
    :catchall_3
    move-exception v14

    goto/16 :goto_3

    .line 215
    :catch_d
    move-exception v4

    goto/16 :goto_2

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private startFilePlayer(Lcom/samsung/sec/mtv/provider/MtvFile;)V
    .locals 3
    .param p1, "mFile"    # Lcom/samsung/sec/mtv/provider/MtvFile;

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->myActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v2, "startFilePlayer"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "MtvFile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 312
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 314
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 413
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 417
    .local v0, "currentFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 418
    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->startFilePlayer(Lcom/samsung/sec/mtv/provider/MtvFile;)V

    .line 421
    .end local v0    # "currentFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 320
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 321
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v1, "onCreate called..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 323
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->myActivity:Landroid/app/Activity;

    .line 324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->setHasOptionsMenu(Z)V

    .line 325
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 352
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const v0, 0x7f030024

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mLayoutView:Landroid/view/View;

    .line 355
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mLayoutView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v1, " onDestroy..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 408
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mHandler:Landroid/os/Handler;

    .line 409
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDestroy()V

    .line 410
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 329
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDestroyView()V

    .line 330
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick: position - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    aget-object v0, v2, p3

    .line 453
    .local v0, "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    .line 455
    .local v1, "mMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v1, :cond_0

    .line 456
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick: currentCmd - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Type - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-eq v2, v3, :cond_1

    .line 462
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->startFilePlayer(Lcom/samsung/sec/mtv/provider/MtvFile;)V

    .line 463
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2, p3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestFileIndex(I)V

    .line 464
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->adapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->notifyDataSetChanged()V

    .line 468
    :goto_1
    return-void

    .line 458
    :cond_0
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v3, "mMtvAppPlaybackContext is null"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07029b

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " onItemLongClick: position["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 427
    move v2, p3

    .line 428
    .local v2, "position":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 431
    .local v0, "longClickBundle":Landroid/os/Bundle;
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v5, "onItemLongClick"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    aget-object v4, v4, v2

    sput-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 434
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setSelectedFileIndex(I)V

    .line 435
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestFileIndex(I)V

    .line 436
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->adapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->notifyDataSetChanged()V

    .line 437
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nul"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No Program Name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07028a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "programName":Ljava/lang/String;
    :goto_0
    const-string v4, "dialogType"

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 439
    const-string v4, "title"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v4, "fileType"

    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v1

    .line 442
    .local v1, "longClickFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "dialog"

    invoke-virtual {v1, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 444
    .end local v0    # "longClickBundle":Landroid/os/Bundle;
    .end local v1    # "longClickFragment":Landroid/app/DialogFragment;
    .end local v2    # "position":I
    .end local v3    # "programName":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    return v4

    .line 437
    .restart local v0    # "longClickBundle":Landroid/os/Bundle;
    .restart local v2    # "position":I
    :cond_2
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 380
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 401
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 383
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->addMemInfoFrag()V

    goto :goto_0

    .line 387
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->myActivity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v1, "remListInt":Landroid/content/Intent;
    const-string v2, "Remove_List_Type"

    const/16 v3, 0x67

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 393
    .end local v1    # "remListInt":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v0, "bInfo":Landroid/os/Bundle;
    const-string v2, "dialogType"

    const/16 v3, 0x13

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 395
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "auto_play_next"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPostUpdate([Lcom/samsung/sec/mtv/provider/MtvFile;Z)V
    .locals 2
    .param p1, "newList"    # [Lcom/samsung/sec/mtv/provider/MtvFile;
    .param p2, "isProcessingContinued"    # Z

    .prologue
    .line 830
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v1, "onPostUpdate..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 833
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v1, "onPostUpdate: No View to Update or No newlist to Update."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :cond_1
    :goto_0
    return-void

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eq p1, v0, :cond_3

    .line 838
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 845
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 846
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$3;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 842
    :cond_3
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v1, "onPostUpdate old list returned... No need to Update..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 361
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 362
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 367
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 368
    const/4 v0, 0x2

    const v1, 0x7f0701ee

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 369
    :cond_0
    const v0, 0x7f070258

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 370
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 371
    const/4 v0, 0x1

    const v1, 0x7f070237

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 372
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onResume()V

    .line 341
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v1, "onResume called"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->populateTVFileList()V

    .line 343
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 334
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onStop()V

    .line 335
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v1, "onStop ..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public onUpdate(ILjava/lang/Object;)V
    .locals 10
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0702a6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 472
    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpdate: what["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    sparse-switch p1, :sswitch_data_0

    .line 558
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onUpdate(ILjava/lang/Object;)V

    .line 559
    return-void

    .line 475
    :sswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 476
    .local v0, "deleteBundle":Landroid/os/Bundle;
    const-string v3, "dialogType"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 477
    const-string v3, "filePath"

    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v3, "index"

    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getIndex()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 479
    const-string v3, "fileType"

    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "delete_tvfile"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 483
    .end local v0    # "deleteBundle":Landroid/os/Bundle;
    :sswitch_1
    new-instance v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;

    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-direct {v1, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;-><init>(Lcom/samsung/sec/mtv/provider/MtvFile;)V

    .line 484
    .local v1, "detailsFrag":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "ViewDetailsFragment"

    invoke-virtual {v1, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    .end local v1    # "detailsFrag":Landroid/app/DialogFragment;
    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->populateTVFileList()V

    goto :goto_0

    .line 490
    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->populateTVFileList()V

    goto :goto_0

    .line 493
    :sswitch_4
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    .line 494
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 495
    iput-object v9, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 497
    :cond_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mTimedRemoveDialog:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 498
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->populateTVFileList()V

    goto :goto_0

    .line 502
    :sswitch_5
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 503
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f070237

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 504
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 506
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 507
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 508
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 509
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mTimedRemoveDialog:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 510
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mTimedRemoveDialog:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 514
    :sswitch_6
    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v4, " MTV_UPDATE_FRAG_CMD_TV_FILES_RENAME_DIALOG "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 516
    .local v2, "renameBundle":Landroid/os/Bundle;
    const-string v3, "dialogType"

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 517
    const-string v3, "filePath"

    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v3, "fileName"

    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v3, "index"

    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getIndex()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "rename_tvfile"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 525
    .end local v2    # "renameBundle":Landroid/os/Bundle;
    :sswitch_7
    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v4, "  MTV_UPDATE_FRAG_CMD_RENAME_PROGRESS_DIALOG_SHOW "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 527
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0702b6

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 528
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 530
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 531
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 532
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 537
    :sswitch_8
    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v4, "  MTV_UPDATE_FRAG_CMD_RENAME_PROGRESS_DIALOG_DISMISS "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_2

    .line 540
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 541
    iput-object v9, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 543
    :cond_2
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->populateTVFileList()V

    goto/16 :goto_0

    .line 547
    :sswitch_9
    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->TAG:Ljava/lang/String;

    const-string v4, "  UPDATE_DISMISS_DIALOG  "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->sSelectedFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/provider/MtvFile;->getIndex()I

    move-result v3

    if-gez v3, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "rename_tvfile"

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "delete_tvfile"

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "ViewDetailsFragment"

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_5
        0x7 -> :sswitch_9
        0x73 -> :sswitch_3
        0xa7 -> :sswitch_4
        0x10c -> :sswitch_6
        0x10d -> :sswitch_7
        0x10e -> :sswitch_8
    .end sparse-switch
.end method
