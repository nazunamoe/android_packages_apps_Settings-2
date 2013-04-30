.class Lcom/androguide/pimp/my/rom/ToolsBootanim$5;
.super Ljava/lang/Object;
.source "ToolsBootanim.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsBootanim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsBootanim;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$5;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 357
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 360
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 364
    new-instance v4, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$5;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-direct {v4, v12}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 365
    .local v4, dialog:Landroid/app/Dialog;
    const v12, 0x7f030017

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->setContentView(I)V

    .line 366
    const-string v12, "Please Wait"

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 369
    const v12, 0x7f040033

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 370
    .local v9, text:Landroid/widget/TextView;
    const-string v12, "Downloading & Installing Dual Boot-Animation Feature..."

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    const v12, 0x7f040034

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    .line 374
    .local v7, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 376
    new-instance v8, Ljava/util/Timer;

    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    .line 377
    .local v8, t:Ljava/util/Timer;
    new-instance v12, Lcom/androguide/pimp/my/rom/ToolsBootanim$5$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v4, v8}, Lcom/androguide/pimp/my/rom/ToolsBootanim$5$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim$5;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 382
    const-wide/16 v13, 0x1388

    .line 377
    invoke-virtual {v8, v12, v13, v14}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 388
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 389
    .local v1, SDC:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 392
    new-instance v2, Lcom/stericson/RootTools/CommandCapture;

    const/4 v12, 0x0

    const/4 v13, 0x7

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 393
    const-string v15, "busybox mount -o rw,remount /system"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 394
    const-string v15, "busybox mkdir /system/media/bootanimations"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 395
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "busybox mkdir "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/PimpMyRom"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 396
    const-string v15, "cd /system/etc/init.d"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    .line 397
    const-string v15, "wget http://androguide.fr/pmr/bootanim/04dual_bootanim"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    .line 398
    const-string v15, "chmod 755 04dual_bootanim"

    aput-object v15, v13, v14

    const/4 v14, 0x6

    .line 399
    const-string v15, "busybox mount -o ro,remount /system"

    .line 392
    aput-object v15, v13, v14

    invoke-direct {v2, v12, v13}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 404
    .local v2, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v12, 0x1

    :try_start_0
    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v12

    invoke-virtual {v12}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 444
    .end local v1           #SDC:Ljava/io/File;
    .end local v2           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v4           #dialog:Landroid/app/Dialog;
    .end local v7           #spin:Landroid/widget/ProgressBar;
    .end local v8           #t:Ljava/util/Timer;
    .end local v9           #text:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 405
    .restart local v1       #SDC:Ljava/io/File;
    .restart local v2       #command:Lcom/stericson/RootTools/CommandCapture;
    .restart local v4       #dialog:Landroid/app/Dialog;
    .restart local v7       #spin:Landroid/widget/ProgressBar;
    .restart local v8       #t:Ljava/util/Timer;
    .restart local v9       #text:Landroid/widget/TextView;
    :catch_0
    move-exception v6

    .line 407
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 408
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v6

    .line 410
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 411
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 413
    .local v6, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v6}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 420
    .end local v1           #SDC:Ljava/io/File;
    .end local v2           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v4           #dialog:Landroid/app/Dialog;
    .end local v6           #e:Ljava/util/concurrent/TimeoutException;
    .end local v7           #spin:Landroid/widget/ProgressBar;
    .end local v8           #t:Ljava/util/Timer;
    .end local v9           #text:Landroid/widget/TextView;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$5;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 421
    .local v3, context:Landroid/content/Context;
    const-string v11, "Do you have root permissions ?"

    .line 422
    .local v11, txt:Ljava/lang/CharSequence;
    const/4 v5, 0x1

    .line 423
    .local v5, duration:I
    invoke-static {v3, v11, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 424
    .local v10, toast:Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 425
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$5;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .line 432
    .end local v3           #context:Landroid/content/Context;
    .end local v5           #duration:I
    .end local v10           #toast:Landroid/widget/Toast;
    .end local v11           #txt:Ljava/lang/CharSequence;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$5;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 433
    .restart local v3       #context:Landroid/content/Context;
    const-string v11, "Busybox not found ! Please install it !"

    .line 434
    .restart local v11       #txt:Ljava/lang/CharSequence;
    const/4 v5, 0x1

    .line 435
    .restart local v5       #duration:I
    invoke-static {v3, v11, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 436
    .restart local v10       #toast:Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 438
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$5;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0
.end method
