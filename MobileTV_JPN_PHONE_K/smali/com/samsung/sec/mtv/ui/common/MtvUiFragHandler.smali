.class public Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
.super Ljava/lang/Object;
.source "MtvUiFragHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$8;,
        Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    }
.end annotation


# static fields
.field public static final ACT_FILE_PLAYER:I = 0x1

.field public static final ACT_TV_LINKS:I = 0x2

.field public static final ACT_UI_PLAYER:I = 0x0

.field public static final CLEAR_TIMERS_INT_VAL:I = -0x1

.field private static final OTHER_DATA_ARGS_INDEX:I = 0x1

.field private static final OTHER_DATA_CUSTOM_PARENT_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MtvUiFragHandler"


# instance fields
.field private activityType:I

.field private fragHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private fragMgr:Landroid/app/FragmentManager;

.field private isEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mTimedCaptureFrag:Ljava/lang/Runnable;

.field private mTimedFPImgFrag:Ljava/lang/Runnable;

.field private mTimedFPVidFrag:Ljava/lang/Runnable;

.field private mTimedMainFrag:Ljava/lang/Runnable;

.field private mTimedStatusFrag:Ljava/lang/Runnable;

.field private mTimedVolumeControlBarFrag:Ljava/lang/Runnable;

.field private viewGroup:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    .line 96
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedMainFrag:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedStatusFrag:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$4;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$4;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedVolumeControlBarFrag:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$5;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$5;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedCaptureFrag:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$6;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$6;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedFPImgFrag:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$7;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$7;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedFPVidFrag:Ljava/lang/Runnable;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;II)V
    .locals 1
    .param p1, "fragMgr"    # Landroid/app/FragmentManager;
    .param p2, "activityType"    # I
    .param p3, "viewGroup"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    .line 96
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedMainFrag:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedStatusFrag:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$4;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$4;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedVolumeControlBarFrag:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$5;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$5;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedCaptureFrag:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$6;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$6;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedFPImgFrag:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$7;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$7;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedFPVidFrag:Ljava/lang/Runnable;

    .line 91
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    .line 92
    iput p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->activityType:I

    .line 93
    iput p3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->viewGroup:I

    .line 94
    return-void
.end method

.method private addFragInternal(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V
    .locals 4
    .param p1, "fragType"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    .param p2, "timeOut"    # J

    .prologue
    .line 162
    const-string v0, "MtvUiFragHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFragInternal!!! FragType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public static addUnManagedFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;Landroid/os/Bundle;ILandroid/app/Activity;)V
    .locals 3
    .param p0, "fragType"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "containerViewId"    # I
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 592
    if-eqz p3, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$8;->$SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE:[I

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 601
    :pswitch_0
    invoke-virtual {p3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 602
    .local v0, "fTrans":Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;

    invoke-direct {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 603
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 608
    .end local v0    # "fTrans":Landroid/app/FragmentTransaction;
    :pswitch_1
    invoke-virtual {p3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 609
    .restart local v0    # "fTrans":Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;

    invoke-direct {v1, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 610
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 597
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private varargs getNewFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;[I)Landroid/app/Fragment;
    .locals 4
    .param p1, "fragType"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    .param p2, "otherData"    # [I

    .prologue
    const/4 v3, 0x1

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "newFragment":Landroid/app/Fragment;
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$8;->$SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE:[I

    invoke-virtual {p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 341
    const/4 v0, 0x0

    .line 344
    :goto_0
    return-object v0

    .line 278
    :pswitch_0
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;-><init>()V

    .line 279
    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 281
    :pswitch_1
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;-><init>()V

    .line 282
    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 284
    :pswitch_2
    const/4 v0, 0x0

    .line 285
    goto :goto_0

    .line 287
    :pswitch_3
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiCaptureFrag;-><init>()V

    .line 288
    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 292
    :pswitch_4
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;-><init>()V

    .line 293
    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 295
    :pswitch_5
    new-instance v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;-><init>()V

    .line 296
    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 298
    :pswitch_6
    new-instance v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;-><init>()V

    .line 299
    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 301
    :pswitch_7
    new-instance v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;-><init>()V

    .line 302
    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 304
    :pswitch_8
    new-instance v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;-><init>()V

    .line 305
    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 307
    :pswitch_9
    new-instance v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;-><init>()V

    .line 308
    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 310
    :pswitch_a
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getInstance()Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    move-result-object v0

    .line 311
    goto :goto_0

    .line 313
    :pswitch_b
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;-><init>()V

    .line 314
    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 316
    :pswitch_c
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->activityType:I

    if-nez v1, :cond_0

    .line 317
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;-><init>(I)V

    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 319
    :cond_0
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    invoke-direct {v0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;-><init>(I)V

    .line 320
    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 322
    :pswitch_d
    if-eqz p2, :cond_1

    array-length v1, p2

    if-lt v1, v3, :cond_1

    .line 324
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    aget v1, p2, v3

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;-><init>(I)V

    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 327
    :cond_1
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;-><init>()V

    .line 328
    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 331
    :pswitch_e
    if-eqz p2, :cond_2

    array-length v1, p2

    if-lt v1, v3, :cond_2

    .line 333
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    aget v1, p2, v3

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;-><init>(I)V

    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 337
    :cond_2
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;

    .end local v0    # "newFragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;-><init>()V

    .line 339
    .restart local v0    # "newFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private getTopFragType()Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    .locals 5

    .prologue
    .line 174
    const-string v2, "MtvUiFragHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopFragType : fragHandler Enabled?: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 178
    .local v1, "fragTypesSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    const-string v2, "MtvUiFragHandler"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 180
    .local v0, "fragTypesArr":[Ljava/lang/Object;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 181
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .line 187
    .end local v0    # "fragTypesArr":[Ljava/lang/Object;
    .end local v1    # "fragTypesSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    :goto_0
    return-object v2

    .line 183
    .restart local v0    # "fragTypesArr":[Ljava/lang/Object;
    .restart local v1    # "fragTypesSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    :cond_0
    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_NONE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    goto :goto_0

    .line 187
    .end local v0    # "fragTypesArr":[Ljava/lang/Object;
    .end local v1    # "fragTypesSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    :cond_1
    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_NONE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    goto :goto_0
.end method

.method private remFragInternal(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V
    .locals 3
    .param p1, "fragType"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .prologue
    .line 168
    const-string v0, "MtvUiFragHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remFragInternal!!! FragType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public static removeUnManagedFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;Landroid/app/Activity;)Z
    .locals 8
    .param p0, "fragType"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 630
    const/4 v4, 0x0

    .line 631
    .local v4, "retVal":Z
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 633
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 636
    .local v1, "fMgr":Landroid/app/FragmentManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 637
    .local v3, "frag":Landroid/app/Fragment;
    if-eqz v3, :cond_0

    .line 639
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 640
    .local v2, "fTrans":Landroid/app/FragmentTransaction;
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 641
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    const/4 v4, 0x1

    .line 650
    .end local v1    # "fMgr":Landroid/app/FragmentManager;
    .end local v2    # "fTrans":Landroid/app/FragmentTransaction;
    .end local v3    # "frag":Landroid/app/Fragment;
    :cond_0
    :goto_0
    return v4

    .line 644
    .restart local v1    # "fMgr":Landroid/app/FragmentManager;
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v4, 0x0

    .line 647
    const-string v5, "MtvUiFragHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V
    .locals 4
    .param p1, "fragType"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    .param p2, "timeOut"    # J

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "mTimedFrag":Ljava/lang/Runnable;
    const-string v1, "MtvUiFragHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTimer: fragType["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] timeOut["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne p1, v1, :cond_2

    .line 197
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedMainFrag:Ljava/lang/Runnable;

    .line 209
    :cond_0
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-nez v1, :cond_7

    .line 210
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    :cond_1
    :goto_1
    return-void

    .line 198
    :cond_2
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne p1, v1, :cond_3

    .line 199
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedStatusFrag:Ljava/lang/Runnable;

    goto :goto_0

    .line 200
    :cond_3
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne p1, v1, :cond_4

    .line 201
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedVolumeControlBarFrag:Ljava/lang/Runnable;

    goto :goto_0

    .line 202
    :cond_4
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CAPTURE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne p1, v1, :cond_5

    .line 203
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedCaptureFrag:Ljava/lang/Runnable;

    goto :goto_0

    .line 204
    :cond_5
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne p1, v1, :cond_6

    .line 205
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedFPImgFrag:Ljava/lang/Runnable;

    goto :goto_0

    .line 206
    :cond_6
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne p1, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedFPVidFrag:Ljava/lang/Runnable;

    goto :goto_0

    .line 211
    :cond_7
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-ltz v1, :cond_8

    .line 212
    if-eqz v0, :cond_1

    .line 213
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 217
    :cond_8
    const-string v1, "MtvUiFragHandler"

    const-string v2, "startTimer: intvalid timer value"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private stopTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V
    .locals 4
    .param p1, "fragType"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, "mTimedFrag":Ljava/lang/Runnable;
    const-string v1, "MtvUiFragHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopTimer: fragType["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne p1, v1, :cond_2

    .line 228
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedMainFrag:Ljava/lang/Runnable;

    .line 240
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 241
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    :cond_1
    return-void

    .line 229
    :cond_2
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne p1, v1, :cond_3

    .line 230
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedStatusFrag:Ljava/lang/Runnable;

    goto :goto_0

    .line 231
    :cond_3
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne p1, v1, :cond_4

    .line 232
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedVolumeControlBarFrag:Ljava/lang/Runnable;

    goto :goto_0

    .line 233
    :cond_4
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CAPTURE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne p1, v1, :cond_5

    .line 234
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedCaptureFrag:Ljava/lang/Runnable;

    goto :goto_0

    .line 235
    :cond_5
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne p1, v1, :cond_6

    .line 236
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedFPImgFrag:Ljava/lang/Runnable;

    goto :goto_0

    .line 237
    :cond_6
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne p1, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedFPVidFrag:Ljava/lang/Runnable;

    goto :goto_0
.end method


# virtual methods
.method public varargs addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V
    .locals 10
    .param p1, "fragType"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    .param p2, "timeOut"    # J
    .param p4, "addToBackStack"    # Z
    .param p5, "otherData"    # [I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 472
    const/4 v1, 0x0

    .line 473
    .local v1, "fTrans":Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    .line 474
    .local v2, "fragToAdd":Landroid/app/Fragment;
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, "tag":Ljava/lang/String;
    const-string v4, "MtvUiFragHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addFrag: fragType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] timeOut["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] addToBackStack["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 479
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 493
    :cond_0
    const-string v4, "MtvUiFragHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addFrag : fragHandler Enabled?:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-boolean v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    if-eqz v4, :cond_2

    .line 495
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    if-eqz v4, :cond_7

    .line 497
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 499
    if-nez v2, :cond_1

    .line 502
    if-eqz p5, :cond_3

    array-length v4, p5

    if-le v4, v7, :cond_3

    .line 503
    invoke-direct {p0, p1, p5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->getNewFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;[I)Landroid/app/Fragment;

    move-result-object v2

    .line 514
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Landroid/app/Fragment;->isVisible()Z

    move-result v4

    if-ne v4, v7, :cond_4

    .line 542
    :cond_2
    :goto_1
    return-void

    .line 505
    :cond_3
    new-array v4, v8, [I

    invoke-direct {p0, p1, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->getNewFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;[I)Landroid/app/Fragment;

    move-result-object v2

    goto :goto_0

    .line 519
    :cond_4
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->viewGroup:I

    .line 522
    .local v0, "currentViewGroup":I
    if-eqz p5, :cond_5

    array-length v4, p5

    if-lez v4, :cond_5

    .line 524
    aget v0, p5, v8

    .line 527
    :cond_5
    if-ne v7, p4, :cond_9

    if-eqz v2, :cond_9

    .line 529
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 530
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 535
    :cond_6
    :goto_2
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 538
    .end local v0    # "currentViewGroup":I
    :cond_7
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_8

    .line 539
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->startTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 540
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFragInternal(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto :goto_1

    .line 532
    .restart local v0    # "currentViewGroup":I
    :cond_9
    if-eqz v2, :cond_6

    .line 533
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_2
.end method

.method public fillFragHandlerData(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v10, 0x0

    .line 764
    const-string v5, "MtvUiFragHandler"

    const-string v6, "fillFragHandlerData"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->values()[Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 768
    .local v1, "fragType":Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 769
    .local v4, "timeout":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    .line 771
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 773
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v1, v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->startTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 766
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 776
    .end local v1    # "fragType":Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    .end local v4    # "timeout":Ljava/lang/Long;
    :cond_1
    return-void
.end method

.method public getActivityType()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->activityType:I

    return v0
.end method

.method public hideAllFragments()V
    .locals 9

    .prologue
    .line 352
    const-string v6, "MtvUiFragHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hideAllFragments : fragHandler Enabled?:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-boolean v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    if-eqz v6, :cond_2

    .line 355
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 356
    .local v3, "fragTypesSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 357
    .local v4, "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    const/4 v1, 0x0

    .line 358
    .local v1, "fragToHide":Landroid/app/Fragment;
    const/4 v5, 0x0

    .line 359
    .local v5, "tag":Ljava/lang/String;
    const/4 v0, 0x0

    .line 360
    .local v0, "fTrans":Landroid/app/FragmentTransaction;
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    if-eqz v6, :cond_0

    .line 361
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 362
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 363
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .line 364
    .local v2, "fragType1":Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    .line 365
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    if-eqz v6, :cond_0

    .line 366
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    invoke-virtual {v6, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 367
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Fragment;->isHidden()Z

    move-result v6

    if-nez v6, :cond_0

    .line 368
    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CHANNELNUM:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne v2, v6, :cond_0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 376
    .end local v2    # "fragType1":Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    :cond_1
    if-eqz v0, :cond_2

    .line 377
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 379
    .end local v0    # "fTrans":Landroid/app/FragmentTransaction;
    .end local v1    # "fragToHide":Landroid/app/Fragment;
    .end local v3    # "fragTypesSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    .end local v4    # "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    .end local v5    # "tag":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z
    .locals 4
    .param p1, "fragType"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "bRetVal":Z
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 437
    :cond_0
    const-string v1, "MtvUiFragHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFragpresent : fragType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bRetVal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return v0
.end method

.method public onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "fragType"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .prologue
    .line 697
    const-string v5, "MtvUiFragHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdate: fragType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] what["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v5, "MtvUiFragHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdate : fragHandler Enabled?:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    if-eqz v5, :cond_0

    .line 704
    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_ALL:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-eq v5, p3, :cond_2

    .line 706
    invoke-virtual {p3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    .line 707
    .local v4, "tag":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 708
    .local v0, "fragToUpdate":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 709
    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;

    .end local v0    # "fragToUpdate":Landroid/app/Fragment;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onUpdate(ILjava/lang/Object;)V

    .line 726
    .end local v4    # "tag":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 711
    .restart local v0    # "fragToUpdate":Landroid/app/Fragment;
    .restart local v4    # "tag":Ljava/lang/String;
    :cond_1
    const-string v5, "MtvUiFragHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdate failed as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not present"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 712
    .end local v0    # "fragToUpdate":Landroid/app/Fragment;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_ALL:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne v5, p3, :cond_0

    .line 714
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 715
    .local v2, "fragTypesSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 716
    .local v3, "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 717
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .line 719
    .local v1, "fragType1":Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    .line 720
    .restart local v4    # "tag":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 721
    .restart local v0    # "fragToUpdate":Landroid/app/Fragment;
    if-eqz v0, :cond_3

    .line 722
    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;

    .end local v0    # "fragToUpdate":Landroid/app/Fragment;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onUpdate(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public peekUiFragment()Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->getTopFragType()Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public putFragHandlerData(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 739
    const-string v3, "MtvUiFragHandler"

    const-string v4, "putFragHandlerData"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 742
    .local v1, "fragTypesSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 744
    .local v2, "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 746
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .line 747
    .local v0, "fragType":Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 748
    const-string v3, "MtvUiFragHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fragType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timeOut: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->stopTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_0

    .line 751
    .end local v0    # "fragType":Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    :cond_0
    return-void
.end method

.method public redrawTopFrag()V
    .locals 3

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->getTopFragType()Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    if-eqz v2, :cond_0

    .line 674
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 675
    .local v1, "topFrag":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 676
    check-cast v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;

    .end local v1    # "topFrag":Landroid/app/Fragment;
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->redraw()V

    .line 679
    :cond_0
    return-void
.end method

.method public removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V
    .locals 6
    .param p1, "fragType"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 557
    .local v0, "fTrans":Landroid/app/FragmentTransaction;
    const-string v3, "MtvUiFragHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeFrag: fragType["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "tag":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    if-eqz v3, :cond_2

    .line 563
    const-string v3, "MtvUiFragHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeFrag : fragHandler Enabled?:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-boolean v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    if-eqz v3, :cond_2

    .line 566
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 567
    .local v1, "fragToRem":Landroid/app/Fragment;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 568
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 570
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 571
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 573
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->remFragInternal(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 576
    .end local v1    # "fragToRem":Landroid/app/Fragment;
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->stopTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 577
    return-void
.end method

.method public removeTimers()V
    .locals 2

    .prologue
    .line 250
    const-string v0, "MtvUiFragHandler"

    const-string v1, "removeTimers called..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedMainFrag:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedMainFrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedStatusFrag:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedStatusFrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedVolumeControlBarFrag:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedVolumeControlBarFrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedCaptureFrag:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedCaptureFrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedCaptureFrag:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedFPImgFrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedCaptureFrag:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mTimedFPVidFrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    :cond_5
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 790
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeTimers()V

    .line 791
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->setEnabled(Z)V

    .line 792
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 793
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 794
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    .line 795
    return-void
.end method

.method public resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V
    .locals 4
    .param p1, "fragType"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    .param p2, "timeOut"    # J

    .prologue
    .line 451
    const-string v0, "MtvUiFragHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetTimer: fragType["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] timeOut["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->startTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 453
    return-void
.end method

.method public setActivityType(I)V
    .locals 0
    .param p1, "activityType"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->activityType:I

    .line 112
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 781
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    .line 782
    const-string v0, "MtvUiFragHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled : fragHandler isEnabled?:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public unhideAllFragments()V
    .locals 9

    .prologue
    .line 386
    const-string v6, "MtvUiFragHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unhideAllFragments : fragHandler Enabled?:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-boolean v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isEnabled:Z

    if-eqz v6, :cond_2

    .line 388
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragHashMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 389
    .local v3, "fragTypesSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 390
    .local v4, "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    const/4 v1, 0x0

    .line 391
    .local v1, "fragToHide":Landroid/app/Fragment;
    const/4 v5, 0x0

    .line 392
    .local v5, "tag":Ljava/lang/String;
    const/4 v0, 0x0

    .line 394
    .local v0, "fTrans":Landroid/app/FragmentTransaction;
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    if-eqz v6, :cond_0

    .line 395
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 397
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 398
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .line 400
    .local v2, "fragType1":Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    .line 401
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    if-eqz v6, :cond_0

    .line 402
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fragMgr:Landroid/app/FragmentManager;

    invoke-virtual {v6, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 403
    if-eqz v1, :cond_0

    .line 404
    const/4 v6, 0x1

    invoke-virtual {v1}, Landroid/app/Fragment;->isHidden()Z

    move-result v7

    if-ne v6, v7, :cond_0

    .line 405
    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CHANNELNUM:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-ne v2, v6, :cond_0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 418
    .end local v2    # "fragType1":Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    :cond_1
    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 421
    .end local v0    # "fTrans":Landroid/app/FragmentTransaction;
    .end local v1    # "fragToHide":Landroid/app/Fragment;
    .end local v3    # "fragTypesSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    .end local v4    # "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;>;"
    .end local v5    # "tag":Ljava/lang/String;
    :cond_2
    return-void
.end method
