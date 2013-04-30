.class Lcom/androguide/pimp/my/rom/ToolsVoltageControl$6;
.super Ljava/lang/Object;
.source "ToolsVoltageControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field private final synthetic val$id:I

.field private final synthetic val$voltageEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;ILandroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    iput p2, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$6;->val$id:I

    iput-object p3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$6;->val$voltageEdit:Landroid/widget/EditText;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 272
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    iget v3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$6;->val$id:I

    invoke-virtual {v2, v3}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->removeDialog(I)V

    .line 273
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$6;->val$voltageEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, value:Ljava/lang/String;
    invoke-static {}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->access$1()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 275
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltage:Lcom/androguide/pimp/my/rom/Voltage;
    invoke-static {v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->access$6(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)Lcom/androguide/pimp/my/rom/Voltage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androguide/pimp/my/rom/Voltage;->getFreq()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltage:Lcom/androguide/pimp/my/rom/Voltage;
    invoke-static {v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->access$6(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)Lcom/androguide/pimp/my/rom/Voltage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/androguide/pimp/my/rom/Voltage;->setSavedMV(Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mAdapter:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;
    invoke-static {v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->access$2(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->notifyDataSetChanged()V

    .line 279
    return-void
.end method
