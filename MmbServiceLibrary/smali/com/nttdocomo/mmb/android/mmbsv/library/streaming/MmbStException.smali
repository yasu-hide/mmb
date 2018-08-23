.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
.source "MmbStException.java"


# static fields
.field public static final EXCEPTION_BML_ERROR:I = -0xa

.field public static final EXCEPTION_CLOCK_ERROR:I = -0xb

.field public static final EXCEPTION_CONFLICT_DECODER_ERROR:I = -0xf

.field public static final EXCEPTION_CONFLICT_LIBRARY_ERROR:I = -0x9

.field public static final EXCEPTION_CONFLICT_TUNER_ERROR:I = -0x8

.field public static final EXCEPTION_CONFLICT_TUNER_USING_ERROR:I = -0xd

.field public static final EXCEPTION_NO_MCC_ERROR:I = -0x5

.field public static final EXCEPTION_NO_MEDIA_ERROR:I = -0xe

.field public static final EXCEPTION_NO_SUPPORT_UIM_ERROR:I = -0x7

.field public static final EXCEPTION_NO_UIM_ERROR:I = -0x6

.field public static final EXCEPTION_OTHER_ERROR:I = -0x3e8

.field public static final EXCEPTION_PARAMETER_ERROR:I = -0x3

.field public static final EXCEPTION_RESOURCE_ERROR:I = -0x1

.field public static final EXCEPTION_RESTART_REQUEST:I = -0xc

.field public static final EXCEPTION_STATE_ERROR:I = -0x2

.field public static final EXCEPTION_STATUS_ERROR:I = -0x4

.field private static final serialVersionUID:J = -0x24cf0f6d72aa4af6L


# instance fields
.field private exceptionDetail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->exceptionDetail:I

    return-void
.end method


# virtual methods
.method protected changeException(I)I
    .locals 1
    .param p1, "aInnerException"    # I

    .prologue
    .line 118
    sparse-switch p1, :sswitch_data_0

    .line 182
    const/16 v0, -0x3e8

    .line 188
    .local v0, "exceptiondetail":I
    :goto_0
    return v0

    .line 120
    .end local v0    # "exceptiondetail":I
    :sswitch_0
    const/4 v0, -0x1

    .line 121
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 124
    .end local v0    # "exceptiondetail":I
    :sswitch_1
    const/4 v0, -0x2

    .line 125
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 128
    .end local v0    # "exceptiondetail":I
    :sswitch_2
    const/4 v0, -0x3

    .line 129
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 132
    .end local v0    # "exceptiondetail":I
    :sswitch_3
    const/4 v0, -0x4

    .line 133
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 136
    .end local v0    # "exceptiondetail":I
    :sswitch_4
    const/4 v0, -0x5

    .line 137
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 140
    .end local v0    # "exceptiondetail":I
    :sswitch_5
    const/4 v0, -0x6

    .line 141
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 144
    .end local v0    # "exceptiondetail":I
    :sswitch_6
    const/4 v0, -0x7

    .line 145
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 148
    .end local v0    # "exceptiondetail":I
    :sswitch_7
    const/4 v0, -0x8

    .line 149
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 152
    .end local v0    # "exceptiondetail":I
    :sswitch_8
    const/16 v0, -0x9

    .line 153
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 156
    .end local v0    # "exceptiondetail":I
    :sswitch_9
    const/16 v0, -0xe

    .line 157
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 159
    .end local v0    # "exceptiondetail":I
    :sswitch_a
    const/16 v0, -0xf

    .line 160
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 162
    .end local v0    # "exceptiondetail":I
    :sswitch_b
    const/16 v0, -0xa

    .line 163
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 166
    .end local v0    # "exceptiondetail":I
    :sswitch_c
    const/16 v0, -0xb

    .line 167
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 170
    .end local v0    # "exceptiondetail":I
    :sswitch_d
    const/16 v0, -0xc

    .line 171
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 176
    .end local v0    # "exceptiondetail":I
    :sswitch_e
    const/16 v0, -0x3e8

    .line 177
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 179
    .end local v0    # "exceptiondetail":I
    :sswitch_f
    const/16 v0, -0xd

    .line 180
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_e
        -0x18 -> :sswitch_a
        -0x17 -> :sswitch_f
        -0x15 -> :sswitch_d
        -0x14 -> :sswitch_8
        -0xf -> :sswitch_c
        -0xe -> :sswitch_b
        -0xc -> :sswitch_7
        -0xb -> :sswitch_9
        -0xa -> :sswitch_6
        -0x9 -> :sswitch_5
        -0x8 -> :sswitch_4
        -0x7 -> :sswitch_e
        -0x6 -> :sswitch_e
        -0x5 -> :sswitch_3
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public getExceptionDetail()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->exceptionDetail:I

    return v0
.end method

.method protected setExceptionDetail(I)V
    .locals 0
    .param p1, "aExceptionDetail"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->exceptionDetail:I

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbStException [exceptionDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->exceptionDetail:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
