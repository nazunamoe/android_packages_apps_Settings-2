.class Lcom/androguide/pimp/my/rom/ToolsVoltageControl$4;
.super Ljava/lang/Object;
.source "ToolsVoltageControl.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

.field private final synthetic val$voltageEdit:Landroid/widget/EditText;

.field private final synthetic val$voltageMeter:Landroid/widget/TextView;

.field private final synthetic val$voltageSeek:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/SeekBar;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    iput-object p2, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$4;->val$voltageEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$4;->val$voltageMeter:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$4;->val$voltageSeek:Landroid/widget/SeekBar;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 214
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 220
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 225
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$4;->val$voltageEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, text:Ljava/lang/String;
    const/4 v3, 0x0

    .line 228
    .local v3, value:I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 232
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$4;->val$voltageMeter:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " mV"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    #calls: Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->getNearestStepIndex(I)I
    invoke-static {v3}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->access$4(I)I

    move-result v0

    .line 234
    .local v0, index:I
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$4;->val$voltageSeek:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 235
    .end local v0           #index:I
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
