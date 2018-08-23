.class final Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;
.super Ljava/lang/Object;
.source "MmbFcBrowMwViewEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$2;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$MmbInputType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbFcBrowMwViewEditor"

.field private static final WEBKIT_EDITOR_HIDE_SOFTINPUT:I = 0xb

.field private static final WEBKIT_EDITOR_SHOW_SOFTINPUT:I = 0xa

.field private static mOnInputTypeChangeHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$OnInputTypeChangeHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

.field private mWebkitEditorHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aView"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->mView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 77
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->mView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 80
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->createWebkitEditorHandler()V

    .line 81
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->nativeEditorInit()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    .prologue
    .line 35
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    .prologue
    .line 35
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->mView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    return-object v0
.end method

.method private createWebkitEditorHandler()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$1;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$1;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->mWebkitEditorHandler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method static initMmbFcBrowMwViewEditor(Landroid/content/Context;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;
    .locals 1
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aView"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 94
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    invoke-direct {v0, p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;-><init>(Landroid/content/Context;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V

    return-object v0
.end method

.method private native nativeEditorInit()V
.end method

.method static setOnInputTypeChangeHandler(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$OnInputTypeChangeHandler;)V
    .locals 0
    .param p0, "aHandler"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$OnInputTypeChangeHandler;

    .prologue
    .line 150
    sput-object p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->mOnInputTypeChangeHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$OnInputTypeChangeHandler;

    .line 151
    return-void
.end method


# virtual methods
.method setInputType(I)V
    .locals 5
    .param p1, "aType"    # I

    .prologue
    .line 154
    const/4 v1, 0x1

    .line 155
    .local v1, "restype":I
    const/high16 v0, 0x10000000

    .line 156
    .local v0, "resoption":I
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$MmbInputType;->values()[Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$MmbInputType;

    move-result-object v3

    aget-object v2, v3, p1

    .line 158
    .local v2, "type":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$MmbInputType;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->mView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hasFocusNextTextfield()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    or-int/lit16 v1, v1, 0xa0

    .line 160
    or-int/lit8 v0, v0, 0x5

    .line 169
    :goto_0
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$2;->$SwitchMap$mmb$android$MmbFcBrowMw$MmbFcBrowMwViewEditor$MmbInputType:[I

    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$MmbInputType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 208
    const/4 v1, 0x1

    .line 212
    :goto_1
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->mOnInputTypeChangeHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$OnInputTypeChangeHandler;

    invoke-interface {v3, v1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$OnInputTypeChangeHandler;->onInputTypeChange(II)V

    .line 213
    return-void

    .line 162
    :cond_0
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->mView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hasFocusNextSubmit()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 166
    :cond_1
    or-int/lit8 v0, v0, 0x6

    goto :goto_0

    .line 171
    :pswitch_0
    const v0, 0x10000003

    .line 172
    goto :goto_1

    .line 174
    :pswitch_1
    or-int/lit8 v1, v1, 0x3

    .line 175
    goto :goto_1

    .line 177
    :pswitch_2
    or-int/lit8 v1, v1, 0x10

    .line 178
    goto :goto_1

    .line 180
    :pswitch_3
    or-int/lit8 v1, v1, 0x20

    .line 181
    goto :goto_1

    .line 183
    :pswitch_4
    const/16 v1, 0x14

    .line 184
    goto :goto_1

    .line 186
    :pswitch_5
    or-int/lit8 v1, v1, 0x4

    .line 187
    goto :goto_1

    .line 189
    :pswitch_6
    or-int/lit8 v1, v1, 0x24

    .line 190
    goto :goto_1

    .line 194
    :pswitch_7
    const/4 v1, 0x2

    .line 195
    goto :goto_1

    .line 197
    :pswitch_8
    const v3, 0x2c000

    or-int/2addr v1, v3

    .line 200
    const v0, 0x10000001

    .line 201
    goto :goto_1

    .line 203
    :pswitch_9
    const/16 v1, 0x81

    .line 205
    goto :goto_1

    .line 169
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
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method webkitHideSoftInput()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->mWebkitEditorHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 147
    return-void
.end method

.method webkitShowSoftInput(I)V
    .locals 2
    .param p1, "aType"    # I

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->setInputType(I)V

    .line 135
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->mWebkitEditorHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    return-void
.end method
