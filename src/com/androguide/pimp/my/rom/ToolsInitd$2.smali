.class Lcom/androguide/pimp/my/rom/ToolsInitd$2;
.super Ljava/lang/Object;
.source "ToolsInitd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsInitd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsInitd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 362
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 365
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 368
    iget-object v10, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v10}, Lcom/androguide/pimp/my/rom/ToolsInitd;->access$0(Lcom/androguide/pimp/my/rom/ToolsInitd;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 369
    .local v0, context:Landroid/content/Context;
    const-string v8, "SUCCESS ! You have init.d support !"

    .line 370
    .local v8, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 371
    .local v2, duration:I
    invoke-static {v0, v8, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 374
    .local v6, success:Landroid/widget/Toast;
    const-string v9, "You currently don\'t have init.d support... Did you try the Activate button ?"

    .line 375
    .local v9, txte:Ljava/lang/CharSequence;
    const/4 v1, 0x1

    .line 376
    .local v1, dura:I
    invoke-static {v0, v9, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 380
    .local v3, fail:Landroid/widget/Toast;
    new-instance v4, Ljava/io/File;

    const-string v10, "/system/etc/init.d"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v4, fileTest:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v10, "/system/etc/install-recovery.sh"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v5, fileTest2:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 385
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 419
    .end local v1           #dura:I
    .end local v3           #fail:Landroid/widget/Toast;
    .end local v4           #fileTest:Ljava/io/File;
    .end local v5           #fileTest2:Ljava/io/File;
    .end local v6           #success:Landroid/widget/Toast;
    .end local v9           #txte:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 389
    .restart local v1       #dura:I
    .restart local v3       #fail:Landroid/widget/Toast;
    .restart local v4       #fileTest:Ljava/io/File;
    .restart local v5       #fileTest2:Ljava/io/File;
    .restart local v6       #success:Landroid/widget/Toast;
    .restart local v9       #txte:Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 396
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #dura:I
    .end local v2           #duration:I
    .end local v3           #fail:Landroid/widget/Toast;
    .end local v4           #fileTest:Ljava/io/File;
    .end local v5           #fileTest2:Ljava/io/File;
    .end local v6           #success:Landroid/widget/Toast;
    .end local v8           #txt:Ljava/lang/CharSequence;
    .end local v9           #txte:Ljava/lang/CharSequence;
    :cond_1
    iget-object v10, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v10}, Lcom/androguide/pimp/my/rom/ToolsInitd;->access$0(Lcom/androguide/pimp/my/rom/ToolsInitd;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 397
    .restart local v0       #context:Landroid/content/Context;
    const-string v8, "Do you have root permissions ?"

    .line 398
    .restart local v8       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 399
    .restart local v2       #duration:I
    invoke-static {v0, v8, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 400
    .local v7, toast:Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 401
    iget-object v10, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v10}, Lcom/androguide/pimp/my/rom/ToolsInitd;->access$0(Lcom/androguide/pimp/my/rom/ToolsInitd;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .line 408
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v7           #toast:Landroid/widget/Toast;
    .end local v8           #txt:Ljava/lang/CharSequence;
    :cond_2
    iget-object v10, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v10}, Lcom/androguide/pimp/my/rom/ToolsInitd;->access$0(Lcom/androguide/pimp/my/rom/ToolsInitd;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 409
    .restart local v0       #context:Landroid/content/Context;
    const-string v8, "Busybox not found ! Please install it !"

    .line 410
    .restart local v8       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 411
    .restart local v2       #duration:I
    invoke-static {v0, v8, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 412
    .restart local v7       #toast:Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 414
    iget-object v10, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v10}, Lcom/androguide/pimp/my/rom/ToolsInitd;->access$0(Lcom/androguide/pimp/my/rom/ToolsInitd;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0
.end method
