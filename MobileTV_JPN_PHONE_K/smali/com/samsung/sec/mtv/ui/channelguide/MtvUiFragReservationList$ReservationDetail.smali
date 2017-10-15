.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;
.super Landroid/app/DialogFragment;
.source "MtvUiFragReservationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReservationDetail"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ReservationDetail"


# instance fields
.field public mContext:Landroid/content/Context;

.field mDetailsDialog:Landroid/app/AlertDialog;

.field private mDialog:Landroid/app/AlertDialog;

.field private mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mTimeStart:J

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 589
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mInfoList:Ljava/util/ArrayList;

    .line 583
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    .line 586
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDialog:Landroid/app/AlertDialog;

    .line 587
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    .line 665
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$3;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 591
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4
    .param p1, "mcontext"    # Landroid/content/Context;
    .param p2, "TimeStart"    # J

    .prologue
    const/4 v1, 0x0

    .line 596
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mInfoList:Ljava/util/ArrayList;

    .line 583
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    .line 586
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDialog:Landroid/app/AlertDialog;

    .line 587
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    .line 665
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$3;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 598
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mContext:Landroid/content/Context;

    .line 599
    iput-wide p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mTimeStart:J

    .line 600
    const-string v0, "ReservationDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReservationDetail  mTimeStart:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mTimeStart:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method public constructor <init>(Lcom/samsung/sec/mtv/provider/MtvReservation;)V
    .locals 2
    .param p1, "reserve"    # Lcom/samsung/sec/mtv/provider/MtvReservation;

    .prologue
    const/4 v1, 0x0

    .line 593
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mInfoList:Ljava/util/ArrayList;

    .line 583
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    .line 586
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDialog:Landroid/app/AlertDialog;

    .line 587
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    .line 665
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$3;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 594
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 595
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private initDetails(Lcom/samsung/sec/mtv/provider/MtvReservation;)Landroid/app/Dialog;
    .locals 11
    .param p1, "mtvreserve"    # Lcom/samsung/sec/mtv/provider/MtvReservation;

    .prologue
    const/16 v10, 0x400

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 621
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->makeReservationInfo()V

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    new-instance v0, Landroid/widget/SimpleAdapter;

    .end local v0    # "adapter":Landroid/widget/SimpleAdapter;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mInfoList:Ljava/util/ArrayList;

    const v3, 0x7f030033

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "MENU_TITLE"

    aput-object v5, v4, v7

    const-string v5, "MENU_VALUE"

    aput-object v5, v4, v8

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 629
    .restart local v0    # "adapter":Landroid/widget/SimpleAdapter;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 632
    .local v6, "popup":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07023a

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 633
    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 634
    const v1, 0x7f070298

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$1;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 641
    const v1, 0x7f070237

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$2;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 651
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    .line 652
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 654
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 655
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 656
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 657
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 659
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 661
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDialog:Landroid/app/AlertDialog;

    .line 662
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mDialog:Landroid/app/AlertDialog;

    return-object v1

    .line 623
    :array_0
    .array-data 4
        0x7f0a012a
        0x7f0a012b
    .end array-data
.end method

.method private makeEndTime()V
    .locals 6

    .prologue
    .line 813
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    .line 814
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v2, "MENU_TITLE"

    const v3, 0x7f070242

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "M/d (EEE) H:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget-wide v4, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "szEnd_date":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v2, "MENU_VALUE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mInfoList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    return-void
.end method

.method private makeReservationInfo()V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->makeresult()V

    .line 685
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->makereason()V

    .line 686
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->makeprogtype()V

    .line 687
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->makechannel()V

    .line 688
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->makeTVstation()V

    .line 689
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->makeStartTime()V

    .line 690
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->makeEndTime()V

    .line 691
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->makeprogname()V

    .line 692
    return-void
.end method

.method private makeStartTime()V
    .locals 6

    .prologue
    .line 801
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    .line 802
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v2, "MENU_TITLE"

    const v3, 0x7f0702e9

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "M/d (EEE) H:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget-wide v4, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "szStart_date":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v2, "MENU_VALUE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mInfoList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    return-void
.end method

.method private makeTVstation()V
    .locals 5

    .prologue
    .line 786
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    .line 787
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v3, "MENU_TITLE"

    const v4, 0x7f070303

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v4, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-static {v2, v3, v4}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByPChannel(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 789
    .local v0, "TV_Station":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v0, :cond_0

    .line 790
    iget-object v1, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 793
    .local v1, "szTV_Station":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v3, "MENU_VALUE"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mInfoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    return-void

    .line 792
    .end local v1    # "szTV_Station":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .restart local v1    # "szTV_Station":Ljava/lang/String;
    goto :goto_0
.end method

.method private makechannel()V
    .locals 4

    .prologue
    .line 769
    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "szChannel":Ljava/lang/String;
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    if-eq v1, v2, :cond_0

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    .line 777
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v2, "MENU_TITLE"

    const v3, 0x7f070215

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v2, "MENU_VALUE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mInfoList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    return-void

    .line 774
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private makeprogname()V
    .locals 3

    .prologue
    .line 823
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    .line 824
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_TITLE"

    const v2, 0x7f0702a7

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget-object v2, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    return-void
.end method

.method private makeprogtype()V
    .locals 3

    .prologue
    .line 758
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    .line 759
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_TITLE"

    const v2, 0x7f0702aa

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    const v2, 0x7f0702ad

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    const v2, 0x7f070315

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private makereason()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 724
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-ne v0, v1, :cond_0

    .line 725
    const-string v0, "ReservationDetail"

    const-string v1, " reservation was completed"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 728
    const-string v0, "ReservationDetail"

    const-string v1, "user clicked reservation info in the middle of a watch Reservation !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 731
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    .line 732
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_TITLE"

    const v2, 0x7f0702ac

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 734
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    const v2, 0x7f070309

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 735
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 736
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    const v2, 0x7f0702b9

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 737
    :cond_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 738
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    const v2, 0x7f07024e

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 739
    :cond_5
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 740
    :cond_6
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    const v2, 0x7f07024f

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 741
    :cond_7
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 742
    :cond_8
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    const v2, 0x7f07024d

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 743
    :cond_9
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    .line 744
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    const v2, 0x7f0702bb

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 745
    :cond_a
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    .line 746
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    const v2, 0x7f0702ba

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 747
    :cond_b
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 748
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    const v2, 0x7f07026e

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private makeresult()V
    .locals 5

    .prologue
    const v4, 0x7f070316

    const/4 v3, 0x1

    .line 697
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    .line 698
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_TITLE"

    const v2, 0x7f0702bf

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-ne v0, v3, :cond_1

    .line 701
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    const v2, 0x7f0702ae

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 707
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 710
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    const v2, 0x7f0702cb

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 713
    :cond_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v0, :cond_5

    .line 714
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    const v2, 0x7f07021e

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 716
    :cond_5
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    const v2, 0x7f07021f

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 605
    if-eqz p1, :cond_0

    .line 606
    const-string v0, "MtvReserve"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/provider/MtvReservation;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 609
    :cond_0
    const-string v0, "ReservationDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog  mTimeStart:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mTimeStart:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mContext "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->initDetails(Lcom/samsung/sec/mtv/provider/MtvReservation;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 615
    const-string v0, "MtvReserve"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 616
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 617
    return-void
.end method
