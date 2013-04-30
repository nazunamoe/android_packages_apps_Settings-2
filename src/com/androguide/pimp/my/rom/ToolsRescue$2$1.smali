.class Lcom/androguide/pimp/my/rom/ToolsRescue$2$1;
.super Ljava/lang/Object;
.source "ToolsRescue.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ToolsRescue$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androguide/pimp/my/rom/ToolsRescue$2;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsRescue$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsRescue$2$1;->this$1:Lcom/androguide/pimp/my/rom/ToolsRescue$2;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 494
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 495
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    new-array v6, v7, [Ljava/lang/String;

    const-string v7, "reboot"

    aput-object v7, v6, v8

    invoke-direct {v0, v8, v6}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 496
    .local v0, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v6, 0x1

    :try_start_0
    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v6

    invoke-virtual {v6}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 498
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    return-void

    .line 496
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/ToolsRescue$2$1;->this$1:Lcom/androguide/pimp/my/rom/ToolsRescue$2;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsRescue$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/ToolsRescue$2;->access$0(Lcom/androguide/pimp/my/rom/ToolsRescue$2;)Lcom/androguide/pimp/my/rom/ToolsRescue;

    move-result-object v6

    #getter for: Lcom/androguide/pimp/my/rom/ToolsRescue;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/ToolsRescue;->access$0(Lcom/androguide/pimp/my/rom/ToolsRescue;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .local v1, context:Landroid/content/Context;
    const-string v5, "Do you have root permissions ?"

    .local v5, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .local v2, duration:I
    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 497
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/ToolsRescue$2$1;->this$1:Lcom/androguide/pimp/my/rom/ToolsRescue$2;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsRescue$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/ToolsRescue$2;->access$0(Lcom/androguide/pimp/my/rom/ToolsRescue$2;)Lcom/androguide/pimp/my/rom/ToolsRescue;

    move-result-object v6

    #getter for: Lcom/androguide/pimp/my/rom/ToolsRescue;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/ToolsRescue;->access$0(Lcom/androguide/pimp/my/rom/ToolsRescue;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v4           #toast:Landroid/widget/Toast;
    .end local v5           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/ToolsRescue$2$1;->this$1:Lcom/androguide/pimp/my/rom/ToolsRescue$2;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsRescue$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/ToolsRescue$2;->access$0(Lcom/androguide/pimp/my/rom/ToolsRescue$2;)Lcom/androguide/pimp/my/rom/ToolsRescue;

    move-result-object v6

    #getter for: Lcom/androguide/pimp/my/rom/ToolsRescue;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/ToolsRescue;->access$0(Lcom/androguide/pimp/my/rom/ToolsRescue;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .restart local v1       #context:Landroid/content/Context;
    const-string v5, "Busybox not found ! Please install it !"

    .restart local v5       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .restart local v2       #duration:I
    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .restart local v4       #toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 498
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/ToolsRescue$2$1;->this$1:Lcom/androguide/pimp/my/rom/ToolsRescue$2;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsRescue$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/ToolsRescue$2;->access$0(Lcom/androguide/pimp/my/rom/ToolsRescue$2;)Lcom/androguide/pimp/my/rom/ToolsRescue;

    move-result-object v6

    #getter for: Lcom/androguide/pimp/my/rom/ToolsRescue;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/ToolsRescue;->access$0(Lcom/androguide/pimp/my/rom/ToolsRescue;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0
.end method
