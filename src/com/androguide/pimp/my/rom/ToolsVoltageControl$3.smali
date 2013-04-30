.class Lcom/androguide/pimp/my/rom/ToolsVoltageControl$3;
.super Ljava/lang/Object;
.source "ToolsVoltageControl.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltages:Ljava/util/List;
    invoke-static {v0}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->access$0(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androguide/pimp/my/rom/Voltage;

    #setter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltage:Lcom/androguide/pimp/my/rom/Voltage;
    invoke-static {v1, v0}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->access$3(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;Lcom/androguide/pimp/my/rom/Voltage;)V

    .line 138
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->showDialog(I)V

    .line 139
    return-void
.end method
