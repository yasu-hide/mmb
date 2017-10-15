.class Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$InputDialogListener;
.super Ljava/lang/Object;
.source "MtvUiBmlDialogFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputDialogListener"
.end annotation


# instance fields
.field private edit:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;Landroid/widget/EditText;)V
    .locals 0
    .param p2, "e"    # Landroid/widget/EditText;

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$InputDialogListener;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$InputDialogListener;->edit:Landroid/widget/EditText;

    .line 1077
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1083
    :try_start_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$InputDialogListener;->edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1088
    .local v1, "text":[B
    :goto_0
    const-string v2, "MtvUiBmlDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnClick : [Button] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$100()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v4

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->appExIMEEndPeer(Z[B)V

    .line 1091
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$InputDialogListener;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-static {v2, v6}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$302(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1092
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1093
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$InputDialogListener;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-static {v2, v6}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$602(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;[B)[B

    .line 1094
    sput-boolean v3, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mEditDialogShowing:Z

    .line 1095
    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$402(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1096
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$InputDialogListener;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$202(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;Z)Z

    .line 1097
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$500()Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1098
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$500()Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1099
    :cond_0
    return-void

    .line 1084
    .end local v1    # "text":[B
    :catch_0
    move-exception v0

    .line 1085
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "MtvUiBmlDialog"

    const-string v4, "InputDialogListener - text input fail!!"

    invoke-static {v2, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const/4 v1, 0x0

    .restart local v1    # "text":[B
    goto :goto_0

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    move v2, v3

    .line 1089
    goto :goto_1
.end method
