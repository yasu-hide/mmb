.class public abstract Lcom/access/bml/BMLPeer;
.super Ljava/lang/Object;
.source "BMLPeer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/access/bml/BMLPeer$BMLDtvAudio;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BMLPeer"

.field private static final TIMER_PERIOD:D = 162319.0


# instance fields
.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mAudioPlayerTbl:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/access/bml/BMLPeer$BMLDtvAudio;",
            ">;"
        }
    .end annotation
.end field

.field protected mBMLView:Lcom/access/bml/BMLView;

.field protected mContext:Landroid/content/Context;

.field private mCurAudioPlayingId:I

.field private mDtvControl:Lcom/access/bml/BMLDtvControl;

.field private mEditInput:Landroid/widget/EditText;

.field private mImeAlertDialog:Landroid/app/AlertDialog;

.field private mPackageName:Ljava/lang/String;

.field private mRomSoundPlayer:Landroid/media/MediaPlayer;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/access/bml/BMLPeer;->mPackageName:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    .line 77
    iput-object v1, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 78
    iput-object v1, p0, Lcom/access/bml/BMLPeer;->mRomSoundPlayer:Landroid/media/MediaPlayer;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/access/bml/BMLPeer;->mCurAudioPlayingId:I

    .line 88
    iput-object v1, p0, Lcom/access/bml/BMLPeer;->mImeAlertDialog:Landroid/app/AlertDialog;

    .line 89
    iput-object v1, p0, Lcom/access/bml/BMLPeer;->mEditInput:Landroid/widget/EditText;

    .line 96
    iput-object p1, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    .line 97
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml/BMLPeer;->mPackageName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method static synthetic access$0(Lcom/access/bml/BMLPeer;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/access/bml/BMLPeer;->mEditInput:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$1(Lcom/access/bml/BMLPeer;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mEditInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/access/bml/BMLPeer;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2158
    invoke-direct {p0, p1}, Lcom/access/bml/BMLPeer;->convWapInput2RegularExpress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/access/bml/BMLPeer;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mImeAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/access/bml/BMLPeer;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/access/bml/BMLPeer;->mImeAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$5(Lcom/access/bml/BMLPeer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/access/bml/BMLPeer;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/access/bml/BMLPeer;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$7(Lcom/access/bml/BMLPeer;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/access/bml/BMLPeer;->mCurAudioPlayingId:I

    return v0
.end method

.method private convWapInput2RegularExpress(I)Ljava/lang/String;
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 2160
    sparse-switch p1, :sswitch_data_0

    .line 2186
    const-string v0, ""

    .line 2188
    .local v0, "strRet":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2162
    .end local v0    # "strRet":Ljava/lang/String;
    :sswitch_0
    const-string v0, "[\\p{Upper}\\p{Punct}$=+|^]"

    .line 2163
    .restart local v0    # "strRet":Ljava/lang/String;
    goto :goto_0

    .line 2165
    .end local v0    # "strRet":Ljava/lang/String;
    :sswitch_1
    const-string v0, "[\\p{Lower}\\p{Punct}$=+|^]"

    .line 2166
    .restart local v0    # "strRet":Ljava/lang/String;
    goto :goto_0

    .line 2168
    .end local v0    # "strRet":Ljava/lang/String;
    :sswitch_2
    const-string v0, "[\\p{Digit}]"

    .line 2169
    .restart local v0    # "strRet":Ljava/lang/String;
    goto :goto_0

    .line 2171
    .end local v0    # "strRet":Ljava/lang/String;
    :sswitch_3
    const-string v0, "[\\p{Digit}\\p{Punct}$=+|^]"

    .line 2172
    .restart local v0    # "strRet":Ljava/lang/String;
    goto :goto_0

    .line 2174
    .end local v0    # "strRet":Ljava/lang/String;
    :sswitch_4
    const-string v0, "[\\p{Upper}\\p{Digit}\\p{Punct}$=+|^]"

    .line 2175
    .restart local v0    # "strRet":Ljava/lang/String;
    goto :goto_0

    .line 2177
    .end local v0    # "strRet":Ljava/lang/String;
    :sswitch_5
    const-string v0, "[\\p{Lower}\\p{Digit}\\p{Punct}$=+|^]"

    .line 2178
    .restart local v0    # "strRet":Ljava/lang/String;
    goto :goto_0

    .line 2180
    .end local v0    # "strRet":Ljava/lang/String;
    :sswitch_6
    const-string v0, "[\\x00-\\xff\\u0000-\\uffff]"

    .line 2181
    .restart local v0    # "strRet":Ljava/lang/String;
    goto :goto_0

    .line 2183
    .end local v0    # "strRet":Ljava/lang/String;
    :sswitch_7
    const-string v0, "[\\x00-\\xff\\u0000-\\uffff]"

    .line 2184
    .restart local v0    # "strRet":Ljava/lang/String;
    goto :goto_0

    .line 2160
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x4d -> :sswitch_6
        0x4e -> :sswitch_2
        0x58 -> :sswitch_4
        0x61 -> :sswitch_1
        0x6d -> :sswitch_7
        0x6e -> :sswitch_3
        0x78 -> :sswitch_5
    .end sparse-switch
.end method

.method private getAppResSound(Ljava/lang/String;)I
    .locals 4
    .param p1, "sndId"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "raw"

    iget-object v3, p0, Lcom/access/bml/BMLPeer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "resId":I
    return v0
.end method

.method private getAppResString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strId"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    iget-object v3, p0, Lcom/access/bml/BMLPeer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "resId":I
    iget-object v1, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public BMLPeer_Finalize()V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/access/bml/BMLPeer;->BMLPeer_NativeFinalize()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    .line 163
    return-void
.end method

.method public native BMLPeer_Initialize()V
.end method

.method public native BMLPeer_NativeFinalize()V
.end method

.method public native BMLPeer_SetAreaBroadcastInfo(I)V
.end method

.method public DsmccPeer_NotifyIdleStatus(II)I
    .locals 2
    .param p1, "in_status"    # I
    .param p2, "in_subcode"    # I

    .prologue
    .line 1996
    const/4 v0, 0x0

    .line 2001
    .local v0, "DSMCC_E_OK":I
    const/4 v1, 0x0

    return v1
.end method

.method public ResetContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "new_context"    # Landroid/content/Context;

    .prologue
    .line 106
    const-string v0, "BMLPeer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResetContext PREV: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NEW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-object p1, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v0, p1}, Lcom/access/bml/BMLView;->ResetContext(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public appExIMEStartPeer(Lcom/access/bml/BMLDtvType$APPExIMEParam;)Z
    .locals 4
    .param p1, "in_param"    # Lcom/access/bml/BMLDtvType$APPExIMEParam;

    .prologue
    .line 175
    iget-object v3, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v3}, Lcom/access/bml/BMLView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 176
    .local v1, "handler":Landroid/os/Handler;
    if-nez v1, :cond_0

    .line 177
    const/4 v3, 0x0

    .line 437
    :goto_0
    return v3

    .line 179
    :cond_0
    const/4 v0, 0x1

    .line 180
    .local v0, "SupportWapInputFormat":Z
    move-object v2, p1

    .line 182
    .local v2, "param":Lcom/access/bml/BMLDtvType$APPExIMEParam;
    new-instance v3, Lcom/access/bml/BMLPeer$1;

    invoke-direct {v3, p0, v2}, Lcom/access/bml/BMLPeer$1;-><init>(Lcom/access/bml/BMLPeer;Lcom/access/bml/BMLDtvType$APPExIMEParam;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public bitBlt([IIIIIIIIIZ)V
    .locals 11
    .param p1, "colors"    # [I
    .param p2, "srcX"    # I
    .param p3, "srcY"    # I
    .param p4, "srcW"    # I
    .param p5, "srcH"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "w"    # I
    .param p9, "h"    # I
    .param p10, "alpha"    # Z

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/access/bml/BMLView;->bitBlt([IIIIIIIIIZ)V

    .line 2057
    return-void
.end method

.method public copyArea(IIIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "dx"    # I
    .param p6, "dy"    # I

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/access/bml/BMLView;->copyArea(IIIIII)V

    .line 2050
    return-void
.end method

.method public drawLine(IIIIIIIII)V
    .locals 10
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "clipX"    # I
    .param p6, "clipY"    # I
    .param p7, "clipW"    # I
    .param p8, "clipH"    # I
    .param p9, "color"    # I

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/access/bml/BMLView;->drawLine(IIIIIIIII)V

    .line 2133
    return-void
.end method

.method public drawText(IILjava/lang/String;II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "color"    # I
    .param p5, "fontId"    # I

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/access/bml/BMLView;->drawText(IILjava/lang/String;II)V

    .line 2100
    return-void
.end method

.method public drawText(IILjava/lang/String;IIIIII)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "color"    # I
    .param p5, "fontId"    # I
    .param p6, "clip_x"    # I
    .param p7, "clip_y"    # I
    .param p8, "clip_w"    # I
    .param p9, "clip_h"    # I

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/access/bml/BMLView;->drawText(IILjava/lang/String;IIIIII)V

    .line 2117
    return-void
.end method

.method public dtvAudio_ClosePeer(I)V
    .locals 4
    .param p1, "in_id"    # I

    .prologue
    .line 1129
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 1130
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1131
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 1134
    :cond_0
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1135
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 1136
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 1140
    :cond_1
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/access/bml/BMLPeer$BMLDtvAudio;

    iget-object v1, v2, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mFileName:Ljava/lang/String;

    .line 1141
    .local v1, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    if-eqz v1, :cond_2

    .line 1143
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1144
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1147
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    return-void
.end method

.method public dtvAudio_FinalizePeer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1012
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1013
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 1015
    .local v0, "enumDtvAudio":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/access/bml/BMLPeer$BMLDtvAudio;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1020
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 1025
    .end local v0    # "enumDtvAudio":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/access/bml/BMLPeer$BMLDtvAudio;>;"
    :cond_0
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 1026
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1027
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 1030
    :cond_1
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 1031
    iput-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 1034
    :cond_2
    iput-object v4, p0, Lcom/access/bml/BMLPeer;->mRomSoundPlayer:Landroid/media/MediaPlayer;

    .line 1035
    return-void

    .line 1016
    .restart local v0    # "enumDtvAudio":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/access/bml/BMLPeer$BMLDtvAudio;>;"
    :cond_3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/access/bml/BMLPeer$BMLDtvAudio;

    iget-object v2, v2, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1017
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public dtvAudio_GetObjectIDPeer(I[B)I
    .locals 4
    .param p1, "in_id"    # I
    .param p2, "out_object_id"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1285
    iget-object v1, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1286
    const/16 v1, 0x101

    new-array v0, v1, [B

    .line 1287
    .local v0, "objectID":[B
    iget-object v1, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/access/bml/BMLPeer$BMLDtvAudio;

    iget-object v1, v1, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mObjectID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1288
    array-length v1, v0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v2

    .line 1294
    .end local v0    # "objectID":[B
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public dtvAudio_GetStatusPeer(I)I
    .locals 2
    .param p1, "in_id"    # I

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/access/bml/BMLPeer$BMLDtvAudio;

    iget v0, v0, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mStatus:I

    return v0
.end method

.method public dtvAudio_InitializePeer(I)I
    .locals 1
    .param p1, "in_profile"    # I

    .prologue
    .line 1000
    const/4 v0, 0x0

    return v0
.end method

.method public dtvAudio_OpenPeer([BII[B)I
    .locals 11
    .param p1, "in_data"    # [B
    .param p2, "in_mime"    # I
    .param p3, "in_status"    # I
    .param p4, "in_object_id"    # [B

    .prologue
    .line 1058
    new-instance v1, Lcom/access/bml/BMLPeer$BMLDtvAudio;

    invoke-direct {v1, p0}, Lcom/access/bml/BMLPeer$BMLDtvAudio;-><init>(Lcom/access/bml/BMLPeer;)V

    .line 1059
    .local v1, "dtvAudio":Lcom/access/bml/BMLPeer$BMLDtvAudio;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p4}, Ljava/lang/String;-><init>([B)V

    iput-object v8, v1, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mObjectID:Ljava/lang/String;

    .line 1060
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mObjectID:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".aac"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mFileName:Ljava/lang/String;

    .line 1061
    iput p3, v1, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mStatus:I

    .line 1065
    iget-object v8, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1066
    iget-object v8, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 1068
    .local v4, "enumDtvAudio":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/access/bml/BMLPeer$BMLDtvAudio;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1086
    .end local v4    # "enumDtvAudio":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/access/bml/BMLPeer$BMLDtvAudio;>;"
    :cond_1
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    iget-object v9, v1, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mFileName:Ljava/lang/String;

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1089
    .local v5, "file":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1090
    .local v6, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v6, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1091
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1092
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "chmod 777 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1102
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    const/4 v7, 0x0

    .line 1103
    .local v7, "key":I
    const/4 v0, 0x0

    .line 1105
    .local v0, "bFindSlot":Z
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 1106
    iget-object v8, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v0, 0x0

    .line 1107
    :goto_1
    if-eqz v0, :cond_2

    .line 1108
    iget-object v8, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    .end local v0    # "bFindSlot":Z
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "key":I
    :goto_2
    return v7

    .line 1069
    .restart local v4    # "enumDtvAudio":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/access/bml/BMLPeer$BMLDtvAudio;>;"
    :cond_3
    iget-object v9, v1, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mFileName:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/access/bml/BMLPeer$BMLDtvAudio;

    iget-object v8, v8, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mFileName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1073
    const/4 v7, -0x1

    goto :goto_2

    .line 1093
    .end local v4    # "enumDtvAudio":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/access/bml/BMLPeer$BMLDtvAudio;>;"
    .restart local v5    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 1095
    .local v3, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1096
    .end local v3    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 1098
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1106
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bFindSlot":Z
    .restart local v7    # "key":I
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public dtvAudio_SetStatusPeer(II)I
    .locals 7
    .param p1, "in_id"    # I
    .param p2, "in_status"    # I

    .prologue
    const/4 v6, 0x1

    .line 1168
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/access/bml/BMLPeer$BMLDtvAudio;

    iget-object v1, v4, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mFileName:Ljava/lang/String;

    .line 1169
    .local v1, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1170
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 1172
    .local v3, "stop_noevent":Z
    if-nez v1, :cond_0

    .line 1175
    const/4 v4, -0x1

    .line 1243
    :goto_0
    return v4

    .line 1179
    :cond_0
    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    .line 1180
    const/4 p2, 0x0

    .line 1181
    const/4 v3, 0x1

    .line 1184
    :cond_1
    if-ne p2, v6, :cond_5

    .line 1185
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_4

    .line 1186
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1187
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 1189
    :cond_2
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 1197
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1198
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1209
    :goto_2
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1211
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 1212
    iput p1, p0, Lcom/access/bml/BMLPeer;->mCurAudioPlayingId:I

    .line 1214
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/access/bml/BMLPeer$5;

    invoke-direct {v5, p0}, Lcom/access/bml/BMLPeer$5;-><init>(Lcom/access/bml/BMLPeer;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1241
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/access/bml/BMLPeer$BMLDtvAudio;

    iput p2, v4, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mStatus:I

    move v4, v2

    .line 1243
    goto :goto_0

    .line 1192
    :cond_4
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    goto :goto_1

    .line 1199
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 1202
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 1205
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 1207
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1229
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    if-nez p2, :cond_3

    .line 1230
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/access/bml/BMLPeer;->mCurAudioPlayingId:I

    if-ne v4, p1, :cond_3

    .line 1231
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1232
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 1234
    :cond_6
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mAudioPlayerTbl:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/access/bml/BMLPeer$BMLDtvAudio;

    iget v4, v4, Lcom/access/bml/BMLPeer$BMLDtvAudio;->mStatus:I

    if-ne v4, v6, :cond_3

    if-nez v3, :cond_3

    .line 1236
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public dtvControl_FinalizePeer()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public abstract dtvControl_GetAffiliateIDPeer([B)I
.end method

.method public abstract dtvControl_GetCurrentDatePeer(ILcom/access/bml/BMLDtvType$DTVDate;Lcom/access/bml/BMLDtvType$IntPtr;)V
.end method

.method public abstract dtvControl_GetEventIDPeer()I
.end method

.method public dtvControl_GetIRDIDPeer(I[B)V
    .locals 5
    .param p1, "in_type"    # I
    .param p2, "out_data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 803
    const/16 v3, 0x15

    new-array v1, v3, [B

    .line 805
    .local v1, "irdid":[B
    packed-switch p1, :pswitch_data_0

    .line 824
    :cond_0
    :goto_0
    array-length v3, v1

    invoke-static {v1, v4, p2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    return-void

    .line 808
    :pswitch_0
    iget-object v3, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-object v3, v3, Lcom/access/bml/BMLView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 810
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 811
    goto :goto_0

    .line 814
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_1
    :pswitch_1
    iget-object v3, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-object v3, v3, Lcom/access/bml/BMLView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 815
    .local v2, "simNumber":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 816
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 817
    goto :goto_0

    .line 805
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dtvControl_GetProgramRelativeTimePeer()I
    .locals 10

    .prologue
    .line 742
    iget-object v6, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v6}, Lcom/access/bml/BMLView;->BML_DsmccAPI_DetectEIT()I

    move-result v6

    if-nez v6, :cond_0

    .line 746
    const/4 v2, -0x1

    .line 763
    :goto_0
    return v2

    .line 750
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 751
    .local v3, "rightNow":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 752
    .local v0, "currTime":J
    iget-object v6, p0, Lcom/access/bml/BMLPeer;->mDtvControl:Lcom/access/bml/BMLDtvControl;

    invoke-virtual {v6}, Lcom/access/bml/BMLDtvControl;->getmServiceStart()J

    move-result-wide v4

    .line 754
    .local v4, "startTime":J
    sub-long v6, v0, v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 763
    .local v2, "relative_time":I
    goto :goto_0
.end method

.method public dtvControl_GetUserAgentPeer([B[B)V
    .locals 6
    .param p1, "out_model_name"    # [B
    .param p2, "out_irdid"    # [B

    .prologue
    const/16 v4, 0x15

    const/4 v5, 0x0

    .line 771
    new-array v3, v4, [B

    .line 772
    .local v3, "name":[B
    new-array v1, v4, [B

    .line 776
    .local v1, "irdid":[B
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 777
    .local v2, "model":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 778
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 779
    array-length v4, v3

    invoke-static {v3, v5, p1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 781
    :cond_0
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-object v4, v4, Lcom/access/bml/BMLView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 783
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 784
    array-length v4, v1

    invoke-static {v1, v5, p2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 790
    :cond_1
    return-void
.end method

.method public dtvControl_InitializePeer(I)I
    .locals 1
    .param p1, "in_profile"    # I

    .prologue
    .line 458
    new-instance v0, Lcom/access/bml/BMLDtvControl;

    invoke-direct {v0, p1}, Lcom/access/bml/BMLDtvControl;-><init>(I)V

    iput-object v0, p0, Lcom/access/bml/BMLPeer;->mDtvControl:Lcom/access/bml/BMLDtvControl;

    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public dtvControl_NotifyDocumentPeer(II[B)V
    .locals 0
    .param p1, "in_component_tag"    # I
    .param p2, "in_module_id"    # I
    .param p3, "in_resource"    # [B

    .prologue
    .line 489
    return-void
.end method

.method public dtvControl_NotifyHaltPeer(I)V
    .locals 2
    .param p1, "in_status"    # I

    .prologue
    .line 509
    iget-object v1, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v1}, Lcom/access/bml/BMLView;->DismissDialog()V

    .line 512
    iget-object v1, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v1}, Lcom/access/bml/BMLView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 513
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 515
    new-instance v1, Lcom/access/bml/BMLPeer$2;

    invoke-direct {v1, p0}, Lcom/access/bml/BMLPeer$2;-><init>(Lcom/access/bml/BMLPeer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 528
    :cond_0
    return-void
.end method

.method public dtvControl_NotifyLocationPeer([B)V
    .locals 0
    .param p1, "in_uri"    # [B

    .prologue
    .line 540
    return-void
.end method

.method public dtvControl_NotifyServicePeer(III)V
    .locals 4
    .param p1, "in_original_network_id"    # I
    .param p2, "in_transport_stream_id"    # I
    .param p3, "in_service_id"    # I

    .prologue
    .line 555
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 556
    .local v0, "rightNow":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 558
    .local v2, "startTime":J
    iget-object v1, p0, Lcom/access/bml/BMLPeer;->mDtvControl:Lcom/access/bml/BMLDtvControl;

    invoke-virtual {v1, v2, v3}, Lcom/access/bml/BMLDtvControl;->setmServiceStart(J)V

    .line 563
    return-void
.end method

.method public dtvControl_PlayRomSoundPeer(I)I
    .locals 6
    .param p1, "in_sound_id"    # I

    .prologue
    const/4 v3, 0x0

    .line 583
    if-ltz p1, :cond_3

    const/16 v4, 0x10

    if-ge p1, v4, :cond_3

    .line 586
    const/16 v4, 0xa

    if-ge p1, v4, :cond_1

    .line 587
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "oneseg_0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "sndName":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/system/etc/one-seg/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ogg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 595
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 597
    .local v1, "files":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 601
    const/4 v3, -0x1

    .line 643
    .end local v1    # "files":Ljava/io/File;
    .end local v2    # "sndName":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 589
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "oneseg_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "sndName":Ljava/lang/String;
    goto :goto_0

    .line 604
    .restart local v1    # "files":Ljava/io/File;
    :cond_2
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/access/bml/BMLPeer;->mRomSoundPlayer:Landroid/media/MediaPlayer;

    .line 607
    :try_start_0
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mRomSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 608
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mRomSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 620
    :goto_2
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mRomSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 621
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mRomSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 623
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mRomSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_0

    .line 624
    iget-object v4, p0, Lcom/access/bml/BMLPeer;->mRomSoundPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/access/bml/BMLPeer$3;

    invoke-direct {v5, p0}, Lcom/access/bml/BMLPeer$3;-><init>(Lcom/access/bml/BMLPeer;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_1

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 613
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 616
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 617
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 640
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "files":Ljava/io/File;
    .end local v2    # "sndName":Ljava/lang/String;
    :cond_3
    const/16 v3, -0x3eb

    goto :goto_1
.end method

.method public dtvControl_SaveImageToMemoryCardPeer(I[BZ[B)I
    .locals 6
    .param p1, "in_func"    # I
    .param p2, "in_filename"    # [B
    .param p3, "in_overwrite"    # Z
    .param p4, "in_data"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 667
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 669
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    .line 672
    .local v2, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "EXTERNAL_STORAGE"

    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "dirPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    .local v1, "file":Ljava/io/File;
    if-nez p3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 675
    const/16 v4, -0x41d

    .line 716
    .end local v0    # "dirPath":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    :goto_0
    return v4

    .line 679
    .restart local v0    # "dirPath":Ljava/lang/String;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileName":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 680
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v3, p4}, Ljava/io/FileOutputStream;->write([B)V

    .line 681
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    const/4 v4, 0x0

    goto :goto_0

    .line 696
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 702
    :goto_1
    const/4 v4, -0x1

    goto :goto_0

    .line 704
    .end local v0    # "dirPath":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted_ro"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 709
    const/16 v4, -0x41b

    goto :goto_0

    .line 716
    :cond_2
    const/16 v4, -0x41a

    goto :goto_0

    .line 691
    .restart local v0    # "dirPath":Ljava/lang/String;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileName":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 686
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public dtvControl_SaveImageToMemoryCard_CancelPeer()V
    .locals 0

    .prologue
    .line 730
    return-void
.end method

.method public dtvControl_SetTitlePeer([B)V
    .locals 0
    .param p1, "in_title"    # [B

    .prologue
    .line 866
    return-void
.end method

.method public abstract dtvEPG_FinalizePeer()V
.end method

.method public abstract dtvEPG_GetEventDurationPeer(IIIILcom/access/bml/BMLDtvType$IntPtr;)I
.end method

.method public abstract dtvEPG_GetEventStartTimePeer(IIIILcom/access/bml/BMLDtvType$DTVDate;)I
.end method

.method public abstract dtvEPG_InitializePeer(I)I
.end method

.method public abstract dtvEvent_SetUsedKeyListPeer(I)I
.end method

.method public abstract dtvGraphic_SetFullDataDisplayAreaPeer(II)I
.end method

.method public dtvNet_GetConnectionTypePeer()I
    .locals 5

    .prologue
    .line 1921
    iget-object v3, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1922
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1927
    .local v2, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1928
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 1931
    .local v1, "netType":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1932
    const/16 v3, 0x193

    .line 1938
    .end local v1    # "netType":I
    :goto_0
    return v3

    .line 1933
    .restart local v1    # "netType":I
    :cond_0
    if-nez v1, :cond_1

    .line 1934
    const/16 v3, 0x12c

    goto :goto_0

    .line 1938
    .end local v1    # "netType":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public abstract dtvNet_GetIPInfoPeer([B[B)I
.end method

.method public dtvNet_IsIPConnectedPeer()I
    .locals 6

    .prologue
    .line 1955
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1974
    const/4 v5, 0x0

    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    return v5

    .line 1956
    .restart local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 1957
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1958
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1959
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 1963
    const/4 v5, 0x1

    goto :goto_0

    .line 1967
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 1971
    .local v2, "ex":Ljava/net/SocketException;
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public dtvSystem_EnterStatusPeer(I)I
    .locals 1
    .param p1, "in_status"    # I

    .prologue
    .line 916
    const/4 v0, 0x0

    return v0
.end method

.method public dtvSystem_LeaveStatusPeer(I)I
    .locals 1
    .param p1, "in_status"    # I

    .prologue
    .line 944
    const/4 v0, 0x0

    return v0
.end method

.method public dtvSystem_NotifyErrorPeer(I)I
    .locals 3
    .param p1, "in_status"    # I

    .prologue
    const/4 v2, 0x0

    .line 970
    const/4 v1, -0x8

    if-eq p1, v1, :cond_0

    const/16 v1, -0xa

    if-ne p1, v1, :cond_1

    .line 982
    :cond_0
    :goto_0
    return v2

    .line 974
    :cond_1
    iget-object v1, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-boolean v1, v1, Lcom/access/bml/BMLView;->m_bSuppressNotiPopup:Z

    if-nez v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v1}, Lcom/access/bml/BMLView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 976
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/access/bml/BMLPeer$4;

    invoke-direct {v1, p0}, Lcom/access/bml/BMLPeer$4;-><init>(Lcom/access/bml/BMLPeer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public dtvXDPA_GetCurPosCancelPeer()V
    .locals 2

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget v0, v0, Lcom/access/bml/BMLView;->mPosResult:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget v0, v0, Lcom/access/bml/BMLView;->mPosResult:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/access/bml/BMLView;->mPosResult:I

    .line 1764
    :cond_1
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v0}, Lcom/access/bml/BMLView;->stopLocationService()V

    .line 1765
    return-void
.end method

.method public dtvXDPA_GetCurPosPeer(ILcom/access/bml/BMLDtvType$TDTVCurPosInfo;)I
    .locals 6
    .param p1, "in_pos_info"    # I
    .param p2, "out_info"    # Lcom/access/bml/BMLDtvType$TDTVCurPosInfo;

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-object v1, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-wide v2, v1, Lcom/access/bml/BMLView;->mPosCount:D

    const-wide v4, 0x4103d07800000000L    # 162319.0

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/access/bml/BMLView;->mPosCount:D

    .line 1680
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-wide v0, v0, Lcom/access/bml/BMLView;->mPosCount:D

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    const/4 v1, -0x3

    iput v1, v0, Lcom/access/bml/BMLView;->mPosResult:I

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget v0, v0, Lcom/access/bml/BMLView;->mPosResult:I

    if-nez v0, :cond_1

    .line 1685
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-object v0, v0, Lcom/access/bml/BMLView;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 1686
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-object v0, v0, Lcom/access/bml/BMLView;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/access/bml/BMLDtvType$TDTVCurPosInfo;->fLongitude:Ljava/lang/String;

    .line 1687
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-object v0, v0, Lcom/access/bml/BMLView;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/access/bml/BMLDtvType$TDTVCurPosInfo;->fLatitude:Ljava/lang/String;

    .line 1688
    const/4 v0, 0x0

    iput v0, p2, Lcom/access/bml/BMLDtvType$TDTVCurPosInfo;->fGeodeticSystem:I

    .line 1689
    const/4 v0, 0x4

    iput v0, p2, Lcom/access/bml/BMLDtvType$TDTVCurPosInfo;->fErrorRange:I

    .line 1700
    :goto_0
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v0}, Lcom/access/bml/BMLView;->stopLocationService()V

    .line 1703
    :cond_1
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget v0, v0, Lcom/access/bml/BMLView;->mPosResult:I

    return v0

    .line 1697
    :cond_2
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/access/bml/BMLView;->mPosResult:I

    goto :goto_0
.end method

.method public dtvXDPA_GetRcvCondCancelPeer()V
    .locals 2

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget v0, v0, Lcom/access/bml/BMLView;->mRcvStrength:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget v0, v0, Lcom/access/bml/BMLView;->mRcvStrength:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/access/bml/BMLView;->mRcvStrength:I

    .line 1818
    :cond_1
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v0}, Lcom/access/bml/BMLView;->stopTelephonyService()V

    .line 1819
    return-void
.end method

.method public dtvXDPA_GetRcvCondPeer()I
    .locals 6

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-object v1, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-wide v2, v1, Lcom/access/bml/BMLView;->mRcvCount:D

    const-wide v4, 0x4103d07800000000L    # 162319.0

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/access/bml/BMLView;->mRcvCount:D

    .line 1782
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-object v0, v0, Lcom/access/bml/BMLView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/access/bml/BMLView;->mRcvStrength:I

    .line 1784
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget v0, v0, Lcom/access/bml/BMLView;->mRcvStrength:I

    .line 1803
    :goto_0
    return v0

    .line 1788
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget v0, v0, Lcom/access/bml/BMLView;->mRcvStrength:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 1792
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v0}, Lcom/access/bml/BMLView;->stopTelephonyService()V

    .line 1795
    :cond_1
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-wide v0, v0, Lcom/access/bml/BMLView;->mRcvCount:D

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 1796
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/access/bml/BMLView;->mRcvCount:D

    .line 1797
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    const/4 v1, -0x3

    iput v1, v0, Lcom/access/bml/BMLView;->mRcvStrength:I

    .line 1801
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget v0, v0, Lcom/access/bml/BMLView;->mRcvStrength:I

    goto :goto_0

    .line 1803
    :cond_2
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget v0, v0, Lcom/access/bml/BMLView;->mRcvStrength:I

    goto :goto_0
.end method

.method public dtvXDPA_MailToPeer([B[B[B)I
    .locals 8
    .param p1, "in_subject"    # [B
    .param p2, "in_body"    # [B
    .param p3, "in_to_address"    # [B

    .prologue
    const/4 v7, 0x0

    .line 1366
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1367
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1368
    const-string v2, "text/csv"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1371
    :try_start_0
    const-string v2, "android.intent.extra.SUBJECT"

    new-instance v3, Ljava/lang/String;

    const-string v4, "SJIS"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1372
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/String;

    const-string v4, "SJIS"

    invoke-direct {v3, p2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    const-string v6, "SJIS"

    invoke-direct {v5, p3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    :goto_0
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    const-string v3, "Send Email"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1382
    return v7

    .line 1376
    :catch_0
    move-exception v0

    .line 1378
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public dtvXDPA_MailTo_CancelPeer()V
    .locals 0

    .prologue
    .line 1397
    return-void
.end method

.method public dtvXDPA_PhoneToPeer(Ljava/lang/String;)I
    .locals 4
    .param p1, "in_phone_number"    # Ljava/lang/String;

    .prologue
    .line 1418
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1419
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1420
    iget-object v1, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1422
    const/4 v1, 0x0

    return v1
.end method

.method public dtvXDPA_PhoneTo_CancelPeer()V
    .locals 0

    .prologue
    .line 1437
    return-void
.end method

.method public dtvXDPA_SaveExAppFilePeer([B[B[BZ)I
    .locals 1
    .param p1, "in_src_path"    # [B
    .param p2, "in_type"    # [B
    .param p3, "in_title"    # [B
    .param p4, "in_executable_flag"    # Z

    .prologue
    .line 1462
    const/4 v0, 0x0

    return v0
.end method

.method public dtvXDPA_SaveExAppFile_CancelPeer()V
    .locals 0

    .prologue
    .line 1477
    return-void
.end method

.method public dtvXDPA_StartResidentAppPeer([BI[B[Ljava/lang/String;)I
    .locals 7
    .param p1, "in_app_name"    # [B
    .param p2, "in_show_av"    # I
    .param p3, "in_return_uri"    # [B
    .param p4, "in_ex_info"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/16 v2, -0x3eb

    .line 1502
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 1509
    .local v0, "app_name":Ljava/lang/String;
    const-string v4, "ComBrowser"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1510
    array-length v4, p4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 1534
    :cond_0
    :goto_0
    return v2

    .line 1522
    :cond_1
    aget-object v4, p4, v6

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, p4, v6

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1523
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    aget-object v4, p4, v3

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1524
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 1525
    goto :goto_0

    .line 1529
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v4, "BookmarkList"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1530
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v2}, Lcom/access/bml/BMLView;->BML_BookmarkInitialize()V

    .line 1531
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v2}, Lcom/access/bml/BMLView;->BML_CB_BookmarkStartBookmarkList()I

    move v2, v3

    .line 1532
    goto :goto_0
.end method

.method public dtvXDPA_StartResidentApp_CancelPeer()V
    .locals 0

    .prologue
    .line 1550
    return-void
.end method

.method public abstract dtvXDPA_TuneWithRFPeer(IIII)I
.end method

.method public dtvXDPA_WriteAddressBookInfoPeer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "in_name"    # Ljava/lang/String;
    .param p2, "in_kana"    # Ljava/lang/String;
    .param p3, "in_tel"    # Ljava/lang/String;
    .param p4, "in_mail"    # Ljava/lang/String;

    .prologue
    .line 1575
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1576
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1578
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const-string v2, "phonetic_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    const-string v2, "phone"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    const-string v2, "phone_type"

    iget-object v3, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    const-string v2, "email"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const-string v2, "email_type"

    iget-object v3, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-static {v4}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1585
    iget-object v2, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1587
    const/4 v2, 0x0

    return v2
.end method

.method public dtvXDPA_WriteAddressBookInfo_CancelPeer()V
    .locals 0

    .prologue
    .line 1602
    return-void
.end method

.method public dtvXDPA_WriteSchInfoPeer(Lcom/access/bml/BMLDtvType$DTVDate;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 9
    .param p1, "in_date"    # Lcom/access/bml/BMLDtvType$DTVDate;
    .param p2, "in_title"    # Ljava/lang/String;
    .param p3, "in_text"    # Ljava/lang/String;
    .param p4, "in_sound_flag"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1636
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1637
    .local v0, "cal":Ljava/util/Calendar;
    iget-short v1, p1, Lcom/access/bml/BMLDtvType$DTVDate;->mYear:S

    iget-byte v2, p1, Lcom/access/bml/BMLDtvType$DTVDate;->mMonth:B

    iget-byte v3, p1, Lcom/access/bml/BMLDtvType$DTVDate;->mDay:B

    iget-byte v4, p1, Lcom/access/bml/BMLDtvType$DTVDate;->mHour:B

    iget-byte v5, p1, Lcom/access/bml/BMLDtvType$DTVDate;->mMinute:B

    iget-byte v6, p1, Lcom/access/bml/BMLDtvType$DTVDate;->mSecond:B

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1638
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 1640
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1641
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1642
    const-string v1, "beginTime"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v7, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1643
    const-string v1, "allDay"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1646
    const-string v1, "title"

    invoke-virtual {v7, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1647
    const-string v1, "description"

    invoke-virtual {v7, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1648
    iget-object v1, p0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1650
    return v8
.end method

.method public dtvXDPA_WriteSchInfo_CancelPeer()V
    .locals 0

    .prologue
    .line 1665
    return-void
.end method

.method public fillRect(IIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "color"    # I

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/access/bml/BMLView;->fillRect(IIIII)V

    .line 2046
    return-void
.end method

.method public findFont(Ljava/lang/String;IZZ)I
    .locals 1
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "isBold"    # Z
    .param p4, "isItalic"    # Z

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/access/bml/BMLView;->findFont(Ljava/lang/String;IZZ)I

    move-result v0

    return v0
.end method

.method public getFont(I)Lcom/access/bml/BMLFont;
    .locals 1
    .param p1, "fontId"    # I

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v0, p1}, Lcom/access/bml/BMLView;->getFont(I)Lcom/access/bml/BMLFont;

    move-result-object v0

    return-object v0
.end method

.method public getLastMouseX()I
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v0}, Lcom/access/bml/BMLView;->getLastMouseX()I

    move-result v0

    return v0
.end method

.method public getLastMouseY()I
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v0}, Lcom/access/bml/BMLView;->getLastMouseY()I

    move-result v0

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v0}, Lcom/access/bml/BMLView;->getScreenHeight()I

    move-result v0

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v0}, Lcom/access/bml/BMLView;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method public getTextWidth(Ljava/lang/String;I)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontId"    # I

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v0, p1, p2}, Lcom/access/bml/BMLView;->getTextWidth(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public initView(Lcom/access/bml/BMLView;)V
    .locals 0
    .param p1, "view"    # Lcom/access/bml/BMLView;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    .line 103
    return-void
.end method

.method public refreshScreen()V
    .locals 1

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v0}, Lcom/access/bml/BMLView;->refreshScreen()V

    .line 2033
    return-void
.end method
