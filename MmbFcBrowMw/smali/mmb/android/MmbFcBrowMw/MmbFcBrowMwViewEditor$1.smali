.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$1;
.super Landroid/os/Handler;
.source "MmbFcBrowMwViewEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->createWebkitEditorHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "aMsg"    # Landroid/os/Message;

    .prologue
    .line 101
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 122
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 106
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 107
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 108
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->requestFocus()Z

    goto :goto_0

    .line 112
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_1
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 113
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
