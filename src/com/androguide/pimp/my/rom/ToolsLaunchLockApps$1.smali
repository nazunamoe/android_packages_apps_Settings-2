.class Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps$1;
.super Ljava/lang/Object;
.source "ToolsLaunchLockApps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 52
    new-instance v0, Landroid/app/Dialog;

    iget-object v5, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v5}, Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;->access$0(Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, dialog:Landroid/app/Dialog;
    const v5, 0x7f030017

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 54
    const-string v5, "Loading..."

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    const v5, 0x7f040033

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 58
    .local v4, text:Landroid/widget/TextView;
    const-string v5, "Please Wait..."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v5, 0x7f040034

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 62
    .local v2, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 64
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 65
    .local v3, t:Ljava/util/Timer;
    new-instance v5, Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps$1$1;

    invoke-direct {v5, p0, v0, v3}, Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps$1$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps$1;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 70
    const-wide/16 v6, 0x3e8

    .line 65
    invoke-virtual {v3, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 73
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v5}, Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;->access$0(Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/androguide/pimp/my/rom/ToolsLockApps;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v1, myIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;

    invoke-virtual {v5, v1}, Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method
