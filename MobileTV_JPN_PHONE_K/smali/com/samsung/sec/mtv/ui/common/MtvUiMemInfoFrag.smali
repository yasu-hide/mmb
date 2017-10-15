.class public Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;
.super Landroid/app/DialogFragment;
.source "MtvUiMemInfoFrag.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MtvUiMemInfoFrag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private buildDialog(Landroid/view/View;)Landroid/app/Dialog;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x400

    .line 72
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070258

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070298

    new-instance v3, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag$1;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 82
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 85
    return-object v0
.end method

.method private constructDetails()Landroid/view/View;
    .locals 11

    .prologue
    const v10, 0x7f0702b2

    const v9, 0x7f070257

    .line 90
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03003a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 93
    .local v4, "parent":Landroid/widget/LinearLayout;
    const v6, 0x7f0a0141

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 94
    .local v5, "text":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0702a1

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v6, 0x7f0a0142

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "text":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 97
    .restart local v5    # "text":Landroid/widget/TextView;
    invoke-virtual {p0, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableInternalMemorySize()J

    move-result-wide v2

    .line 100
    .local v2, "memInt":J
    const v6, 0x7f0a0143

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "text":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 101
    .restart local v5    # "text":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->formatSize(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v6, 0x7f0a0144

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "text":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 104
    .restart local v5    # "text":Landroid/widget/TextView;
    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v6, 0x7f0a0145

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "text":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 107
    .restart local v5    # "text":Landroid/widget/TextView;
    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->ConvertByteToTime(J)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->formatRemainTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v0

    .line 111
    .local v0, "memExt":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    .line 113
    const v6, 0x7f0a0146

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 115
    const v6, 0x7f0a0147

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "text":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 116
    .restart local v5    # "text":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f070275

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v6, 0x7f0a0148

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "text":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 119
    .restart local v5    # "text":Landroid/widget/TextView;
    invoke-virtual {p0, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v6, 0x7f0a0149

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "text":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 123
    .restart local v5    # "text":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->formatSize(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v6, 0x7f0a014a

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "text":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 126
    .restart local v5    # "text":Landroid/widget/TextView;
    invoke-virtual {p0, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const v6, 0x7f0a014b

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "text":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 129
    .restart local v5    # "text":Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->ConvertByteToTime(J)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->formatRemainTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_0
    return-object v4
.end method

.method private formatRemainTime(J)Ljava/lang/String;
    .locals 9
    .param p1, "expectedRecordingSec"    # J

    .prologue
    .line 41
    const/4 v4, 0x0

    .line 42
    .local v4, "szTime":Ljava/lang/String;
    const-wide/16 v6, 0x1

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    .line 43
    const v5, 0x7f0702b5

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 60
    :goto_0
    return-object v4

    .line 46
    :cond_0
    const-wide/16 v6, 0x3c

    div-long v2, p1, v6

    .line 47
    .local v2, "minutes":J
    const-wide/16 v6, 0x3c

    div-long v0, v2, v6

    .line 48
    .local v0, "hours":J
    const-wide/16 v6, 0x3c

    rem-long/2addr v2, v6

    .line 50
    const-wide/16 v6, 0x1

    cmp-long v5, v0, v6

    if-lez v5, :cond_1

    const-wide/16 v6, 0x1

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 51
    const v5, 0x7f0702b4

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 52
    :cond_1
    const-wide/16 v6, 0x1

    cmp-long v5, v2, v6

    if-lez v5, :cond_2

    .line 53
    const v5, 0x7f0702b5

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 54
    :cond_2
    const-wide/16 v6, 0x1

    cmp-long v5, v0, v6

    if-lez v5, :cond_3

    .line 55
    const v5, 0x7f0702b3

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 57
    :cond_3
    const v5, 0x7f0702b5

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->constructDetails()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->buildDialog(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
