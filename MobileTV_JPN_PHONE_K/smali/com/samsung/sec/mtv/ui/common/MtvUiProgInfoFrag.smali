.class public Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiProgInfoFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final RESERVATION_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MtvUiProgInfoFrag"


# instance fields
.field private longClickIndex:I

.field private mLayoutView:Landroid/view/View;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mPCh:I

.field private mProgInfo:Landroid/os/Bundle;

.field private mProgTitle:Ljava/lang/String;

.field private mProgramSchedule:Landroid/widget/Button;

.field private mProgramStatus:I

.field private mProgramWatch:Landroid/widget/Button;

.field private mReservationType:I

.field private mbIsNowOnAir:Z

.field private mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

.field private startTime:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mbIsNowOnAir:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "proginfo"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgInfo:Landroid/os/Bundle;

    .line 81
    return-void
.end method

.method private initializeUI()V
    .locals 14

    .prologue
    .line 95
    const-string v8, "MtvUiProgInfoFrag"

    const-string v9, "initializeUI"

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgInfo:Landroid/os/Bundle;

    const-string v9, "pgmPch"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mPCh:I

    .line 97
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgInfo:Landroid/os/Bundle;

    const-string v9, "startTime"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->startTime:J

    .line 99
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mLayoutView:Landroid/view/View;

    const v9, 0x7f0a00ca

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    .local v0, "channelInfo":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mLayoutView:Landroid/view/View;

    const v9, 0x7f0a00cb

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 103
    .local v6, "programInfo":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mLayoutView:Landroid/view/View;

    const v9, 0x7f0a00cd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 105
    .local v5, "programDesc":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mLayoutView:Landroid/view/View;

    const v9, 0x7f0a00d1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mLayoutView:Landroid/view/View;

    const v9, 0x7f0a00d3

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 111
    .local v4, "okButton":Landroid/widget/Button;
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mLayoutView:Landroid/view/View;

    const v9, 0x7f0a00cf

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramSchedule:Landroid/widget/Button;

    .line 116
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mLayoutView:Landroid/view/View;

    const v9, 0x7f0a00d0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramWatch:Landroid/widget/Button;

    .line 121
    const/4 v3, 0x0

    .line 122
    .local v3, "mtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const/4 v1, 0x0

    .line 123
    .local v1, "mChannelName":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v2

    .line 124
    .local v2, "mServiceID":I
    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mPCh:I

    invoke-static {v8, v9, v2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByPChannel(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v3

    .line 131
    :goto_0
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgInfo:Landroid/os/Bundle;

    const-string v9, "channelName"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    if-nez v3, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070288

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    :cond_0
    :goto_1
    if-eqz v3, :cond_6

    iget v8, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-lez v8, :cond_6

    .line 142
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v8, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    const/16 v10, 0x63

    if-ge v8, v10, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_3
    if-eqz v3, :cond_7

    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CH"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-wide v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->startTime:J

    iget v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mPCh:I

    invoke-static {v8, v10, v11, v9}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->findByPChannel(Landroid/content/Context;JI)Lcom/samsung/sec/mtv/provider/MtvProgram;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

    .line 157
    const/4 v7, 0x0

    .line 158
    .local v7, "strDate":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

    if-eqz v8, :cond_1

    .line 159
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "H:mm"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/sql/Date;

    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v10, v10, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    invoke-direct {v9, v10, v11}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 160
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "H:mm"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/sql/Date;

    iget-object v11, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgInfo:Landroid/os/Bundle;

    const-string v12, "endtime"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 163
    :cond_1
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgInfo:Landroid/os/Bundle;

    const-string v9, "programName"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgTitle:Ljava/lang/String;

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgInfo:Landroid/os/Bundle;

    const-string v9, "programDesc"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgInfo:Landroid/os/Bundle;

    const-string v9, "reservationType"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mReservationType:I

    .line 168
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgInfo:Landroid/os/Bundle;

    const-string v9, "rsrvStatus"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramStatus:I

    .line 169
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgInfo:Landroid/os/Bundle;

    const-string v9, "isNowOnAir"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mbIsNowOnAir:Z

    .line 170
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MtvUiChannelSchedule"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 171
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramSchedule:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramWatch:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-boolean v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mbIsNowOnAir:Z

    if-eqz v8, :cond_8

    .line 175
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramSchedule:Landroid/widget/Button;

    const v9, 0x7f0702ad

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 176
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramSchedule:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramSchedule:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramWatch:Landroid/widget/Button;

    const v9, 0x7f070315

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 179
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramWatch:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramWatch:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    :goto_5
    return-void

    .line 127
    .end local v7    # "strDate":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mPCh:I

    invoke-static {v8, v9}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByPChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v3

    goto/16 :goto_0

    .line 133
    :cond_3
    if-eqz v3, :cond_4

    .line 134
    iget-object v8, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 135
    iget-object v1, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    goto/16 :goto_1

    .line 138
    :cond_4
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgInfo:Landroid/os/Bundle;

    const-string v9, "channelName"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 142
    :cond_5
    iget v8, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto/16 :goto_2

    .line 144
    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 152
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CH"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mPCh:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 183
    .restart local v7    # "strDate":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v8, v8, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_b

    .line 184
    iget v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mReservationType:I

    if-nez v8, :cond_9

    .line 185
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramSchedule:Landroid/widget/Button;

    const v9, 0x7f0702c9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 186
    const v8, 0x7f05000f

    iput v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->longClickIndex:I

    .line 194
    :goto_6
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramSchedule:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramWatch:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramSchedule:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    .line 188
    :cond_9
    iget v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramStatus:I

    if-eqz v8, :cond_a

    .line 189
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramSchedule:Landroid/widget/Button;

    const v9, 0x7f0702c9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 190
    const v8, 0x7f05000f

    iput v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->longClickIndex:I

    goto :goto_6

    .line 193
    :cond_a
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramSchedule:Landroid/widget/Button;

    const v9, 0x7f07020c

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    goto :goto_6

    .line 200
    :cond_b
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    .line 204
    :cond_c
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mLayoutView:Landroid/view/View;

    const v9, 0x7f0a00ce

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mLayoutView:Landroid/view/View;

    const v9, 0x7f0a00d2

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 269
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 213
    :pswitch_1
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeUnManagedFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;Landroid/app/Activity;)Z

    goto :goto_0

    .line 216
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeUnManagedFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;Landroid/app/Activity;)Z

    .line 222
    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mbIsNowOnAir:Z

    if-eqz v1, :cond_1

    .line 223
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setIsNowOnAirReservation(Z)V

    .line 224
    :cond_1
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mReservationType:I

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mbIsNowOnAir:Z

    if-eqz v1, :cond_7

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->isReservationAlreadyTime(Lcom/samsung/sec/mtv/provider/MtvProgram;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 228
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->showAlreadyReserveDlg()V

    goto :goto_0

    .line 230
    :cond_3
    const-string v1, "MtvUiProgInfoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mtvProgram.mTimeStart = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v4, v3, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mtvProgram.mTimeEnd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v4, v3, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " System.currentTimeMillis() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v2, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v2, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4

    .line 233
    const-string v1, "MtvUiProgInfoFrag"

    const-string v2, "ReserveProgramStarted"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->ReserveProgramStarted(Ljava/lang/String;Lcom/samsung/sec/mtv/provider/MtvProgram;)V

    goto/16 :goto_0

    .line 235
    :cond_4
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-wide v2, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    .line 237
    const-string v1, "MtvUiProgInfoFrag"

    const-string v2, "reserveContextMenuDialog"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mbIsNowOnAir:Z

    if-eqz v1, :cond_5

    .line 239
    const-string v1, "MtvUiProgInfoFrag"

    const-string v2, "This scenario can haapen only with FileSimulation/Generator... Not in Live, so not handling it"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgTitle:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->longClickIndex:I

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-boolean v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mbIsNowOnAir:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->reserveContextMenuDialog(Ljava/lang/String;ILcom/samsung/sec/mtv/provider/MtvProgram;Z)V

    goto/16 :goto_0

    .line 244
    :cond_6
    const-string v1, "MtvUiProgInfoFrag"

    const-string v2, "Probably User has set wrong system time"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    :cond_7
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgramStatus:I

    if-eqz v1, :cond_8

    .line 249
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mProgTitle:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->longClickIndex:I

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mtvProgram:Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget-boolean v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mbIsNowOnAir:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->reserveContextMenuDialog(Ljava/lang/String;ILcom/samsung/sec/mtv/provider/MtvProgram;Z)V

    goto/16 :goto_0

    .line 252
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    iget-wide v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->startTime:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->CancelReservationDialog(J)V

    goto/16 :goto_0

    .line 256
    :pswitch_3
    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mbIsNowOnAir:Z

    if-eqz v1, :cond_0

    .line 257
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeUnManagedFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;Landroid/app/Activity;)Z

    .line 258
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 260
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.sec.mtv"

    const-string v3, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00cf
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->setRetainInstance(Z)V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->setHasOptionsMenu(Z)V

    .line 90
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const/4 v2, 0x0

    .local v2, "window_height":I
    const/4 v3, 0x0

    .line 53
    .local v3, "window_width":I
    const v4, 0x7f030026

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mLayoutView:Landroid/view/View;

    .line 54
    new-instance v4, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 57
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mLayoutView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->initializeUI()V

    .line 59
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mLayoutView:Landroid/view/View;

    const v5, 0x7f0a00c8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 60
    .local v1, "relativeLayout":Landroid/widget/RelativeLayout;
    const/high16 v4, 0x43a40000    # 328.0f

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v4

    float-to-int v2, v4

    .line 61
    const/high16 v4, 0x43a10000    # 322.0f

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v4

    float-to-int v3, v4

    .line 62
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v0, "head_params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 64
    const/high16 v4, 0x41e80000    # 29.0f

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 67
    :goto_0
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .end local v0    # "head_params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "relativeLayout":Landroid/widget/RelativeLayout;
    :cond_0
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->mLayoutView:Landroid/view/View;

    return-object v4

    .line 66
    .restart local v0    # "head_params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "relativeLayout":Landroid/widget/RelativeLayout;
    :cond_1
    const/high16 v4, 0x428c0000    # 70.0f

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgInfoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method
