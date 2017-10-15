.class public Lcom/access/bml/BMLBookmarkEntry;
.super Ljava/lang/Object;
.source "BMLBookmarkEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/access/bml/BMLBookmarkEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBlockNo:I

.field private mBmType:I

.field private mDstURI:Ljava/lang/String;

.field private mExpire:Ljava/lang/String;

.field private mOutline:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/access/bml/BMLBookmarkEntry$1;

    invoke-direct {v0}, Lcom/access/bml/BMLBookmarkEntry$1;-><init>()V

    sput-object v0, Lcom/access/bml/BMLBookmarkEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mTitle:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mDstURI:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mOutline:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mExpire:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mBmType:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mBlockNo:I

    .line 97
    return-void
.end method

.method public constructor <init>([B[B[B[BII)V
    .locals 3
    .param p1, "title"    # [B
    .param p2, "dstURI"    # [B
    .param p3, "outline"    # [B
    .param p4, "expire"    # [B
    .param p5, "bmType"    # I
    .param p6, "blockNo"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "SJIS"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/access/bml/BMLBookmarkEntry;->mTitle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/access/bml/BMLBookmarkEntry;->mDstURI:Ljava/lang/String;

    .line 65
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "SJIS"

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/access/bml/BMLBookmarkEntry;->mOutline:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :goto_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p4}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/access/bml/BMLBookmarkEntry;->mExpire:Ljava/lang/String;

    .line 71
    iput p5, p0, Lcom/access/bml/BMLBookmarkEntry;->mBmType:I

    .line 79
    iput p6, p0, Lcom/access/bml/BMLBookmarkEntry;->mBlockNo:I

    .line 80
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 68
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getBlockNo()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mBlockNo:I

    return v0
.end method

.method public getBmType()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mBmType:I

    return v0
.end method

.method public getBmTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mBmType:I

    packed-switch v0, :pswitch_data_0

    .line 211
    const-string v0, "Reserved"

    :goto_0
    return-object v0

    .line 201
    :pswitch_0
    const-string v0, "Memo"

    goto :goto_0

    .line 203
    :pswitch_1
    const-string v0, "Link"

    goto :goto_0

    .line 205
    :pswitch_2
    const-string v0, "C Profile"

    goto :goto_0

    .line 207
    :pswitch_3
    const-string v0, "HTML"

    goto :goto_0

    .line 209
    :pswitch_4
    const-string v0, "Network"

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getDstURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mDstURI:Ljava/lang/String;

    return-object v0
.end method

.method public getExpire()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mExpire:Ljava/lang/String;

    return-object v0
.end method

.method public getOutline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mOutline:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setBlockNo(I)V
    .locals 0
    .param p1, "BlockNo"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/access/bml/BMLBookmarkEntry;->mBlockNo:I

    .line 229
    return-void
.end method

.method public setBmType(I)V
    .locals 0
    .param p1, "BmType"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/access/bml/BMLBookmarkEntry;->mBmType:I

    .line 185
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "Title"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/access/bml/BMLBookmarkEntry;->mTitle:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mDstURI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mOutline:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mExpire:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mBmType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Lcom/access/bml/BMLBookmarkEntry;->mBlockNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return-void
.end method
