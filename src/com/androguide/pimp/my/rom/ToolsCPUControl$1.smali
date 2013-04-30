.class Lcom/androguide/pimp/my/rom/ToolsCPUControl$1;
.super Ljava/lang/Object;
.source "ToolsCPUControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsCPUControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsCPUControl;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsCPUControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsCPUControl;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsCPUControl;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->access$0(Lcom/androguide/pimp/my/rom/ToolsCPUControl;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsCPUControl;

    invoke-virtual {v1, v0}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method
