.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
.source "MmbStInnerException.java"


# static fields
.field public static final INNER_EXCEPTION_BML_ERROR:I = -0xe

.field public static final INNER_EXCEPTION_CLOCK_ERROR:I = -0xf

.field public static final INNER_EXCEPTION_CONFLICT_DECODER_ERROR:I = -0x18

.field public static final INNER_EXCEPTION_CONFLICT_LIBRARY_ERROR:I = -0x14

.field public static final INNER_EXCEPTION_CONFLICT_MAX_ERROR:I = -0x7

.field public static final INNER_EXCEPTION_CONFLICT_TUNER_ERROR:I = -0xc

.field public static final INNER_EXCEPTION_CONFLICT_TUNER_USING_ERROR:I = -0x17

.field public static final INNER_EXCEPTION_FATAL_ERROR:I = -0x12

.field public static final INNER_EXCEPTION_FILTER_ERROR:I = -0x4

.field public static final INNER_EXCEPTION_MW_FATAL_ERROR:I = -0x16

.field public static final INNER_EXCEPTION_NO_MCC_ERROR:I = -0x8

.field public static final INNER_EXCEPTION_NO_MEDIA_ERROR:I = -0xb

.field public static final INNER_EXCEPTION_NO_SUPPORT_UIM_ERROR:I = -0xa

.field public static final INNER_EXCEPTION_NO_UIM_ERROR:I = -0x9

.field public static final INNER_EXCEPTION_OTHER_ERROR:I = -0x3e8

.field public static final INNER_EXCEPTION_PARAMETER_ERROR:I = -0x3

.field public static final INNER_EXCEPTION_PARENTAL_CONTROL_ERROR:I = -0x10

.field public static final INNER_EXCEPTION_PARENTAL_RATE_ERROR:I = -0x11

.field public static final INNER_EXCEPTION_REC_PLAY_FATAL_ERROR:I = -0x19

.field public static final INNER_EXCEPTION_RESOURCE_ERROR:I = -0x1

.field public static final INNER_EXCEPTION_RESTART_REQUEST:I = -0x15

.field public static final INNER_EXCEPTION_SERVICE_IRRESOLVABLE_ERROR:I = -0x13

.field public static final INNER_EXCEPTION_STATE_ERROR:I = -0x2

.field public static final INNER_EXCEPTION_STATUS_ERROR:I = -0x5

.field public static final INNER_EXCEPTION_SYSTEM_ERROR:I = -0xd

.field public static final INNER_EXCEPTION_TS_DIFFER_ERROR:I = -0x6

.field public static final TYPE_CONFLICT_ERROR:I = 0x2

.field public static final TYPE_EXCEPTION:I = 0x3

.field public static final TYPE_MIDDLE_ERROR:I = 0x1

.field private static final serialVersionUID:J = -0x34d8fec51aaf0f2fL


# instance fields
.field private errorFunction:I

.field private exceptionDetail:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "aInnerException"    # I

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>()V

    .line 87
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->exceptionDetail:I

    .line 92
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->errorFunction:I

    .line 110
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->setExceptionDetail(I)V

    .line 114
    return-void
.end method

.method constructor <init>(II)V
    .locals 2
    .param p1, "aType"    # I
    .param p2, "aInnerException"    # I

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>()V

    .line 87
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->exceptionDetail:I

    .line 92
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->errorFunction:I

    .line 138
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 139
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->changeMwException(I)I

    move-result v0

    .line 147
    .local v0, "reason":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->setExceptionDetail(I)V

    .line 152
    return-void

    .line 140
    .end local v0    # "reason":I
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 142
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->changeConflictException(I)I

    move-result v0

    .restart local v0    # "reason":I
    goto :goto_0

    .line 144
    .end local v0    # "reason":I
    :cond_1
    move v0, p2

    .restart local v0    # "reason":I
    goto :goto_0
.end method

.method constructor <init>(III)V
    .locals 2
    .param p1, "aType"    # I
    .param p2, "aInnerException"    # I
    .param p3, "aFunction"    # I

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>()V

    .line 87
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->exceptionDetail:I

    .line 92
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->errorFunction:I

    .line 178
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 179
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->changeMwException(I)I

    move-result v0

    .line 187
    .local v0, "reason":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->setExceptionDetail(I)V

    .line 189
    invoke-virtual {p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->setErrorFunction(I)V

    .line 193
    return-void

    .line 180
    .end local v0    # "reason":I
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 182
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->changeConflictException(I)I

    move-result v0

    .restart local v0    # "reason":I
    goto :goto_0

    .line 184
    .end local v0    # "reason":I
    :cond_1
    move v0, p2

    .restart local v0    # "reason":I
    goto :goto_0
.end method


# virtual methods
.method public changeConflictException(I)I
    .locals 1
    .param p1, "aInnerException"    # I

    .prologue
    .line 254
    packed-switch p1, :pswitch_data_0

    .line 286
    :pswitch_0
    const/16 v0, -0x3e8

    .line 292
    .local v0, "exceptiondetail":I
    :goto_0
    return v0

    .line 256
    .end local v0    # "exceptiondetail":I
    :pswitch_1
    const/4 v0, -0x6

    .line 257
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 259
    .end local v0    # "exceptiondetail":I
    :pswitch_2
    const/4 v0, -0x7

    .line 260
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 262
    .end local v0    # "exceptiondetail":I
    :pswitch_3
    const/4 v0, -0x8

    .line 263
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 265
    .end local v0    # "exceptiondetail":I
    :pswitch_4
    const/16 v0, -0x9

    .line 266
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 268
    .end local v0    # "exceptiondetail":I
    :pswitch_5
    const/16 v0, -0xa

    .line 269
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 271
    .end local v0    # "exceptiondetail":I
    :pswitch_6
    const/16 v0, -0xb

    .line 272
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 274
    .end local v0    # "exceptiondetail":I
    :pswitch_7
    const/16 v0, -0xc

    .line 275
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 277
    .end local v0    # "exceptiondetail":I
    :pswitch_8
    const/16 v0, -0x14

    .line 278
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 280
    .end local v0    # "exceptiondetail":I
    :pswitch_9
    const/16 v0, -0x17

    .line 281
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 283
    .end local v0    # "exceptiondetail":I
    :pswitch_a
    const/16 v0, -0x18

    .line 284
    .restart local v0    # "exceptiondetail":I
    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public changeMwException(I)I
    .locals 1
    .param p1, "aMwException"    # I

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, "exceptiondetail":I
    sparse-switch p1, :sswitch_data_0

    .line 356
    const/16 v0, -0x3e8

    .line 362
    :goto_0
    return v0

    .line 315
    :sswitch_0
    const/4 v0, -0x1

    .line 316
    goto :goto_0

    .line 319
    :sswitch_1
    const/4 v0, -0x2

    .line 320
    goto :goto_0

    .line 323
    :sswitch_2
    const/4 v0, -0x3

    .line 324
    goto :goto_0

    .line 327
    :sswitch_3
    const/4 v0, -0x4

    .line 328
    goto :goto_0

    .line 331
    :sswitch_4
    const/4 v0, -0x5

    .line 332
    goto :goto_0

    .line 335
    :sswitch_5
    const/16 v0, -0x13

    .line 336
    goto :goto_0

    .line 340
    :sswitch_6
    const/16 v0, -0x3e8

    .line 341
    goto :goto_0

    .line 344
    :sswitch_7
    const/16 v0, -0x15

    .line 345
    goto :goto_0

    .line 352
    :sswitch_8
    const/16 v0, -0x16

    .line 353
    goto :goto_0

    .line 313
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2006 -> :sswitch_7
        -0x2005 -> :sswitch_3
        -0x2004 -> :sswitch_4
        -0x2003 -> :sswitch_2
        -0x2002 -> :sswitch_8
        -0x2001 -> :sswitch_8
        -0x1441 -> :sswitch_8
        -0x1401 -> :sswitch_6
        -0x1041 -> :sswitch_8
        -0x1001 -> :sswitch_6
        -0x4 -> :sswitch_5
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_8
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public getErrorFunction()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->errorFunction:I

    return v0
.end method

.method public getExceptionDetail()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->exceptionDetail:I

    return v0
.end method

.method public setErrorFunction(I)V
    .locals 0
    .param p1, "aErrorFunction"    # I

    .prologue
    .line 380
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->errorFunction:I

    .line 384
    return-void
.end method

.method public setExceptionDetail(I)V
    .locals 0
    .param p1, "aExceptionDetail"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->exceptionDetail:I

    .line 214
    return-void
.end method
