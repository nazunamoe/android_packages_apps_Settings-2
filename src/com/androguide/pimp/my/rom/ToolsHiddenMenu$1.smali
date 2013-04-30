.class Lcom/androguide/pimp/my/rom/ToolsHiddenMenu$1;
.super Ljava/lang/Object;
.source "ToolsHiddenMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsHiddenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsHiddenMenu;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsHiddenMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsHiddenMenu$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsHiddenMenu;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsHiddenMenu$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsHiddenMenu;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsHiddenMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/ToolsHiddenMenu;->access$0(Lcom/androguide/pimp/my/rom/ToolsHiddenMenu;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/androguide/pimp/my/rom/HiddenMenu;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsHiddenMenu$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsHiddenMenu;

    invoke-virtual {v1, v0}, Lcom/androguide/pimp/my/rom/ToolsHiddenMenu;->startActivity(Landroid/content/Intent;)V

    .line 51
    return-void
.end method
