.class Lcom/androguide/pimp/my/rom/ToolsLockApps$4;
.super Ljava/lang/Object;
.source "ToolsLockApps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsLockApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 398
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 401
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 404
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    .line 405
    const-string v11, "busybox mount -o rw,remount /system"

    aput-object v11, v10, v13

    .line 406
    const-string v11, "sed -i \'/in memory at boot-time/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v11, v10, v12

    const/4 v11, 0x2

    .line 407
    const-string v12, "sed -i \'/-17/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 408
    const-string v12, "busybox mount -o ro,remount /system"

    .line 404
    aput-object v12, v10, v11

    invoke-direct {v0, v13, v10}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 413
    .local v0, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v10, 0x1

    :try_start_0
    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v10

    invoke-virtual {v10}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 452
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    new-instance v2, Landroid/app/Dialog;

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    iget-object v10, v10, Lcom/androguide/pimp/my/rom/ToolsLockApps;->context:Landroid/content/Context;

    invoke-direct {v2, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 453
    .local v2, dialog:Landroid/app/Dialog;
    const v10, 0x7f030017

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setContentView(I)V

    .line 454
    const-string v10, "Please Wait..."

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 457
    const v10, 0x7f040033

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 458
    .local v7, text:Landroid/widget/TextView;
    const-string v10, "Resetting all locked apps..."

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    const v10, 0x7f040034

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 462
    .local v5, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 464
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 465
    .local v6, t:Ljava/util/Timer;
    new-instance v10, Lcom/androguide/pimp/my/rom/ToolsLockApps$4$1;

    invoke-direct {v10, p0, v2, v6}, Lcom/androguide/pimp/my/rom/ToolsLockApps$4$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsLockApps$4;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 470
    const-wide/16 v11, 0x7d0

    .line 465
    invoke-virtual {v6, v10, v11, v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 472
    return-void

    .line 414
    .end local v2           #dialog:Landroid/app/Dialog;
    .end local v5           #spin:Landroid/widget/ProgressBar;
    .end local v6           #t:Ljava/util/Timer;
    .end local v7           #text:Landroid/widget/TextView;
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v4

    .line 416
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 417
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v4

    .line 419
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 420
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 422
    .local v4, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 429
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v4           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    iget-object v10, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    invoke-virtual {v10}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 430
    .local v1, context:Landroid/content/Context;
    const-string v9, "Do you have root permissions ?"

    .line 431
    .local v9, txt:Ljava/lang/CharSequence;
    const/4 v3, 0x1

    .line 432
    .local v3, duration:I
    invoke-static {v1, v9, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 433
    .local v8, toast:Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 434
    iget-object v10, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .line 441
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #duration:I
    .end local v8           #toast:Landroid/widget/Toast;
    .end local v9           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v10, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    invoke-virtual {v10}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 442
    .restart local v1       #context:Landroid/content/Context;
    const-string v9, "Busybox not found ! Please install it !"

    .line 443
    .restart local v9       #txt:Ljava/lang/CharSequence;
    const/4 v3, 0x1

    .line 444
    .restart local v3       #duration:I
    invoke-static {v1, v9, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 445
    .restart local v8       #toast:Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 447
    iget-object v10, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0
.end method
