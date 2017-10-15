.class public Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiCaptureFrag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvUiCaptureFrag"

.field public static saved_file_toast:Landroid/widget/Toast;


# instance fields
.field private mCaptureImgText:Landroid/widget/TextView;

.field private mCaptureImgView:Landroid/widget/ImageView;

.field private mCaptureRingView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mLayoutView:Landroid/view/View;

.field private mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

.field private mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field mReceivedImage:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->saved_file_toast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    return-void
.end method

.method private captureAutoSave()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isExternalMemoryAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isInternalMemoryAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mContext:Landroid/content/Context;

    const v3, 0x7f0702ee

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->saved_file_toast:Landroid/widget/Toast;

    .line 111
    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->saved_file_toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x0

    .line 117
    .local v0, "bSuccess":Z
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mReceivedImage:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 118
    .local v1, "bmpImg":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 119
    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->saveFile(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 120
    const-string v2, "MtvUiCaptureFrag"

    const-string v3, "Failed to save the file"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 126
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mContext:Landroid/content/Context;

    const v3, 0x7f0702c5

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->saved_file_toast:Landroid/widget/Toast;

    .line 127
    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->saved_file_toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 122
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private initializeUI()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 63
    const-string v0, "MtvUiCaptureFrag"

    const-string v1, "initializeUI"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 65
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mCaptureImgView:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mCaptureImgText:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mCaptureRingView:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mCaptureImgText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mCaptureRingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mCaptureImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mCaptureImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mCaptureRingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    return-void
.end method

.method private saveFile(Landroid/graphics/Bitmap;)Z
    .locals 11
    .param p1, "bmpImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "bSaved":Z
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    .line 78
    .local v5, "mLivePlayer":Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
    const/4 v1, 0x0

    .line 79
    .local v1, "channelInfo":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    const/4 v2, 0x0

    .line 81
    .local v2, "currentProgram":Landroid/broadcast/helper/types/MtvOneSegProgram;
    const-string v6, "MtvUiCaptureFrag"

    const-string v7, "saveFile"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-eqz p1, :cond_3

    .line 83
    new-instance v4, Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-direct {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;-><init>()V

    .line 84
    .local v4, "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v3

    .line 86
    .local v3, "defaultStorage":I
    if-nez v3, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isExternalMemoryAvailable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 87
    const/4 v3, 0x1

    .line 89
    :cond_0
    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 90
    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v6}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/sec/mtv/provider/MtvFile;->setChannelName(Ljava/lang/String;)V

    .line 93
    :cond_1
    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getCurrentProgramDetails()Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {v2}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getProgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/sec/mtv/provider/MtvFile;->setProgramName(Ljava/lang/String;)V

    .line 98
    :cond_2
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/samsung/sec/mtv/provider/MtvFile;->setFileFormat(I)V

    .line 99
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Lcom/samsung/sec/mtv/provider/MtvFile;->setCreationTime(Ljava/util/Date;)V

    .line 100
    invoke-static {v3, p1, v4}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->saveFile(ILandroid/graphics/Bitmap;Lcom/samsung/sec/mtv/provider/MtvFile;)V

    .line 101
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    const/4 v0, 0x1

    .line 105
    .end local v3    # "defaultStorage":I
    .end local v4    # "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_3
    return v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onAttach(Landroid/app/Activity;)V

    .line 173
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    return-void

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IMtvFragEventListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->setRetainInstance(Z)V

    .line 185
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mContext:Landroid/content/Context;

    .line 134
    const v0, 0x7f030018

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mLayoutView:Landroid/view/View;

    .line 135
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->initializeUI()V

    .line 136
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mLayoutView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onPause()V

    .line 191
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onResume()V

    .line 197
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onStart()V

    .line 203
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onStop()V

    .line 209
    return-void
.end method

.method public onUpdate(ILjava/lang/Object;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 144
    const-string v1, "MtvUiCaptureFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate: what["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 147
    :pswitch_0
    monitor-enter p0

    .line 148
    :try_start_0
    const-string v1, "MtvUiCaptureFrag"

    const-string v2, "onUpdate: inside synchronized block"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mReceivedImage:Landroid/graphics/drawable/BitmapDrawable;

    .line 150
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mCaptureImgView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mReceivedImage:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mCaptureImgText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mCaptureRingView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    if-eqz p2, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->captureAutoSave()V

    .line 161
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 157
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v2, 0xe5

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 158
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->mContext:Landroid/content/Context;

    const v2, 0x7f070211

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->saved_file_toast:Landroid/widget/Toast;

    .line 159
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;->saved_file_toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 145
    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method
