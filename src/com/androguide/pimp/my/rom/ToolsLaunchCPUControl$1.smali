.class Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl$1;
.super Ljava/lang/Object;
.source "ToolsLaunchCPUControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->access$0(Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/androguide/pimp/my/rom/ViewPagerCPUControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;

    invoke-virtual {v1, v0}, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
